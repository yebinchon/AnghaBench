; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_enable_bearer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_enable_bearer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bearer = type { i32, i64, i64, i64, i64, %struct.TYPE_2__, i32, i32, i32, %struct.media* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.media = type { i64, i32 (%struct.TYPE_2__*)*, i32, i64 }
%struct.bearer_name = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@tipc_mode = common dso_local global i64 0, align 8
@TIPC_NET_MODE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"Bearer <%s> rejected, not supported in standalone mode\0A\00", align 1
@ENOPROTOOPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Bearer <%s> rejected, illegal name\0A\00", align 1
@tipc_own_addr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Bearer <%s> rejected, illegal broadcast scope\0A\00", align 1
@TIPC_MIN_LINK_PRI = common dso_local global i64 0, align 8
@TIPC_MAX_LINK_PRI = common dso_local global i64 0, align 8
@TIPC_MEDIA_LINK_PRI = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"Bearer <%s> rejected, illegal priority\0A\00", align 1
@tipc_net_lock = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Bearer <%s> rejected, media <%s> not registered\0A\00", align 1
@MAX_BEARERS = common dso_local global i64 0, align 8
@tipc_bearers = common dso_local global %struct.bearer* null, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"Bearer <%s> rejected, already enabled\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Bearer <%s> rejected, duplicate priority\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Bearer <%s> priority adjustment required %u->%u\0A\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Bearer <%s> rejected, bearer limit reached (%u)\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Bearer <%s> rejected, enable failure (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"Enabled bearer <%s>, discovery domain %s, priority %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_enable_bearer(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bearer*, align 8
  %9 = alloca %struct.media*, align 8
  %10 = alloca %struct.bearer_name, align 4
  %11 = alloca [16 x i8], align 16
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %15, align 4
  %18 = load i64, i64* @tipc_mode, align 8
  %19 = load i64, i64* @TIPC_NET_MODE, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i32, i32* @ENOPROTOOPT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %227

26:                                               ; preds = %3
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @bearer_name_validate(i8* %27, %struct.bearer_name* %10)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %227

35:                                               ; preds = %26
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @tipc_addr_domain_valid(i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = load i32, i32* @tipc_own_addr, align 4
  %42 = call i32 @in_scope(i64 %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39, %35
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %227

49:                                               ; preds = %39
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @TIPC_MIN_LINK_PRI, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* @TIPC_MAX_LINK_PRI, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53, %49
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @TIPC_MEDIA_LINK_PRI, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %227

66:                                               ; preds = %57, %53
  %67 = call i32 @write_lock_bh(i32* @tipc_net_lock)
  %68 = getelementptr inbounds %struct.bearer_name, %struct.bearer_name* %10, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.media* @media_find(i32 %69)
  store %struct.media* %70, %struct.media** %9, align 8
  %71 = load %struct.media*, %struct.media** %9, align 8
  %72 = icmp ne %struct.media* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %66
  %74 = load i8*, i8** %5, align 8
  %75 = getelementptr inbounds %struct.bearer_name, %struct.bearer_name* %10, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i8* %74, i32 %76)
  br label %224

78:                                               ; preds = %66
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* @TIPC_MEDIA_LINK_PRI, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load %struct.media*, %struct.media** %9, align 8
  %84 = getelementptr inbounds %struct.media, %struct.media* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %135, %86
  %88 = load i64, i64* @MAX_BEARERS, align 8
  store i64 %88, i64* %12, align 8
  store i64 1, i64* %13, align 8
  %89 = load i64, i64* @MAX_BEARERS, align 8
  store i64 %89, i64* %14, align 8
  br label %90

90:                                               ; preds = %141, %101, %87
  %91 = load i64, i64* %14, align 8
  %92 = add i64 %91, -1
  store i64 %92, i64* %14, align 8
  %93 = icmp ne i64 %91, 0
  br i1 %93, label %94, label %142

94:                                               ; preds = %90
  %95 = load %struct.bearer*, %struct.bearer** @tipc_bearers, align 8
  %96 = load i64, i64* %14, align 8
  %97 = getelementptr inbounds %struct.bearer, %struct.bearer* %95, i64 %96
  %98 = getelementptr inbounds %struct.bearer, %struct.bearer* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %94
  %102 = load i64, i64* %14, align 8
  store i64 %102, i64* %12, align 8
  br label %90

103:                                              ; preds = %94
  %104 = load i8*, i8** %5, align 8
  %105 = load %struct.bearer*, %struct.bearer** @tipc_bearers, align 8
  %106 = load i64, i64* %14, align 8
  %107 = getelementptr inbounds %struct.bearer, %struct.bearer* %105, i64 %106
  %108 = getelementptr inbounds %struct.bearer, %struct.bearer* %107, i32 0, i32 5
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @strcmp(i8* %104, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %103
  %114 = load i8*, i8** %5, align 8
  %115 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i8* %114)
  br label %224

116:                                              ; preds = %103
  %117 = load %struct.bearer*, %struct.bearer** @tipc_bearers, align 8
  %118 = load i64, i64* %14, align 8
  %119 = getelementptr inbounds %struct.bearer, %struct.bearer* %117, i64 %118
  %120 = getelementptr inbounds %struct.bearer, %struct.bearer* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %116
  %125 = load i64, i64* %13, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %13, align 8
  %127 = icmp ugt i64 %126, 2
  br i1 %127, label %128, label %141

128:                                              ; preds = %124
  %129 = load i64, i64* %7, align 8
  %130 = add i64 %129, -1
  store i64 %130, i64* %7, align 8
  %131 = icmp eq i64 %129, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i8*, i8** %5, align 8
  %134 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i8* %133)
  br label %224

135:                                              ; preds = %128
  %136 = load i8*, i8** %5, align 8
  %137 = load i64, i64* %7, align 8
  %138 = add i64 %137, 1
  %139 = load i64, i64* %7, align 8
  %140 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i8* %136, i64 %138, i64 %139)
  br label %87

141:                                              ; preds = %124, %116
  br label %90

142:                                              ; preds = %90
  %143 = load i64, i64* %12, align 8
  %144 = load i64, i64* @MAX_BEARERS, align 8
  %145 = icmp uge i64 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i8*, i8** %5, align 8
  %148 = load i64, i64* @MAX_BEARERS, align 8
  %149 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i8* %147, i64 %148)
  br label %224

150:                                              ; preds = %142
  %151 = load %struct.bearer*, %struct.bearer** @tipc_bearers, align 8
  %152 = load i64, i64* %12, align 8
  %153 = getelementptr inbounds %struct.bearer, %struct.bearer* %151, i64 %152
  store %struct.bearer* %153, %struct.bearer** %8, align 8
  %154 = load %struct.bearer*, %struct.bearer** %8, align 8
  %155 = call i32 @memset(%struct.bearer* %154, i32 0, i32 72)
  %156 = load %struct.bearer*, %struct.bearer** %8, align 8
  %157 = getelementptr inbounds %struct.bearer, %struct.bearer* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i8*, i8** %5, align 8
  %161 = call i32 @strcpy(i32 %159, i8* %160)
  %162 = load %struct.media*, %struct.media** %9, align 8
  %163 = getelementptr inbounds %struct.media, %struct.media* %162, i32 0, i32 1
  %164 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %163, align 8
  %165 = load %struct.bearer*, %struct.bearer** %8, align 8
  %166 = getelementptr inbounds %struct.bearer, %struct.bearer* %165, i32 0, i32 5
  %167 = call i32 %164(%struct.TYPE_2__* %166)
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %150
  %171 = load i8*, i8** %5, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sub nsw i32 0, %172
  %174 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i8* %171, i32 %173)
  br label %224

175:                                              ; preds = %150
  %176 = load i64, i64* %12, align 8
  %177 = load %struct.bearer*, %struct.bearer** %8, align 8
  %178 = getelementptr inbounds %struct.bearer, %struct.bearer* %177, i32 0, i32 2
  store i64 %176, i64* %178, align 8
  %179 = load %struct.media*, %struct.media** %9, align 8
  %180 = load %struct.bearer*, %struct.bearer** %8, align 8
  %181 = getelementptr inbounds %struct.bearer, %struct.bearer* %180, i32 0, i32 9
  store %struct.media* %179, %struct.media** %181, align 8
  %182 = load i64, i64* %12, align 8
  %183 = add i64 %182, 65
  %184 = load %struct.bearer*, %struct.bearer** %8, align 8
  %185 = getelementptr inbounds %struct.bearer, %struct.bearer* %184, i32 0, i32 3
  store i64 %183, i64* %185, align 8
  %186 = load %struct.bearer*, %struct.bearer** %8, align 8
  %187 = getelementptr inbounds %struct.bearer, %struct.bearer* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load i64, i64* %6, align 8
  %189 = load %struct.bearer*, %struct.bearer** %8, align 8
  %190 = getelementptr inbounds %struct.bearer, %struct.bearer* %189, i32 0, i32 4
  store i64 %188, i64* %190, align 8
  %191 = load i64, i64* %7, align 8
  %192 = load %struct.bearer*, %struct.bearer** %8, align 8
  %193 = getelementptr inbounds %struct.bearer, %struct.bearer* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  %194 = load %struct.bearer*, %struct.bearer** %8, align 8
  %195 = getelementptr inbounds %struct.bearer, %struct.bearer* %194, i32 0, i32 8
  %196 = call i32 @INIT_LIST_HEAD(i32* %195)
  %197 = load %struct.bearer*, %struct.bearer** %8, align 8
  %198 = getelementptr inbounds %struct.bearer, %struct.bearer* %197, i32 0, i32 7
  %199 = call i32 @INIT_LIST_HEAD(i32* %198)
  %200 = load %struct.media*, %struct.media** %9, align 8
  %201 = getelementptr inbounds %struct.media, %struct.media* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %175
  %205 = load %struct.bearer*, %struct.bearer** %8, align 8
  %206 = load %struct.media*, %struct.media** %9, align 8
  %207 = getelementptr inbounds %struct.media, %struct.media* %206, i32 0, i32 2
  %208 = load i64, i64* %6, align 8
  %209 = call i32 @tipc_disc_init_link_req(%struct.bearer* %205, i32* %207, i64 %208, i32 2)
  %210 = load %struct.bearer*, %struct.bearer** %8, align 8
  %211 = getelementptr inbounds %struct.bearer, %struct.bearer* %210, i32 0, i32 6
  store i32 %209, i32* %211, align 8
  br label %212

212:                                              ; preds = %204, %175
  %213 = load %struct.bearer*, %struct.bearer** %8, align 8
  %214 = getelementptr inbounds %struct.bearer, %struct.bearer* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = call i32 @spin_lock_init(i32* %215)
  %217 = call i32 @write_unlock_bh(i32* @tipc_net_lock)
  %218 = load i8*, i8** %5, align 8
  %219 = getelementptr inbounds [16 x i8], [16 x i8]* %11, i64 0, i64 0
  %220 = load i64, i64* %6, align 8
  %221 = call i32 @addr_string_fill(i8* %219, i64 %220)
  %222 = load i64, i64* %7, align 8
  %223 = call i32 @info(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i8* %218, i32 %221, i64 %222)
  store i32 0, i32* %4, align 4
  br label %227

224:                                              ; preds = %170, %146, %132, %113, %73
  %225 = call i32 @write_unlock_bh(i32* @tipc_net_lock)
  %226 = load i32, i32* %15, align 4
  store i32 %226, i32* %4, align 4
  br label %227

227:                                              ; preds = %224, %212, %61, %44, %30, %21
  %228 = load i32, i32* %4, align 4
  ret i32 %228
}

declare dso_local i32 @warn(i8*, i8*, ...) #1

declare dso_local i32 @bearer_name_validate(i8*, %struct.bearer_name*) #1

declare dso_local i32 @tipc_addr_domain_valid(i64) #1

declare dso_local i32 @in_scope(i64, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.media* @media_find(i32) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @memset(%struct.bearer*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @tipc_disc_init_link_req(%struct.bearer*, i32*, i64, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @info(i8*, i8*, i32, i64) #1

declare dso_local i32 @addr_string_fill(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

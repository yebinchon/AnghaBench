; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_register_media.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_bearer.c_tipc_register_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.media = type { i64, i32 (%struct.sk_buff.2*, %struct.tipc_bearer.3*, %struct.tipc_media_addr*)*, i32 (%struct.tipc_bearer.4*)*, void (%struct.tipc_bearer.5*)*, i8* (%struct.tipc_media_addr*, i8*, i32)*, i32, i64, i64, i64, i32, i32 }
%struct.sk_buff.2 = type opaque
%struct.tipc_bearer.3 = type opaque
%struct.tipc_media_addr = type { i32 }
%struct.tipc_bearer.4 = type opaque
%struct.tipc_bearer.5 = type opaque
%struct.tipc_bearer = type opaque
%struct.tipc_bearer.0 = type opaque
%struct.sk_buff = type opaque
%struct.tipc_bearer.1 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@tipc_net_lock = common dso_local global i32 0, align 4
@media_list = common dso_local global %struct.media* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Media <%s> rejected, illegal name\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Media <%s> rejected, no broadcast address\0A\00", align 1
@TIPC_MIN_LINK_PRI = common dso_local global i64 0, align 8
@TIPC_MAX_LINK_PRI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Media <%s> rejected, illegal priority (%u)\0A\00", align 1
@TIPC_MIN_LINK_TOL = common dso_local global i64 0, align 8
@TIPC_MAX_LINK_TOL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"Media <%s> rejected, illegal tolerance (%u)\0A\00", align 1
@media_count = common dso_local global i32 0, align 4
@MAX_MEDIA = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"Media <%s> rejected, media limit reached (%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Media <%s> rejected, duplicate type (%u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Media <%s> rejected, duplicate name\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Media <%s> registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_register_media(i64 %0, i8* %1, i32 (%struct.tipc_bearer*)* %2, void (%struct.tipc_bearer.0*)* %3, i32 (%struct.sk_buff*, %struct.tipc_bearer.1*, %struct.tipc_media_addr*)* %4, i8* (%struct.tipc_media_addr*, i8*, i32)* %5, %struct.tipc_media_addr* %6, i64 %7, i64 %8, i64 %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (%struct.tipc_bearer*)*, align 8
  %14 = alloca void (%struct.tipc_bearer.0*)*, align 8
  %15 = alloca i32 (%struct.sk_buff*, %struct.tipc_bearer.1*, %struct.tipc_media_addr*)*, align 8
  %16 = alloca i8* (%struct.tipc_media_addr*, i8*, i32)*, align 8
  %17 = alloca %struct.tipc_media_addr*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.media*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store i64 %0, i64* %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 (%struct.tipc_bearer*)* %2, i32 (%struct.tipc_bearer*)** %13, align 8
  store void (%struct.tipc_bearer.0*)* %3, void (%struct.tipc_bearer.0*)** %14, align 8
  store i32 (%struct.sk_buff*, %struct.tipc_bearer.1*, %struct.tipc_media_addr*)* %4, i32 (%struct.sk_buff*, %struct.tipc_bearer.1*, %struct.tipc_media_addr*)** %15, align 8
  store i8* (%struct.tipc_media_addr*, i8*, i32)* %5, i8* (%struct.tipc_media_addr*, i8*, i32)** %16, align 8
  store %struct.tipc_media_addr* %6, %struct.tipc_media_addr** %17, align 8
  store i64 %7, i64* %18, align 8
  store i64 %8, i64* %19, align 8
  store i64 %9, i64* %20, align 8
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %24, align 4
  %27 = call i32 @write_lock_bh(i32* @tipc_net_lock)
  %28 = load %struct.media*, %struct.media** @media_list, align 8
  %29 = icmp ne %struct.media* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %10
  br label %162

31:                                               ; preds = %10
  %32 = load i8*, i8** %12, align 8
  %33 = call i32 @media_name_valid(i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %162

38:                                               ; preds = %31
  %39 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %17, align 8
  %40 = icmp ne %struct.tipc_media_addr* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %12, align 8
  %43 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  br label %162

44:                                               ; preds = %38
  %45 = load i64, i64* %18, align 8
  %46 = load i64, i64* @TIPC_MIN_LINK_PRI, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* %18, align 8
  %50 = load i64, i64* @TIPC_MAX_LINK_PRI, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48, %44
  %53 = load i8*, i8** %12, align 8
  %54 = load i64, i64* %18, align 8
  %55 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8* %53, i64 %54)
  br label %162

56:                                               ; preds = %48
  %57 = load i64, i64* %19, align 8
  %58 = load i64, i64* @TIPC_MIN_LINK_TOL, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %19, align 8
  %62 = load i64, i64* @TIPC_MAX_LINK_TOL, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %60, %56
  %65 = load i8*, i8** %12, align 8
  %66 = load i64, i64* %19, align 8
  %67 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %65, i64 %66)
  br label %162

68:                                               ; preds = %60
  %69 = load i32, i32* @media_count, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* @media_count, align 4
  %71 = sext i32 %69 to i64
  store i64 %71, i64* %22, align 8
  %72 = load i64, i64* %22, align 8
  %73 = load i64, i64* @MAX_MEDIA, align 8
  %74 = icmp sge i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %68
  %76 = load i8*, i8** %12, align 8
  %77 = load i64, i64* @MAX_MEDIA, align 8
  %78 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %76, i64 %77)
  %79 = load i32, i32* @media_count, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* @media_count, align 4
  br label %162

81:                                               ; preds = %68
  store i64 0, i64* %23, align 8
  br label %82

82:                                               ; preds = %115, %81
  %83 = load i64, i64* %23, align 8
  %84 = load i64, i64* %22, align 8
  %85 = icmp slt i64 %83, %84
  br i1 %85, label %86, label %118

86:                                               ; preds = %82
  %87 = load %struct.media*, %struct.media** @media_list, align 8
  %88 = load i64, i64* %23, align 8
  %89 = getelementptr inbounds %struct.media, %struct.media* %87, i64 %88
  %90 = getelementptr inbounds %struct.media, %struct.media* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load i8*, i8** %12, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i8* %95, i64 %96)
  %98 = load i32, i32* @media_count, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* @media_count, align 4
  br label %162

100:                                              ; preds = %86
  %101 = load i8*, i8** %12, align 8
  %102 = load %struct.media*, %struct.media** @media_list, align 8
  %103 = load i64, i64* %23, align 8
  %104 = getelementptr inbounds %struct.media, %struct.media* %102, i64 %103
  %105 = getelementptr inbounds %struct.media, %struct.media* %104, i32 0, i32 9
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @strcmp(i8* %101, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %100
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 (i8*, i8*, ...) @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i8* %110)
  %112 = load i32, i32* @media_count, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* @media_count, align 4
  br label %162

114:                                              ; preds = %100
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %23, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %23, align 8
  br label %82

118:                                              ; preds = %82
  %119 = load %struct.media*, %struct.media** @media_list, align 8
  %120 = load i64, i64* %22, align 8
  %121 = getelementptr inbounds %struct.media, %struct.media* %119, i64 %120
  store %struct.media* %121, %struct.media** %21, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load %struct.media*, %struct.media** %21, align 8
  %124 = getelementptr inbounds %struct.media, %struct.media* %123, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i32 (%struct.sk_buff*, %struct.tipc_bearer.1*, %struct.tipc_media_addr*)*, i32 (%struct.sk_buff*, %struct.tipc_bearer.1*, %struct.tipc_media_addr*)** %15, align 8
  %126 = bitcast i32 (%struct.sk_buff*, %struct.tipc_bearer.1*, %struct.tipc_media_addr*)* %125 to i32 (%struct.sk_buff.2*, %struct.tipc_bearer.3*, %struct.tipc_media_addr*)*
  %127 = load %struct.media*, %struct.media** %21, align 8
  %128 = getelementptr inbounds %struct.media, %struct.media* %127, i32 0, i32 1
  store i32 (%struct.sk_buff.2*, %struct.tipc_bearer.3*, %struct.tipc_media_addr*)* %126, i32 (%struct.sk_buff.2*, %struct.tipc_bearer.3*, %struct.tipc_media_addr*)** %128, align 8
  %129 = load i32 (%struct.tipc_bearer*)*, i32 (%struct.tipc_bearer*)** %13, align 8
  %130 = bitcast i32 (%struct.tipc_bearer*)* %129 to i32 (%struct.tipc_bearer.4*)*
  %131 = load %struct.media*, %struct.media** %21, align 8
  %132 = getelementptr inbounds %struct.media, %struct.media* %131, i32 0, i32 2
  store i32 (%struct.tipc_bearer.4*)* %130, i32 (%struct.tipc_bearer.4*)** %132, align 8
  %133 = load void (%struct.tipc_bearer.0*)*, void (%struct.tipc_bearer.0*)** %14, align 8
  %134 = bitcast void (%struct.tipc_bearer.0*)* %133 to void (%struct.tipc_bearer.5*)*
  %135 = load %struct.media*, %struct.media** %21, align 8
  %136 = getelementptr inbounds %struct.media, %struct.media* %135, i32 0, i32 3
  store void (%struct.tipc_bearer.5*)* %134, void (%struct.tipc_bearer.5*)** %136, align 8
  %137 = load i8* (%struct.tipc_media_addr*, i8*, i32)*, i8* (%struct.tipc_media_addr*, i8*, i32)** %16, align 8
  %138 = load %struct.media*, %struct.media** %21, align 8
  %139 = getelementptr inbounds %struct.media, %struct.media* %138, i32 0, i32 4
  store i8* (%struct.tipc_media_addr*, i8*, i32)* %137, i8* (%struct.tipc_media_addr*, i8*, i32)** %139, align 8
  %140 = load %struct.media*, %struct.media** %21, align 8
  %141 = getelementptr inbounds %struct.media, %struct.media* %140, i32 0, i32 10
  %142 = load %struct.tipc_media_addr*, %struct.tipc_media_addr** %17, align 8
  %143 = call i32 @memcpy(i32* %141, %struct.tipc_media_addr* %142, i32 4)
  %144 = load %struct.media*, %struct.media** %21, align 8
  %145 = getelementptr inbounds %struct.media, %struct.media* %144, i32 0, i32 5
  store i32 1, i32* %145, align 8
  %146 = load %struct.media*, %struct.media** %21, align 8
  %147 = getelementptr inbounds %struct.media, %struct.media* %146, i32 0, i32 9
  %148 = load i32, i32* %147, align 8
  %149 = load i8*, i8** %12, align 8
  %150 = call i32 @strcpy(i32 %148, i8* %149)
  %151 = load i64, i64* %18, align 8
  %152 = load %struct.media*, %struct.media** %21, align 8
  %153 = getelementptr inbounds %struct.media, %struct.media* %152, i32 0, i32 6
  store i64 %151, i64* %153, align 8
  %154 = load i64, i64* %19, align 8
  %155 = load %struct.media*, %struct.media** %21, align 8
  %156 = getelementptr inbounds %struct.media, %struct.media* %155, i32 0, i32 7
  store i64 %154, i64* %156, align 8
  %157 = load i64, i64* %20, align 8
  %158 = load %struct.media*, %struct.media** %21, align 8
  %159 = getelementptr inbounds %struct.media, %struct.media* %158, i32 0, i32 8
  store i64 %157, i64* %159, align 8
  %160 = load i8*, i8** %12, align 8
  %161 = call i32 @dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %160)
  store i32 0, i32* %24, align 4
  br label %162

162:                                              ; preds = %118, %109, %94, %75, %64, %52, %41, %35, %30
  %163 = call i32 @write_unlock_bh(i32* @tipc_net_lock)
  %164 = load i32, i32* %24, align 4
  ret i32 %164
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @media_name_valid(i8*) #1

declare dso_local i32 @warn(i8*, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.tipc_media_addr*, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @dbg(i8*, i8*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_map.c_timeout_mp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_map.c_timeout_mp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i64, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_11__ = type { i32 }

@NEVER = common dso_local global i64 0, align 8
@NumChildren = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Timing out automount points...\00", align 1
@last_used_map = common dso_local global i32 0, align 4
@exported_ap = common dso_local global %struct.TYPE_10__** null, align 8
@AMF_NOTIMEOUT = common dso_local global i32 0, align 4
@MFF_RSTKEEP = common dso_local global i32 0, align 4
@IGNORE_FLAGS = common dso_local global i32 0, align 4
@MFF_WANTTIMO = common dso_local global i32 0, align 4
@gopt = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@MFF_UNMOUNTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"No further timeouts\00", align 1
@ONE_HOUR = common dso_local global i64 0, align 8
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Got a zero interval in timeout_mp()!\00", align 1
@amd_state = common dso_local global i64 0, align 8
@Finishing = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Next mount timeout in %lds\00", align 1
@timeout_mp_id = common dso_local global i32 0, align 4
@MFF_IS_AUTOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timeout_mp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i64, i64* @NEVER, align 8
  store i64 %10, i64* %4, align 8
  %11 = call i64 @clocktime(i32* null)
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* @NumChildren, align 4
  %13 = sdiv i32 %12, 4
  store i32 %13, i32* %6, align 4
  %14 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @last_used_map, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %151, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %154

19:                                               ; preds = %16
  %20 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @exported_ap, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %20, i64 %22
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %7, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %151

28:                                               ; preds = %19
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 5
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %8, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %28
  br label %151

37:                                               ; preds = %28
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AMF_NOTIMEOUT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %151

45:                                               ; preds = %37
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @MFF_RSTKEEP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %151

58:                                               ; preds = %52, %45
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IGNORE_FLAGS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %136, label %65

65:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  %66 = load i32, i32* @MFF_WANTTIMO, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %72, %75
  br i1 %76, label %77, label %111

77:                                               ; preds = %65
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %102, label %80

80:                                               ; preds = %77
  store i32 1, i32* %9, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gopt, i32 0, i32 0), align 4
  %85 = mul nsw i32 4, %84
  %86 = icmp slt i32 %83, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @gopt, i32 0, i32 0), align 4
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %80
  %94 = load i64, i64* %5, align 8
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %94, %98
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  br label %110

102:                                              ; preds = %77
  %103 = load i64, i64* %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %103, %105
  %107 = add nsw i64 %106, 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 2
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %102, %93
  br label %111

111:                                              ; preds = %110, %65
  %112 = load i64, i64* %4, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @smallest_t(i64 %112, i64 %115)
  store i64 %116, i64* %4, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %135, label %121

121:                                              ; preds = %111
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp sge i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i32, i32* %9, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = call i64 @unmount_mp(%struct.TYPE_10__* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 2, i32* %6, align 4
  br label %134

134:                                              ; preds = %133, %129
  br label %135

135:                                              ; preds = %134, %126, %121, %111
  br label %150

136:                                              ; preds = %58
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @MFF_UNMOUNTING, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %136
  %144 = load i32, i32* @MFF_WANTTIMO, align 4
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %136
  br label %150

150:                                              ; preds = %149, %135
  br label %151

151:                                              ; preds = %150, %57, %44, %36, %27
  %152 = load i32, i32* %3, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %3, align 4
  br label %16

154:                                              ; preds = %16
  %155 = load i64, i64* %4, align 8
  %156 = load i64, i64* @NEVER, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %160 = load i64, i64* %5, align 8
  %161 = load i64, i64* @ONE_HOUR, align 8
  %162 = add nsw i64 %160, %161
  store i64 %162, i64* %4, align 8
  br label %163

163:                                              ; preds = %158, %154
  %164 = load i64, i64* %4, align 8
  %165 = load i64, i64* %5, align 8
  %166 = icmp sle i64 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i64, i64* %5, align 8
  %169 = add nsw i64 %168, 6
  store i64 %169, i64* %4, align 8
  %170 = load i32, i32* @XLOG_ERROR, align 4
  %171 = call i32 @plog(i32 %170, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %172

172:                                              ; preds = %167, %163
  %173 = load i64, i64* @amd_state, align 8
  %174 = trunc i64 %173 to i32
  %175 = load i64, i64* @Finishing, align 8
  %176 = trunc i64 %175 to i32
  %177 = icmp sge i32 %174, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = load i64, i64* %5, align 8
  %180 = add nsw i64 %179, 1
  store i64 %180, i64* %4, align 8
  br label %181

181:                                              ; preds = %178, %172
  %182 = load i64, i64* %4, align 8
  %183 = load i64, i64* %5, align 8
  %184 = sub nsw i64 %182, %183
  %185 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %184)
  %186 = load i64, i64* %4, align 8
  %187 = load i64, i64* %5, align 8
  %188 = sub nsw i64 %186, %187
  %189 = call i32 @timeout(i64 %188, void (i32)* @timeout_mp, i32* null)
  store i32 %189, i32* @timeout_mp_id, align 4
  ret void
}

declare dso_local i64 @clocktime(i32*) #1

declare dso_local i32 @dlog(i8*, ...) #1

declare dso_local i64 @smallest_t(i64, i64) #1

declare dso_local i64 @unmount_mp(%struct.TYPE_10__*) #1

declare dso_local i32 @plog(i32, i8*) #1

declare dso_local i32 @timeout(i64, void (i32)*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

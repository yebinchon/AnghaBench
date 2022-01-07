; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_work.c_dtrace_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_work.c_dtrace_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_10__ = type { i64*, i32, i32 (i32, i8*, i32)*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.timespec = type { i64, i64 }

@DTRACEOPT_BUFPOLICY = common dso_local global i64 0, align 8
@INT64_MAX = common dso_local global i64 0, align 8
@_dtrace_sleeptab = common dso_local global %struct.TYPE_13__* null, align 8
@DTRACEOPT_MAX = common dso_local global i32 0, align 4
@DTRACEOPT_BUFPOLICY_SWITCH = common dso_local global i64 0, align 8
@DTRACEOPT_STATUSRATE = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@NANOSEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_sleep(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %3, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @DTRACEOPT_BUFPOLICY, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* @INT64_MAX, align 8
  store i64 %23, i64* %6, align 8
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %84, %1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** @_dtrace_sleeptab, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DTRACEOPT_MAX, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %87

33:                                               ; preds = %24
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = ptrtoint %struct.TYPE_10__* %34 to i64
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** @_dtrace_sleeptab, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %35, %41
  store i64 %42, i64* %10, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** @_dtrace_sleeptab, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %11, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* @DTRACEOPT_BUFPOLICY_SWITCH, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %33
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** @_dtrace_sleeptab, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @DTRACEOPT_STATUSRATE, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %84

69:                                               ; preds = %59, %33
  %70 = load i64, i64* %10, align 8
  %71 = inttoptr i64 %70 to i64*
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %12, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i64, i64* %6, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %69
  %78 = load i64, i64* %10, align 8
  %79 = inttoptr i64 %78 to i64*
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %12, align 8
  %82 = add nsw i64 %80, %81
  store i64 %82, i64* %6, align 8
  br label %83

83:                                               ; preds = %77, %69
  br label %84

84:                                               ; preds = %83, %68
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %24

87:                                               ; preds = %24
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = call i32 @pthread_mutex_lock(i32* %89)
  %91 = call i64 (...) @gethrtime()
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %8, align 8
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = call i32 @pthread_mutex_unlock(i32* %97)
  br label %182

99:                                               ; preds = %87
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %6, align 8
  %102 = sub nsw i64 %101, %100
  store i64 %102, i64* %6, align 8
  %103 = load i32, i32* @CLOCK_REALTIME, align 4
  %104 = call i32 @clock_gettime(i32 %103, %struct.timespec* %7)
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* @NANOSEC, align 8
  %107 = sdiv i64 %105, %106
  %108 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, %107
  store i64 %110, i64* %108, align 8
  %111 = load i64, i64* %6, align 8
  %112 = load i64, i64* @NANOSEC, align 8
  %113 = srem i64 %111, %112
  %114 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, %113
  store i64 %116, i64* %114, align 8
  br label %117

117:                                              ; preds = %122, %99
  %118 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @NANOSEC, align 8
  %121 = icmp sgt i64 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load i64, i64* @NANOSEC, align 8
  %127 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %128, %126
  store i64 %129, i64* %127, align 8
  br label %117

130:                                              ; preds = %117
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  %135 = call i32 @pthread_cond_timedwait(i32* %132, i32* %134, %struct.timespec* %7)
  br label %136

136:                                              ; preds = %169, %130
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  store %struct.TYPE_11__* %139, %struct.TYPE_11__** %5, align 8
  %140 = icmp ne %struct.TYPE_11__* %139, null
  br i1 %140, label %141, label %178

141:                                              ; preds = %136
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 2
  %144 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %143, align 8
  %145 = icmp ne i32 (i32, i8*, i32)* %144, null
  br i1 %145, label %146, label %169

146:                                              ; preds = %141
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  store i8* %149, i8** %13, align 8
  %150 = load i8*, i8** %13, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %146
  store i8* null, i8** %13, align 8
  br label %155

155:                                              ; preds = %154, %146
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  %158 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %157, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i8*, i8** %13, align 8
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 %158(i32 %163, i8* %164, i32 %167)
  br label %169

169:                                              ; preds = %155, %141
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %171, align 8
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  store %struct.TYPE_11__* %172, %struct.TYPE_11__** %174, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %177 = call i32 @dt_free(%struct.TYPE_10__* %175, %struct.TYPE_11__* %176)
  br label %136

178:                                              ; preds = %136
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = call i32 @pthread_mutex_unlock(i32* %180)
  br label %182

182:                                              ; preds = %178, %95
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @pthread_cond_timedwait(i32*, i32*, %struct.timespec*) #1

declare dso_local i32 @dt_free(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

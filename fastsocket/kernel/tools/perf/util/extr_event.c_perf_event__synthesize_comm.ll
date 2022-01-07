; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_perf_event__synthesize_comm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_event.c_perf_event__synthesize_comm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_tool = type { i32 }
%union.perf_event = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.machine = type { i32 }
%struct.dirent = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@PERF_RECORD_COMM = common dso_local global i32 0, align 4
@synth_sample = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"/proc/%d/task\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"couldn't open %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_tool*, %union.perf_event*, i32, i32, i64 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)*, %struct.machine*)* @perf_event__synthesize_comm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_event__synthesize_comm(%struct.perf_tool* %0, %union.perf_event* %1, i32 %2, i32 %3, i64 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)* %4, %struct.machine* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.perf_tool*, align 8
  %9 = alloca %union.perf_event*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)*, align 8
  %13 = alloca %struct.machine*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.dirent, align 4
  %19 = alloca %struct.dirent*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store %struct.perf_tool* %0, %struct.perf_tool** %8, align 8
  store %union.perf_event* %1, %union.perf_event** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)* %4, i64 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)** %12, align 8
  store %struct.machine* %5, %struct.machine** %13, align 8
  %23 = load i32, i32* @PATH_MAX, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  %27 = load %union.perf_event*, %union.perf_event** %9, align 8
  %28 = bitcast %union.perf_event* %27 to %struct.TYPE_6__*
  %29 = call i32 @memset(%struct.TYPE_6__* %28, i32 0, i32 24)
  %30 = load i32, i32* %10, align 4
  %31 = load %union.perf_event*, %union.perf_event** %9, align 8
  %32 = bitcast %union.perf_event* %31 to %struct.TYPE_6__*
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i32 @perf_event__get_comm_tgid(i32 %30, %struct.TYPE_6__* %34, i32 8)
  store i32 %35, i32* %20, align 4
  %36 = load i32, i32* %20, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %6
  br label %177

39:                                               ; preds = %6
  %40 = load i32, i32* %20, align 4
  %41 = load %union.perf_event*, %union.perf_event** %9, align 8
  %42 = bitcast %union.perf_event* %41 to %struct.TYPE_6__*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @PERF_RECORD_COMM, align 4
  %45 = load %union.perf_event*, %union.perf_event** %9, align 8
  %46 = bitcast %union.perf_event* %45 to %struct.TYPE_6__*
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = load %union.perf_event*, %union.perf_event** %9, align 8
  %50 = bitcast %union.perf_event* %49 to %struct.TYPE_6__*
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @strlen(%struct.TYPE_6__* %52)
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %16, align 8
  %56 = load i64, i64* %16, align 8
  %57 = call i64 @PERF_ALIGN(i64 %56, i32 4)
  store i64 %57, i64* %16, align 8
  %58 = load %union.perf_event*, %union.perf_event** %9, align 8
  %59 = bitcast %union.perf_event* %58 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i64, i64* %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %62
  %64 = load %struct.machine*, %struct.machine** %13, align 8
  %65 = getelementptr inbounds %struct.machine, %struct.machine* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memset(%struct.TYPE_6__* %63, i32 0, i32 %66)
  %68 = load i64, i64* %16, align 8
  %69 = sub i64 8, %68
  %70 = sub i64 24, %69
  %71 = load %struct.machine*, %struct.machine** %13, align 8
  %72 = getelementptr inbounds %struct.machine, %struct.machine* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %70, %74
  %76 = trunc i64 %75 to i32
  %77 = load %union.perf_event*, %union.perf_event** %9, align 8
  %78 = bitcast %union.perf_event* %77 to %struct.TYPE_6__*
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %96, label %83

83:                                               ; preds = %39
  %84 = load i32, i32* %10, align 4
  %85 = load %union.perf_event*, %union.perf_event** %9, align 8
  %86 = bitcast %union.perf_event* %85 to %struct.TYPE_6__*
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load i64 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)*, i64 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)** %12, align 8
  %89 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %90 = load %union.perf_event*, %union.perf_event** %9, align 8
  %91 = load %struct.machine*, %struct.machine** %13, align 8
  %92 = call i64 %88(%struct.perf_tool* %89, %union.perf_event* %90, i32* @synth_sample, %struct.machine* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %179

95:                                               ; preds = %83
  br label %177

96:                                               ; preds = %39
  %97 = trunc i64 %24 to i32
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @snprintf(i8* %26, i32 %97, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = call i32* @opendir(i8* %26)
  store i32* %100, i32** %17, align 8
  %101 = load i32*, i32** %17, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  store i32 0, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %179

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %173, %122, %105
  %107 = load i32*, i32** %17, align 8
  %108 = call i32 @readdir_r(i32* %107, %struct.dirent* %18, %struct.dirent** %19)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load %struct.dirent*, %struct.dirent** %19, align 8
  %112 = icmp ne %struct.dirent* %111, null
  br label %113

113:                                              ; preds = %110, %106
  %114 = phi i1 [ false, %106 ], [ %112, %110 ]
  br i1 %114, label %115, label %174

115:                                              ; preds = %113
  %116 = getelementptr inbounds %struct.dirent, %struct.dirent* %18, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @strtol(i32 %117, i8** %22, i32 10)
  store i32 %118, i32* %10, align 4
  %119 = load i8*, i8** %22, align 8
  %120 = load i8, i8* %119, align 1
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  br label %106

123:                                              ; preds = %115
  %124 = load i32, i32* %10, align 4
  %125 = load %union.perf_event*, %union.perf_event** %9, align 8
  %126 = bitcast %union.perf_event* %125 to %struct.TYPE_6__*
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = call i32 @perf_event__get_comm_tgid(i32 %124, %struct.TYPE_6__* %128, i32 8)
  %130 = load %union.perf_event*, %union.perf_event** %9, align 8
  %131 = bitcast %union.perf_event* %130 to %struct.TYPE_6__*
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = call i32 @strlen(%struct.TYPE_6__* %133)
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %16, align 8
  %137 = load i64, i64* %16, align 8
  %138 = call i64 @PERF_ALIGN(i64 %137, i32 4)
  store i64 %138, i64* %16, align 8
  %139 = load %union.perf_event*, %union.perf_event** %9, align 8
  %140 = bitcast %union.perf_event* %139 to %struct.TYPE_6__*
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = load i64, i64* %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i64 %143
  %145 = load %struct.machine*, %struct.machine** %13, align 8
  %146 = getelementptr inbounds %struct.machine, %struct.machine* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @memset(%struct.TYPE_6__* %144, i32 0, i32 %147)
  %149 = load i64, i64* %16, align 8
  %150 = sub i64 8, %149
  %151 = sub i64 24, %150
  %152 = load %struct.machine*, %struct.machine** %13, align 8
  %153 = getelementptr inbounds %struct.machine, %struct.machine* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 %151, %155
  %157 = trunc i64 %156 to i32
  %158 = load %union.perf_event*, %union.perf_event** %9, align 8
  %159 = bitcast %union.perf_event* %158 to %struct.TYPE_6__*
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  store i32 %157, i32* %161, align 8
  %162 = load i32, i32* %10, align 4
  %163 = load %union.perf_event*, %union.perf_event** %9, align 8
  %164 = bitcast %union.perf_event* %163 to %struct.TYPE_6__*
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 4
  %166 = load i64 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)*, i64 (%struct.perf_tool*, %union.perf_event*, i32*, %struct.machine*)** %12, align 8
  %167 = load %struct.perf_tool*, %struct.perf_tool** %8, align 8
  %168 = load %union.perf_event*, %union.perf_event** %9, align 8
  %169 = load %struct.machine*, %struct.machine** %13, align 8
  %170 = call i64 %166(%struct.perf_tool* %167, %union.perf_event* %168, i32* @synth_sample, %struct.machine* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %123
  store i32 -1, i32* %20, align 4
  br label %174

173:                                              ; preds = %123
  br label %106

174:                                              ; preds = %172, %113
  %175 = load i32*, i32** %17, align 8
  %176 = call i32 @closedir(i32* %175)
  br label %177

177:                                              ; preds = %174, %95, %38
  %178 = load i32, i32* %20, align 4
  store i32 %178, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %179

179:                                              ; preds = %177, %103, %94
  %180 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %180)
  %181 = load i32, i32* %7, align 4
  ret i32 %181
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @perf_event__get_comm_tgid(i32, %struct.TYPE_6__*, i32) #2

declare dso_local i32 @strlen(%struct.TYPE_6__*) #2

declare dso_local i64 @PERF_ALIGN(i64, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @pr_debug(i8*, i8*) #2

declare dso_local i32 @readdir_r(i32*, %struct.dirent*, %struct.dirent**) #2

declare dso_local i32 @strtol(i32, i8**, i32) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

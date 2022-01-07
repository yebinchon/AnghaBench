; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_gnu_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_gnu_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { %struct.proc*, i32, i32, %struct.TYPE_8__, i64, i64 }
%struct.proc = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@current_inferior = common dso_local global %struct.inf* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"tid = %d, step = %d, sig = %d\00", align 1
@TARGET_SIGNAL_0 = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Aborting %s with unforwarded exception %s.\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"running all threads; tid = %d\00", align 1
@inferior_ptid = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Can't run single thread id %d: no such thread!\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"running one thread: %d/%d\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Can't step thread id %d: no such thread.\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"stepping thread: %d/%d\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"here we go...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @gnu_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gnu_resume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.inf*, align 8
  %9 = alloca %struct.proc*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.proc* null, %struct.proc** %7, align 8
  %10 = load %struct.inf*, %struct.inf** @current_inferior, align 8
  store %struct.inf* %10, %struct.inf** %8, align 8
  %11 = load %struct.inf*, %struct.inf** %8, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @PIDGET(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (%struct.inf*, i8*, ...) @inf_debug(%struct.inf* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %13, i32 %14, i32 %15)
  %17 = load %struct.inf*, %struct.inf** %8, align 8
  %18 = call i32 @inf_validate_procinfo(%struct.inf* %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.inf*, %struct.inf** %8, align 8
  %24 = getelementptr inbounds %struct.inf, %struct.inf* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22, %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load %struct.inf*, %struct.inf** %8, align 8
  %33 = getelementptr inbounds %struct.inf, %struct.inf* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load %struct.inf*, %struct.inf** %8, align 8
  %38 = call i32 @inf_continue(%struct.inf* %37)
  br label %43

39:                                               ; preds = %31, %27
  %40 = load %struct.inf*, %struct.inf** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @inf_signal(%struct.inf* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  br label %73

44:                                               ; preds = %22
  %45 = load %struct.inf*, %struct.inf** %8, align 8
  %46 = getelementptr inbounds %struct.inf, %struct.inf* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MACH_PORT_NULL, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %44
  %53 = load %struct.inf*, %struct.inf** %8, align 8
  %54 = getelementptr inbounds %struct.inf, %struct.inf* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @proc_abort(i32 %56, i32 1)
  %58 = load %struct.inf*, %struct.inf** %8, align 8
  %59 = getelementptr inbounds %struct.inf, %struct.inf* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @proc_string(i32 %61)
  %63 = sext i32 %62 to i64
  %64 = load %struct.inf*, %struct.inf** %8, align 8
  %65 = getelementptr inbounds %struct.inf, %struct.inf* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @target_signal_to_name(i32 %69)
  %71 = call i32 (i8*, i64, ...) @warning(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %63, i32 %70)
  br label %72

72:                                               ; preds = %52, %44
  br label %73

73:                                               ; preds = %72, %43
  %74 = load %struct.inf*, %struct.inf** %8, align 8
  %75 = getelementptr inbounds %struct.inf, %struct.inf* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @port_msgs_queued(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %154

80:                                               ; preds = %73
  %81 = load %struct.inf*, %struct.inf** %8, align 8
  %82 = call i32 @inf_update_procs(%struct.inf* %81)
  %83 = load i32, i32* %4, align 4
  %84 = call i64 @PIDGET(i32 %83)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.inf*, %struct.inf** %8, align 8
  %88 = load i32, i32* @inferior_ptid, align 4
  %89 = call i64 @PIDGET(i32 %88)
  %90 = call i32 (%struct.inf*, i8*, ...) @inf_debug(%struct.inf* %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %89)
  %91 = load i32, i32* @inferior_ptid, align 4
  store i32 %91, i32* %4, align 4
  %92 = load %struct.inf*, %struct.inf** %8, align 8
  %93 = call i32 @inf_set_threads_resume_sc(%struct.inf* %92, %struct.proc* null, i32 1)
  br label %115

94:                                               ; preds = %80
  %95 = load %struct.inf*, %struct.inf** %8, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i64 @PIDGET(i32 %96)
  %98 = call %struct.proc* @inf_tid_to_thread(%struct.inf* %95, i64 %97)
  store %struct.proc* %98, %struct.proc** %9, align 8
  %99 = load %struct.proc*, %struct.proc** %9, align 8
  %100 = icmp ne %struct.proc* %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %94
  %102 = call i32 @error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %94
  %104 = load %struct.inf*, %struct.inf** %8, align 8
  %105 = load %struct.inf*, %struct.inf** %8, align 8
  %106 = getelementptr inbounds %struct.inf, %struct.inf* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.proc*, %struct.proc** %9, align 8
  %109 = getelementptr inbounds %struct.proc, %struct.proc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (%struct.inf*, i8*, ...) @inf_debug(%struct.inf* %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %110)
  %112 = load %struct.inf*, %struct.inf** %8, align 8
  %113 = load %struct.proc*, %struct.proc** %9, align 8
  %114 = call i32 @inf_set_threads_resume_sc(%struct.inf* %112, %struct.proc* %113, i32 0)
  br label %115

115:                                              ; preds = %103, %86
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %139

118:                                              ; preds = %115
  %119 = load %struct.inf*, %struct.inf** %8, align 8
  %120 = load i32, i32* %4, align 4
  %121 = call i64 @PIDGET(i32 %120)
  %122 = call %struct.proc* @inf_tid_to_thread(%struct.inf* %119, i64 %121)
  store %struct.proc* %122, %struct.proc** %7, align 8
  %123 = load %struct.proc*, %struct.proc** %7, align 8
  %124 = icmp ne %struct.proc* %123, null
  br i1 %124, label %129, label %125

125:                                              ; preds = %118
  %126 = load i32, i32* %4, align 4
  %127 = call i64 @PIDGET(i32 %126)
  %128 = call i32 (i8*, i64, ...) @warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %127)
  br label %138

129:                                              ; preds = %118
  %130 = load %struct.inf*, %struct.inf** %8, align 8
  %131 = load %struct.inf*, %struct.inf** %8, align 8
  %132 = getelementptr inbounds %struct.inf, %struct.inf* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.proc*, %struct.proc** %7, align 8
  %135 = getelementptr inbounds %struct.proc, %struct.proc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (%struct.inf*, i8*, ...) @inf_debug(%struct.inf* %130, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %129, %125
  br label %139

139:                                              ; preds = %138, %115
  %140 = load %struct.proc*, %struct.proc** %7, align 8
  %141 = load %struct.inf*, %struct.inf** %8, align 8
  %142 = getelementptr inbounds %struct.inf, %struct.inf* %141, i32 0, i32 0
  %143 = load %struct.proc*, %struct.proc** %142, align 8
  %144 = icmp ne %struct.proc* %140, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load %struct.inf*, %struct.inf** %8, align 8
  %147 = load %struct.proc*, %struct.proc** %7, align 8
  %148 = call i32 @inf_set_step_thread(%struct.inf* %146, %struct.proc* %147)
  br label %149

149:                                              ; preds = %145, %139
  %150 = load %struct.inf*, %struct.inf** %8, align 8
  %151 = call i32 (%struct.inf*, i8*, ...) @inf_debug(%struct.inf* %150, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %152 = load %struct.inf*, %struct.inf** %8, align 8
  %153 = call i32 @inf_resume(%struct.inf* %152)
  br label %154

154:                                              ; preds = %149, %79
  ret void
}

declare dso_local i32 @inf_debug(%struct.inf*, i8*, ...) #1

declare dso_local i64 @PIDGET(i32) #1

declare dso_local i32 @inf_validate_procinfo(%struct.inf*) #1

declare dso_local i32 @inf_continue(%struct.inf*) #1

declare dso_local i32 @inf_signal(%struct.inf*, i32) #1

declare dso_local i32 @proc_abort(i32, i32) #1

declare dso_local i32 @warning(i8*, i64, ...) #1

declare dso_local i32 @proc_string(i32) #1

declare dso_local i32 @target_signal_to_name(i32) #1

declare dso_local i64 @port_msgs_queued(i32) #1

declare dso_local i32 @inf_update_procs(%struct.inf*) #1

declare dso_local i32 @inf_set_threads_resume_sc(%struct.inf*, %struct.proc*, i32) #1

declare dso_local %struct.proc* @inf_tid_to_thread(%struct.inf*, i64) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @inf_set_step_thread(%struct.inf*, %struct.proc*) #1

declare dso_local i32 @inf_resume(%struct.inf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

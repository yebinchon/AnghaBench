; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-nat.c_inf_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inf = type { %struct.proc*, i32, i64, i64, %struct.proc* }
%struct.proc = type { i32, i32, %struct.proc* }

@.str = private unnamed_addr constant [13 x i8] c"detaching...\00", align 1
@TARGET_SIGNAL_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inf_detach(%struct.inf* %0) #0 {
  %2 = alloca %struct.inf*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.proc*, align 8
  store %struct.inf* %0, %struct.inf** %2, align 8
  %5 = load %struct.inf*, %struct.inf** %2, align 8
  %6 = getelementptr inbounds %struct.inf, %struct.inf* %5, i32 0, i32 4
  %7 = load %struct.proc*, %struct.proc** %6, align 8
  store %struct.proc* %7, %struct.proc** %3, align 8
  %8 = load %struct.inf*, %struct.inf** %2, align 8
  %9 = call i32 @inf_debug(%struct.inf* %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.inf*, %struct.inf** %2, align 8
  %11 = call i32 @inf_clear_wait(%struct.inf* %10)
  %12 = load %struct.inf*, %struct.inf** %2, align 8
  %13 = call i32 @inf_set_step_thread(%struct.inf* %12, i32 0)
  %14 = load %struct.proc*, %struct.proc** %3, align 8
  %15 = icmp ne %struct.proc* %14, null
  br i1 %15, label %16, label %67

16:                                               ; preds = %1
  %17 = load %struct.inf*, %struct.inf** %2, align 8
  %18 = call i32 @inf_validate_procinfo(%struct.inf* %17)
  %19 = load %struct.inf*, %struct.inf** %2, align 8
  %20 = call i32 @inf_set_traced(%struct.inf* %19, i32 0)
  %21 = load %struct.inf*, %struct.inf** %2, align 8
  %22 = getelementptr inbounds %struct.inf, %struct.inf* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %16
  %26 = load %struct.inf*, %struct.inf** %2, align 8
  %27 = getelementptr inbounds %struct.inf, %struct.inf* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.inf*, %struct.inf** %2, align 8
  %32 = call i32 @inf_continue(%struct.inf* %31)
  br label %37

33:                                               ; preds = %25
  %34 = load %struct.inf*, %struct.inf** %2, align 8
  %35 = load i32, i32* @TARGET_SIGNAL_0, align 4
  %36 = call i32 @inf_signal(%struct.inf* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %30
  br label %38

38:                                               ; preds = %37, %16
  %39 = load %struct.proc*, %struct.proc** %3, align 8
  %40 = call i32 @proc_restore_exc_port(%struct.proc* %39)
  %41 = load %struct.inf*, %struct.inf** %2, align 8
  %42 = getelementptr inbounds %struct.inf, %struct.inf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.proc*, %struct.proc** %3, align 8
  %45 = getelementptr inbounds %struct.proc, %struct.proc* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.inf*, %struct.inf** %2, align 8
  %47 = getelementptr inbounds %struct.inf, %struct.inf* %46, i32 0, i32 0
  %48 = load %struct.proc*, %struct.proc** %47, align 8
  store %struct.proc* %48, %struct.proc** %4, align 8
  br label %49

49:                                               ; preds = %60, %38
  %50 = load %struct.proc*, %struct.proc** %4, align 8
  %51 = icmp ne %struct.proc* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load %struct.proc*, %struct.proc** %4, align 8
  %54 = call i32 @proc_restore_exc_port(%struct.proc* %53)
  %55 = load %struct.proc*, %struct.proc** %4, align 8
  %56 = getelementptr inbounds %struct.proc, %struct.proc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.proc*, %struct.proc** %4, align 8
  %59 = getelementptr inbounds %struct.proc, %struct.proc* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %52
  %61 = load %struct.proc*, %struct.proc** %4, align 8
  %62 = getelementptr inbounds %struct.proc, %struct.proc* %61, i32 0, i32 2
  %63 = load %struct.proc*, %struct.proc** %62, align 8
  store %struct.proc* %63, %struct.proc** %4, align 8
  br label %49

64:                                               ; preds = %49
  %65 = load %struct.inf*, %struct.inf** %2, align 8
  %66 = call i32 @inf_update_suspends(%struct.inf* %65)
  br label %67

67:                                               ; preds = %64, %1
  %68 = load %struct.inf*, %struct.inf** %2, align 8
  %69 = call i32 @inf_cleanup(%struct.inf* %68)
  ret void
}

declare dso_local i32 @inf_debug(%struct.inf*, i8*) #1

declare dso_local i32 @inf_clear_wait(%struct.inf*) #1

declare dso_local i32 @inf_set_step_thread(%struct.inf*, i32) #1

declare dso_local i32 @inf_validate_procinfo(%struct.inf*) #1

declare dso_local i32 @inf_set_traced(%struct.inf*, i32) #1

declare dso_local i32 @inf_continue(%struct.inf*) #1

declare dso_local i32 @inf_signal(%struct.inf*, i32) #1

declare dso_local i32 @proc_restore_exc_port(%struct.proc*) #1

declare dso_local i32 @inf_update_suspends(%struct.inf*) #1

declare dso_local i32 @inf_cleanup(%struct.inf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

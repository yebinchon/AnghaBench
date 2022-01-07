; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_prepare_to_proceed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infrun.c_prepare_to_proceed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_waitstatus = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TARGET_WAITKIND_STOPPED = common dso_local global i64 0, align 8
@TARGET_SIGNAL_TRAP = common dso_local global i64 0, align 8
@TARGET_SIGNAL_INT = common dso_local global i64 0, align 8
@minus_one_ptid = common dso_local global i32 0, align 4
@inferior_ptid = common dso_local global i32 0, align 4
@stop_pc = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @prepare_to_proceed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_to_proceed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.target_waitstatus, align 8
  %4 = alloca i64, align 8
  %5 = call i32 @get_last_target_status(i32* %2, %struct.target_waitstatus* %3)
  %6 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @TARGET_WAITKIND_STOPPED, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %0
  %11 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %3, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TARGET_SIGNAL_TRAP, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.target_waitstatus, %struct.target_waitstatus* %3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TARGET_SIGNAL_INT, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %0
  store i32 0, i32* %1, align 4
  br label %53

23:                                               ; preds = %16, %10
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* @minus_one_ptid, align 4
  %26 = call i32 @ptid_equal(i32 %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @inferior_ptid, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @ptid_equal(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %2, align 4
  %35 = call i64 @read_pc_pid(i32 %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i64 (...) @read_pc()
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load i32, i32* %2, align 4
  store i32 %40, i32* @inferior_ptid, align 4
  %41 = call i32 (...) @flush_cached_frames()
  %42 = call i32 (...) @registers_changed()
  %43 = load i64, i64* %4, align 8
  store i64 %43, i64* @stop_pc, align 8
  %44 = call i32 (...) @get_current_frame()
  %45 = call i32 @select_frame(i32 %44)
  br label %46

46:                                               ; preds = %39, %33
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @breakpoint_here_p(i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* %1, align 4
  br label %53

51:                                               ; preds = %46
  br label %52

52:                                               ; preds = %51, %28, %23
  store i32 0, i32* %1, align 4
  br label %53

53:                                               ; preds = %52, %50, %22
  %54 = load i32, i32* %1, align 4
  ret i32 %54
}

declare dso_local i32 @get_last_target_status(i32*, %struct.target_waitstatus*) #1

declare dso_local i32 @ptid_equal(i32, i32) #1

declare dso_local i64 @read_pc_pid(i32) #1

declare dso_local i64 @read_pc(...) #1

declare dso_local i32 @flush_cached_frames(...) #1

declare dso_local i32 @registers_changed(...) #1

declare dso_local i32 @select_frame(i32) #1

declare dso_local i32 @get_current_frame(...) #1

declare dso_local i64 @breakpoint_here_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

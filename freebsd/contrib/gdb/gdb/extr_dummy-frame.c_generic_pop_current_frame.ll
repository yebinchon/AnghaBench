; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_generic_pop_current_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_generic_pop_current_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type opaque

@DUMMY_FRAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generic_pop_current_frame(void (%struct.frame_info*)* %0) #0 {
  %2 = alloca void (%struct.frame_info*)*, align 8
  %3 = alloca %struct.frame_info*, align 8
  store void (%struct.frame_info*)* %0, void (%struct.frame_info*)** %2, align 8
  %4 = call %struct.frame_info* (...) @get_current_frame()
  store %struct.frame_info* %4, %struct.frame_info** %3, align 8
  %5 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %6 = call i64 @get_frame_type(%struct.frame_info* %5)
  %7 = load i64, i64* @DUMMY_FRAME, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @generic_pop_dummy_frame()
  br label %14

11:                                               ; preds = %1
  %12 = load void (%struct.frame_info*)*, void (%struct.frame_info*)** %2, align 8
  %13 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  call void %12(%struct.frame_info* %13)
  br label %14

14:                                               ; preds = %11, %9
  ret void
}

declare dso_local %struct.frame_info* @get_current_frame(...) #1

declare dso_local i64 @get_frame_type(%struct.frame_info*) #1

declare dso_local i32 @generic_pop_dummy_frame(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_get_selected_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_frame.c_get_selected_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

@deprecated_selected_frame = common dso_local global %struct.frame_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.frame_info* @get_selected_frame() #0 {
  %1 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  %2 = icmp eq %struct.frame_info* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = call i32 (...) @get_current_frame()
  %5 = call i32 @select_frame(i32 %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  %8 = icmp ne %struct.frame_info* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @gdb_assert(i32 %9)
  %11 = load %struct.frame_info*, %struct.frame_info** @deprecated_selected_frame, align 8
  ret %struct.frame_info* %11
}

declare dso_local i32 @select_frame(i32) #1

declare dso_local i32 @get_current_frame(...) #1

declare dso_local i32 @gdb_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

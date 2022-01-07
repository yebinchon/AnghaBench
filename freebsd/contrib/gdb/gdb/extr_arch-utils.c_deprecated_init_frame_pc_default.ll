; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arch-utils.c_deprecated_init_frame_pc_default.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arch-utils.c_deprecated_init_frame_pc_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @deprecated_init_frame_pc_default(i32 %0, %struct.frame_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.frame_info*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.frame_info* %1, %struct.frame_info** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = call i64 (...) @DEPRECATED_SAVED_PC_AFTER_CALL_P()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %13 = call i32* @get_next_frame(%struct.frame_info* %12)
  %14 = call i32 @DEPRECATED_SAVED_PC_AFTER_CALL(i32* %13)
  store i32 %14, i32* %3, align 4
  br label %25

15:                                               ; preds = %8, %2
  %16 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %17 = call i32* @get_next_frame(%struct.frame_info* %16)
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.frame_info*, %struct.frame_info** %5, align 8
  %21 = call i32* @get_next_frame(%struct.frame_info* %20)
  %22 = call i32 @DEPRECATED_FRAME_SAVED_PC(i32* %21)
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %15
  %24 = call i32 (...) @read_pc()
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %19, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @DEPRECATED_SAVED_PC_AFTER_CALL_P(...) #1

declare dso_local i32 @DEPRECATED_SAVED_PC_AFTER_CALL(i32*) #1

declare dso_local i32* @get_next_frame(%struct.frame_info*) #1

declare dso_local i32 @DEPRECATED_FRAME_SAVED_PC(i32*) #1

declare dso_local i32 @read_pc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

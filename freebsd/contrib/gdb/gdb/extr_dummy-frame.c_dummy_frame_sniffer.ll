; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_dummy_frame_sniffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dummy-frame.c_dummy_frame_sniffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_unwind = type { i32 }
%struct.frame_info = type { i32 }

@dummy_frame_unwind = common dso_local global %struct.frame_unwind zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.frame_unwind* @dummy_frame_sniffer(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_unwind*, align 8
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i32, align 4
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %5 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %6 = call i32 @frame_pc_unwind(%struct.frame_info* %5)
  store i32 %6, i32* %4, align 4
  %7 = call i64 (...) @DEPRECATED_PC_IN_CALL_DUMMY_P()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @DEPRECATED_PC_IN_CALL_DUMMY(i32 %10, i32 0, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %18

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @pc_in_dummy_frame(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %9
  store %struct.frame_unwind* @dummy_frame_unwind, %struct.frame_unwind** %2, align 8
  br label %19

18:                                               ; preds = %13, %9
  store %struct.frame_unwind* null, %struct.frame_unwind** %2, align 8
  br label %19

19:                                               ; preds = %18, %17
  %20 = load %struct.frame_unwind*, %struct.frame_unwind** %2, align 8
  ret %struct.frame_unwind* %20
}

declare dso_local i32 @frame_pc_unwind(%struct.frame_info*) #1

declare dso_local i64 @DEPRECATED_PC_IN_CALL_DUMMY_P(...) #1

declare dso_local i64 @DEPRECATED_PC_IN_CALL_DUMMY(i32, i32, i32) #1

declare dso_local i64 @pc_in_dummy_frame(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

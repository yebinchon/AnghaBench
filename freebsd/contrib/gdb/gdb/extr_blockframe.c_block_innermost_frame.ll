; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_blockframe.c_block_innermost_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_blockframe.c_block_innermost_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.block = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.frame_info* @block_innermost_frame(%struct.block* %0) #0 {
  %2 = alloca %struct.frame_info*, align 8
  %3 = alloca %struct.block*, align 8
  %4 = alloca %struct.frame_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.block* %0, %struct.block** %3, align 8
  %8 = load %struct.block*, %struct.block** %3, align 8
  %9 = icmp eq %struct.block* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.frame_info* null, %struct.frame_info** %2, align 8
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.block*, %struct.block** %3, align 8
  %13 = call i64 @BLOCK_START(%struct.block* %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.block*, %struct.block** %3, align 8
  %15 = call i64 @BLOCK_END(%struct.block* %14)
  store i64 %15, i64* %6, align 8
  store %struct.frame_info* null, %struct.frame_info** %4, align 8
  br label %16

16:                                               ; preds = %11, %34
  %17 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %18 = call %struct.frame_info* @get_prev_frame(%struct.frame_info* %17)
  store %struct.frame_info* %18, %struct.frame_info** %4, align 8
  %19 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %20 = icmp eq %struct.frame_info* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store %struct.frame_info* null, %struct.frame_info** %2, align 8
  br label %35

22:                                               ; preds = %16
  %23 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  %24 = call i64 @get_frame_address_in_block(%struct.frame_info* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %5, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load %struct.frame_info*, %struct.frame_info** %4, align 8
  store %struct.frame_info* %33, %struct.frame_info** %2, align 8
  br label %35

34:                                               ; preds = %28, %22
  br label %16

35:                                               ; preds = %32, %21, %10
  %36 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  ret %struct.frame_info* %36
}

declare dso_local i64 @BLOCK_START(%struct.block*) #1

declare dso_local i64 @BLOCK_END(%struct.block*) #1

declare dso_local %struct.frame_info* @get_prev_frame(%struct.frame_info*) #1

declare dso_local i64 @get_frame_address_in_block(%struct.frame_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

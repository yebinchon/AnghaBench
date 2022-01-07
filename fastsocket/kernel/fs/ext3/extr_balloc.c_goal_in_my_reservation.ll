; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_goal_in_my_reservation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_goal_in_my_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext3_reserve_window = type { i32, i32 }
%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext3_reserve_window*, i64, i32, %struct.super_block*)* @goal_in_my_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goal_in_my_reservation(%struct.ext3_reserve_window* %0, i64 %1, i32 %2, %struct.super_block* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext3_reserve_window*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ext3_reserve_window* %0, %struct.ext3_reserve_window** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.super_block* %3, %struct.super_block** %9, align 8
  %12 = load %struct.super_block*, %struct.super_block** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @ext3_group_first_block_no(%struct.super_block* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.super_block*, %struct.super_block** %9, align 8
  %17 = call i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block* %16)
  %18 = sub nsw i32 %17, 1
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.ext3_reserve_window*, %struct.ext3_reserve_window** %6, align 8
  %21 = getelementptr inbounds %struct.ext3_reserve_window, %struct.ext3_reserve_window* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load %struct.ext3_reserve_window*, %struct.ext3_reserve_window** %6, align 8
  %27 = getelementptr inbounds %struct.ext3_reserve_window, %struct.ext3_reserve_window* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %4
  store i32 0, i32* %5, align 4
  br label %57

32:                                               ; preds = %25
  %33 = load i64, i64* %7, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load %struct.ext3_reserve_window*, %struct.ext3_reserve_window** %6, align 8
  %41 = getelementptr inbounds %struct.ext3_reserve_window, %struct.ext3_reserve_window* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %39, %43
  br i1 %44, label %55, label %45

45:                                               ; preds = %35
  %46 = load i64, i64* %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load %struct.ext3_reserve_window*, %struct.ext3_reserve_window** %6, align 8
  %51 = getelementptr inbounds %struct.ext3_reserve_window, %struct.ext3_reserve_window* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp sgt i64 %49, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45, %35
  store i32 0, i32* %5, align 4
  br label %57

56:                                               ; preds = %45, %32
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %55, %31
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @ext3_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i32 @EXT3_BLOCKS_PER_GROUP(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

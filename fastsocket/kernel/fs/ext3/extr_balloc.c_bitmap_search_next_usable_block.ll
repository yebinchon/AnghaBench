; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_bitmap_search_next_usable_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_bitmap_search_next_usable_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.journal_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.buffer_head*, i32)* @bitmap_search_next_usable_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bitmap_search_next_usable_block(i32 %0, %struct.buffer_head* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.journal_head*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %11 = call %struct.journal_head* @bh2jh(%struct.buffer_head* %10)
  store %struct.journal_head* %11, %struct.journal_head** %9, align 8
  br label %12

12:                                               ; preds = %48, %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ext3_find_next_zero_bit(i64 %19, i32 %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %52

27:                                               ; preds = %16
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %30 = call i64 @ext3_test_allocatable(i32 %28, %struct.buffer_head* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %52

34:                                               ; preds = %27
  %35 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %36 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %35)
  %37 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %38 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load %struct.journal_head*, %struct.journal_head** %9, align 8
  %43 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @ext3_find_next_zero_bit(i64 %44, i32 %45, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %41, %34
  %49 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %50 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %49)
  br label %12

51:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %32, %26
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.journal_head* @bh2jh(%struct.buffer_head*) #1

declare dso_local i32 @ext3_find_next_zero_bit(i64, i32, i32) #1

declare dso_local i64 @ext3_test_allocatable(i32, %struct.buffer_head*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

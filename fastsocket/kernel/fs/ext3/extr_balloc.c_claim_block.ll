; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_claim_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_balloc.c_claim_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.journal_head = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.buffer_head*)* @claim_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @claim_block(i32* %0, i32 %1, %struct.buffer_head* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.journal_head*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head* %2, %struct.buffer_head** %7, align 8
  %10 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %11 = call %struct.journal_head* @bh2jh(%struct.buffer_head* %10)
  store %struct.journal_head* %11, %struct.journal_head** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %15 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ext3_set_bit_atomic(i32* %12, i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %46

20:                                               ; preds = %3
  %21 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %22 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %21)
  %23 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %24 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.journal_head*, %struct.journal_head** %8, align 8
  %30 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @ext3_test_bit(i32 %28, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ext3_clear_bit_atomic(i32* %35, i32 %36, i32 %39)
  store i32 0, i32* %9, align 4
  br label %42

41:                                               ; preds = %27, %20
  store i32 1, i32* %9, align 4
  br label %42

42:                                               ; preds = %41, %34
  %43 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %44 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %19
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.journal_head* @bh2jh(%struct.buffer_head*) #1

declare dso_local i64 @ext3_set_bit_atomic(i32*, i32, i32) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i64 @ext3_test_bit(i32, i64) #1

declare dso_local i32 @ext3_clear_bit_atomic(i32*, i32, i32) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

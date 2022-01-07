; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_let_transaction_grow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_let_transaction_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LIST_COMMIT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32)* @let_transaction_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @let_transaction_grow(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.reiserfs_journal*, align 8
  %6 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.super_block*, %struct.super_block** %3, align 8
  %8 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %7)
  store %struct.reiserfs_journal* %8, %struct.reiserfs_journal** %5, align 8
  %9 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %10 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  br label %12

12:                                               ; preds = %2, %56
  %13 = call i32 @schedule_timeout_uninterruptible(i32 1)
  %14 = load i32, i32* @LIST_COMMIT_PENDING, align 4
  %15 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %16 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %14
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %39, %12
  %22 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %23 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %22, i32 0, i32 3
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %28 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %27, i32 0, i32 2
  %29 = call i64 @atomic_read(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26, %21
  %32 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %33 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %34, %35
  br label %37

37:                                               ; preds = %31, %26
  %38 = phi i1 [ false, %26 ], [ %36, %31 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load %struct.super_block*, %struct.super_block** %3, align 8
  %41 = call i32 @queue_log_writer(%struct.super_block* %40)
  br label %21

42:                                               ; preds = %37
  %43 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %44 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %60

49:                                               ; preds = %42
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %52 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  br label %60

56:                                               ; preds = %49
  %57 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %58 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %6, align 8
  br label %12

60:                                               ; preds = %55, %48
  ret void
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @queue_log_writer(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

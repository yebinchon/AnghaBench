; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_journal_compare_desc_commit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_journal_compare_desc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_desc = type { i32 }
%struct.reiserfs_journal_commit = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_commit*)* @journal_compare_desc_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @journal_compare_desc_commit(%struct.super_block* %0, %struct.reiserfs_journal_desc* %1, %struct.reiserfs_journal_commit* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.reiserfs_journal_desc*, align 8
  %7 = alloca %struct.reiserfs_journal_commit*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.reiserfs_journal_desc* %1, %struct.reiserfs_journal_desc** %6, align 8
  store %struct.reiserfs_journal_commit* %2, %struct.reiserfs_journal_commit** %7, align 8
  %8 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %7, align 8
  %9 = call i64 @get_commit_trans_id(%struct.reiserfs_journal_commit* %8)
  %10 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %6, align 8
  %11 = call i64 @get_desc_trans_id(%struct.reiserfs_journal_desc* %10)
  %12 = icmp ne i64 %9, %11
  br i1 %12, label %31, label %13

13:                                               ; preds = %3
  %14 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %7, align 8
  %15 = call i64 @get_commit_trans_len(%struct.reiserfs_journal_commit* %14)
  %16 = load %struct.reiserfs_journal_desc*, %struct.reiserfs_journal_desc** %6, align 8
  %17 = call i64 @get_desc_trans_len(%struct.reiserfs_journal_desc* %16)
  %18 = icmp ne i64 %15, %17
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %7, align 8
  %21 = call i64 @get_commit_trans_len(%struct.reiserfs_journal_commit* %20)
  %22 = load %struct.super_block*, %struct.super_block** %5, align 8
  %23 = call %struct.TYPE_2__* @SB_JOURNAL(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %21, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load %struct.reiserfs_journal_commit*, %struct.reiserfs_journal_commit** %7, align 8
  %29 = call i64 @get_commit_trans_len(%struct.reiserfs_journal_commit* %28)
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %19, %13, %3
  store i32 1, i32* %4, align 4
  br label %33

32:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i64 @get_commit_trans_id(%struct.reiserfs_journal_commit*) #1

declare dso_local i64 @get_desc_trans_id(%struct.reiserfs_journal_desc*) #1

declare dso_local i64 @get_commit_trans_len(%struct.reiserfs_journal_commit*) #1

declare dso_local i64 @get_desc_trans_len(%struct.reiserfs_journal_desc*) #1

declare dso_local %struct.TYPE_2__* @SB_JOURNAL(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

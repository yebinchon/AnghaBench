; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_test_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_test_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { i64, %struct.reiserfs_journal_cnode*, i32 }
%struct.reiserfs_journal_cnode = type { i64, %struct.reiserfs_journal_cnode*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.reiserfs_journal_list*)* @test_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_transaction(%struct.super_block* %0, %struct.reiserfs_journal_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.reiserfs_journal_list*, align 8
  %6 = alloca %struct.reiserfs_journal_cnode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %5, align 8
  %7 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  %8 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  %13 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %12, i32 0, i32 2
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %2
  store i32 1, i32* %3, align 4
  br label %47

17:                                               ; preds = %11
  %18 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  %19 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %18, i32 0, i32 1
  %20 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %19, align 8
  store %struct.reiserfs_journal_cnode* %20, %struct.reiserfs_journal_cnode** %6, align 8
  br label %21

21:                                               ; preds = %41, %17
  %22 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %6, align 8
  %23 = icmp ne %struct.reiserfs_journal_cnode* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %6, align 8
  %26 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %41

30:                                               ; preds = %24
  %31 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %6, align 8
  %32 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %6, align 8
  %37 = call i32 @newer_jl_done(%struct.reiserfs_journal_cnode* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %47

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %29
  %42 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %6, align 8
  %43 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %42, i32 0, i32 1
  %44 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %43, align 8
  store %struct.reiserfs_journal_cnode* %44, %struct.reiserfs_journal_cnode** %6, align 8
  %45 = call i32 (...) @cond_resched()
  br label %21

46:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %39, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @newer_jl_done(%struct.reiserfs_journal_cnode*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_reiserfs_commit_for_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_reiserfs_commit_for_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.reiserfs_journal_list = type { i32 }
%struct.TYPE_2__ = type { i32, %struct.reiserfs_journal_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_commit_for_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.reiserfs_journal_list*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %11, align 8
  store %struct.reiserfs_journal_list* %12, %struct.reiserfs_journal_list** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %17 = icmp ne %struct.reiserfs_journal_list* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %19)
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = call %struct.TYPE_2__* @REISERFS_I(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %18, %15
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %29 = call i32 @__commit_trans_jl(%struct.inode* %26, i32 %27, %struct.reiserfs_journal_list* %28)
  ret i32 %29
}

declare dso_local %struct.TYPE_2__* @REISERFS_I(%struct.inode*) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @__commit_trans_jl(%struct.inode*, i32, %struct.reiserfs_journal_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

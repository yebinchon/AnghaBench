; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_queue_recovery_completion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_queue_recovery_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_journal = type { i32, i32, i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_quota_recovery = type { i32 }
%struct.ocfs2_la_recovery_item = type { i32, i32, %struct.ocfs2_quota_recovery*, %struct.ocfs2_dinode*, %struct.ocfs2_dinode* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ocfs2_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_journal*, i32, %struct.ocfs2_dinode*, %struct.ocfs2_dinode*, %struct.ocfs2_quota_recovery*)* @ocfs2_queue_recovery_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_queue_recovery_completion(%struct.ocfs2_journal* %0, i32 %1, %struct.ocfs2_dinode* %2, %struct.ocfs2_dinode* %3, %struct.ocfs2_quota_recovery* %4) #0 {
  %6 = alloca %struct.ocfs2_journal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_dinode*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_quota_recovery*, align 8
  %11 = alloca %struct.ocfs2_la_recovery_item*, align 8
  store %struct.ocfs2_journal* %0, %struct.ocfs2_journal** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ocfs2_dinode* %2, %struct.ocfs2_dinode** %8, align 8
  store %struct.ocfs2_dinode* %3, %struct.ocfs2_dinode** %9, align 8
  store %struct.ocfs2_quota_recovery* %4, %struct.ocfs2_quota_recovery** %10, align 8
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.ocfs2_la_recovery_item* @kmalloc(i32 32, i32 %12)
  store %struct.ocfs2_la_recovery_item* %13, %struct.ocfs2_la_recovery_item** %11, align 8
  %14 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %11, align 8
  %15 = icmp ne %struct.ocfs2_la_recovery_item* %14, null
  br i1 %15, label %38, label %16

16:                                               ; preds = %5
  %17 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %18 = icmp ne %struct.ocfs2_dinode* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %21 = call i32 @kfree(%struct.ocfs2_dinode* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %24 = icmp ne %struct.ocfs2_dinode* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %27 = call i32 @kfree(%struct.ocfs2_dinode* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %10, align 8
  %30 = icmp ne %struct.ocfs2_quota_recovery* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %10, align 8
  %33 = call i32 @ocfs2_free_quota_recovery(%struct.ocfs2_quota_recovery* %32)
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @mlog_errno(i32 %36)
  br label %69

38:                                               ; preds = %5
  %39 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %11, align 8
  %40 = getelementptr inbounds %struct.ocfs2_la_recovery_item, %struct.ocfs2_la_recovery_item* %39, i32 0, i32 1
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %8, align 8
  %43 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %11, align 8
  %44 = getelementptr inbounds %struct.ocfs2_la_recovery_item, %struct.ocfs2_la_recovery_item* %43, i32 0, i32 4
  store %struct.ocfs2_dinode* %42, %struct.ocfs2_dinode** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %11, align 8
  %47 = getelementptr inbounds %struct.ocfs2_la_recovery_item, %struct.ocfs2_la_recovery_item* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %49 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %11, align 8
  %50 = getelementptr inbounds %struct.ocfs2_la_recovery_item, %struct.ocfs2_la_recovery_item* %49, i32 0, i32 3
  store %struct.ocfs2_dinode* %48, %struct.ocfs2_dinode** %50, align 8
  %51 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %10, align 8
  %52 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %11, align 8
  %53 = getelementptr inbounds %struct.ocfs2_la_recovery_item, %struct.ocfs2_la_recovery_item* %52, i32 0, i32 2
  store %struct.ocfs2_quota_recovery* %51, %struct.ocfs2_quota_recovery** %53, align 8
  %54 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %6, align 8
  %55 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %54, i32 0, i32 0
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %11, align 8
  %58 = getelementptr inbounds %struct.ocfs2_la_recovery_item, %struct.ocfs2_la_recovery_item* %57, i32 0, i32 1
  %59 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %6, align 8
  %60 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %59, i32 0, i32 2
  %61 = call i32 @list_add_tail(i32* %58, i32* %60)
  %62 = load i32, i32* @ocfs2_wq, align 4
  %63 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %6, align 8
  %64 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %63, i32 0, i32 1
  %65 = call i32 @queue_work(i32 %62, i32* %64)
  %66 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %6, align 8
  %67 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock(i32* %67)
  br label %69

69:                                               ; preds = %38, %34
  ret void
}

declare dso_local %struct.ocfs2_la_recovery_item* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_free_quota_recovery(%struct.ocfs2_quota_recovery*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

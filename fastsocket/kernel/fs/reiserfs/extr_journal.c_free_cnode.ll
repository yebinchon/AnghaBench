; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_free_cnode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_free_cnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_cnode = type { %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode* }
%struct.reiserfs_journal = type { %struct.reiserfs_journal_cnode*, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"free_cnode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.reiserfs_journal_cnode*)* @free_cnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_cnode(%struct.super_block* %0, %struct.reiserfs_journal_cnode* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.reiserfs_journal_cnode*, align 8
  %5 = alloca %struct.reiserfs_journal*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.reiserfs_journal_cnode* %1, %struct.reiserfs_journal_cnode** %4, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %6)
  store %struct.reiserfs_journal* %7, %struct.reiserfs_journal** %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call i32 @reiserfs_check_lock_depth(%struct.super_block* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %11 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %15 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %19 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %18, i32 0, i32 0
  %20 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %19, align 8
  %21 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %22 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %21, i32 0, i32 1
  store %struct.reiserfs_journal_cnode* %20, %struct.reiserfs_journal_cnode** %22, align 8
  %23 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %24 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %23, i32 0, i32 0
  %25 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %24, align 8
  %26 = icmp ne %struct.reiserfs_journal_cnode* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %29 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %30 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %29, i32 0, i32 0
  %31 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %30, align 8
  %32 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %31, i32 0, i32 0
  store %struct.reiserfs_journal_cnode* %28, %struct.reiserfs_journal_cnode** %32, align 8
  br label %33

33:                                               ; preds = %27, %2
  %34 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %35 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %34, i32 0, i32 0
  store %struct.reiserfs_journal_cnode* null, %struct.reiserfs_journal_cnode** %35, align 8
  %36 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %37 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %38 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %37, i32 0, i32 0
  store %struct.reiserfs_journal_cnode* %36, %struct.reiserfs_journal_cnode** %38, align 8
  ret void
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @reiserfs_check_lock_depth(%struct.super_block*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

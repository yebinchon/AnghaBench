; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_remove_all_from_journal_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_remove_all_from_journal_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { %struct.reiserfs_journal_cnode* }
%struct.reiserfs_journal_cnode = type { i64, %struct.reiserfs_journal_cnode*, i64, i64 }
%struct.reiserfs_journal = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"reiserfs-2201\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"block %u, bh is %d, state %ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.reiserfs_journal_list*, i32)* @remove_all_from_journal_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_all_from_journal_list(%struct.super_block* %0, %struct.reiserfs_journal_list* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.reiserfs_journal_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.reiserfs_journal*, align 8
  %8 = alloca %struct.reiserfs_journal_cnode*, align 8
  %9 = alloca %struct.reiserfs_journal_cnode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %10)
  store %struct.reiserfs_journal* %11, %struct.reiserfs_journal** %7, align 8
  %12 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  %13 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %12, i32 0, i32 0
  %14 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %13, align 8
  store %struct.reiserfs_journal_cnode* %14, %struct.reiserfs_journal_cnode** %8, align 8
  br label %15

15:                                               ; preds = %53, %3
  %16 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %17 = icmp ne %struct.reiserfs_journal_cnode* %16, null
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  %19 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %20 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %18
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %29 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %32 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 0
  %37 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %38 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @reiserfs_warning(%struct.super_block* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %30, i32 %36, i64 %39)
  br label %41

41:                                               ; preds = %26, %23
  %42 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %43 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.super_block*, %struct.super_block** %4, align 8
  %45 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %7, align 8
  %46 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  %49 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %50 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @remove_journal_hash(%struct.super_block* %44, i32 %47, %struct.reiserfs_journal_list* %48, i64 %51, i32 1)
  br label %53

53:                                               ; preds = %41, %18
  %54 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  store %struct.reiserfs_journal_cnode* %54, %struct.reiserfs_journal_cnode** %9, align 8
  %55 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %56 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %55, i32 0, i32 1
  %57 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %56, align 8
  store %struct.reiserfs_journal_cnode* %57, %struct.reiserfs_journal_cnode** %8, align 8
  %58 = load %struct.super_block*, %struct.super_block** %4, align 8
  %59 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %60 = call i32 @free_cnode(%struct.super_block* %58, %struct.reiserfs_journal_cnode* %59)
  br label %15

61:                                               ; preds = %15
  %62 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  %63 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %62, i32 0, i32 0
  store %struct.reiserfs_journal_cnode* null, %struct.reiserfs_journal_cnode** %63, align 8
  ret void
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, i64, i32, i64) #1

declare dso_local i32 @remove_journal_hash(%struct.super_block*, i32, %struct.reiserfs_journal_list*, i64, i32) #1

declare dso_local i32 @free_cnode(%struct.super_block*, %struct.reiserfs_journal_cnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

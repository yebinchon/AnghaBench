; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_dirty_one_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_dirty_one_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { %struct.reiserfs_journal_cnode*, i32 }
%struct.reiserfs_journal_cnode = type { %struct.reiserfs_journal_cnode*, i64, i64 }

@LIST_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.reiserfs_journal_list*)* @dirty_one_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirty_one_transaction(%struct.super_block* %0, %struct.reiserfs_journal_list* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.reiserfs_journal_list*, align 8
  %5 = alloca %struct.reiserfs_journal_cnode*, align 8
  %6 = alloca %struct.reiserfs_journal_list*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @LIST_DIRTY, align 4
  %9 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %10 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %14 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %13, i32 0, i32 0
  %15 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %14, align 8
  store %struct.reiserfs_journal_cnode* %15, %struct.reiserfs_journal_cnode** %5, align 8
  br label %16

16:                                               ; preds = %71, %2
  %17 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %18 = icmp ne %struct.reiserfs_journal_cnode* %17, null
  br i1 %18, label %19, label %75

19:                                               ; preds = %16
  %20 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %21 = call %struct.reiserfs_journal_list* @find_newer_jl_for_cn(%struct.reiserfs_journal_cnode* %20)
  store %struct.reiserfs_journal_list* %21, %struct.reiserfs_journal_list** %6, align 8
  %22 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %6, align 8
  %23 = icmp ne %struct.reiserfs_journal_list* %22, null
  br i1 %23, label %71, label %24

24:                                               ; preds = %19
  %25 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %26 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %71

29:                                               ; preds = %24
  %30 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %31 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %29
  %35 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %36 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @buffer_journal_dirty(i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %34
  %41 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %42 = call i32 @can_dirty(%struct.reiserfs_journal_cnode* %41)
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @BUG_ON(i32 %45)
  %47 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %48 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @clear_buffer_journal_new(i64 %49)
  %51 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %52 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @buffer_journal_prepared(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %40
  %57 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %58 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @set_buffer_journal_restore_dirty(i64 %59)
  br label %70

61:                                               ; preds = %40
  %62 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %63 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @set_buffer_journal_test(i64 %64)
  %66 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %67 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @mark_buffer_dirty(i64 %68)
  br label %70

70:                                               ; preds = %61, %56
  br label %71

71:                                               ; preds = %70, %34, %29, %24, %19
  %72 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %73 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %72, i32 0, i32 0
  %74 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %73, align 8
  store %struct.reiserfs_journal_cnode* %74, %struct.reiserfs_journal_cnode** %5, align 8
  br label %16

75:                                               ; preds = %16
  %76 = load i32, i32* %7, align 4
  ret i32 %76
}

declare dso_local %struct.reiserfs_journal_list* @find_newer_jl_for_cn(%struct.reiserfs_journal_cnode*) #1

declare dso_local i64 @buffer_journal_dirty(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @can_dirty(%struct.reiserfs_journal_cnode*) #1

declare dso_local i32 @clear_buffer_journal_new(i64) #1

declare dso_local i64 @buffer_journal_prepared(i64) #1

declare dso_local i32 @set_buffer_journal_restore_dirty(i64) #1

declare dso_local i32 @set_buffer_journal_test(i64) #1

declare dso_local i32 @mark_buffer_dirty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_kupdate_transactions.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_kupdate_transactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.list_head* }
%struct.list_head = type { i32 }
%struct.buffer_chunk = type { i64 }
%struct.reiserfs_journal = type { i32, %struct.list_head }

@LIST_TOUCHED = common dso_local global i32 0, align 4
@LIST_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list**, i32*, i32, i32)* @kupdate_transactions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kupdate_transactions(%struct.super_block* %0, %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.reiserfs_journal_list*, align 8
  %9 = alloca %struct.reiserfs_journal_list**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_chunk, align 8
  %18 = alloca %struct.list_head*, align 8
  %19 = alloca %struct.reiserfs_journal*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %8, align 8
  store %struct.reiserfs_journal_list** %2, %struct.reiserfs_journal_list*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %21 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %16, align 4
  %23 = load %struct.super_block*, %struct.super_block** %7, align 8
  %24 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %23)
  store %struct.reiserfs_journal* %24, %struct.reiserfs_journal** %19, align 8
  %25 = getelementptr inbounds %struct.buffer_chunk, %struct.buffer_chunk* %17, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %19, align 8
  %27 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.super_block*, %struct.super_block** %7, align 8
  %30 = load i32, i32* %16, align 4
  %31 = call i32 @journal_list_still_alive(%struct.super_block* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %6
  br label %120

34:                                               ; preds = %6
  br label %35

35:                                               ; preds = %112, %34
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp slt i32 %46, %47
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi i1 [ false, %42 ], [ %48, %45 ]
  br label %51

51:                                               ; preds = %49, %38
  %52 = phi i1 [ true, %38 ], [ %50, %49 ]
  br i1 %52, label %53, label %113

53:                                               ; preds = %51
  %54 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %55 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %77, label %58

58:                                               ; preds = %53
  %59 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %60 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @LIST_TOUCHED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %58
  %66 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %67 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %66, i32 0, i32 4
  %68 = call i64 @atomic_read(i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %72 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @LIST_DIRTY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %70, %65, %58, %53
  %78 = load %struct.super_block*, %struct.super_block** %7, align 8
  %79 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %80 = call i32 @del_from_work_list(%struct.super_block* %78, %struct.reiserfs_journal_list* %79)
  br label %113

81:                                               ; preds = %70
  %82 = load %struct.super_block*, %struct.super_block** %7, align 8
  %83 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %84 = call i32 @write_one_transaction(%struct.super_block* %82, %struct.reiserfs_journal_list* %83, %struct.buffer_chunk* %17)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %120

88:                                               ; preds = %81
  %89 = load i32, i32* %15, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %14, align 4
  %94 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %95 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load %struct.list_head*, %struct.list_head** %96, align 8
  store %struct.list_head* %97, %struct.list_head** %18, align 8
  %98 = load %struct.list_head*, %struct.list_head** %18, align 8
  %99 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %19, align 8
  %100 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %99, i32 0, i32 1
  %101 = icmp eq %struct.list_head* %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %113

103:                                              ; preds = %88
  %104 = load %struct.list_head*, %struct.list_head** %18, align 8
  %105 = call %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(%struct.list_head* %104)
  store %struct.reiserfs_journal_list* %105, %struct.reiserfs_journal_list** %8, align 8
  %106 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %107 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %16, align 4
  %110 = icmp ule i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  br label %113

112:                                              ; preds = %103
  br label %35

113:                                              ; preds = %111, %102, %77, %51
  %114 = getelementptr inbounds %struct.buffer_chunk, %struct.buffer_chunk* %17, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %113
  %118 = call i32 @write_chunk(%struct.buffer_chunk* %17)
  br label %119

119:                                              ; preds = %117, %113
  br label %120

120:                                              ; preds = %119, %87, %33
  %121 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %19, align 8
  %122 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %121, i32 0, i32 0
  %123 = call i32 @mutex_unlock(i32* %122)
  %124 = load i32, i32* %13, align 4
  ret i32 %124
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @journal_list_still_alive(%struct.super_block*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @del_from_work_list(%struct.super_block*, %struct.reiserfs_journal_list*) #1

declare dso_local i32 @write_one_transaction(%struct.super_block*, %struct.reiserfs_journal_list*, %struct.buffer_chunk*) #1

declare dso_local %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(%struct.list_head*) #1

declare dso_local i32 @write_chunk(%struct.buffer_chunk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

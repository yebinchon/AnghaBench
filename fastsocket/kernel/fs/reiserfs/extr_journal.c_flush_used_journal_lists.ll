; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_flush_used_journal_lists.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_flush_used_journal_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { i64, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.reiserfs_journal = type { i32 }

@LIST_TOUCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.reiserfs_journal_list*)* @flush_used_journal_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_used_journal_lists(%struct.super_block* %0, %struct.reiserfs_journal_list* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.reiserfs_journal_list*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.reiserfs_journal_list*, align 8
  %11 = alloca %struct.reiserfs_journal_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.reiserfs_journal*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %4, align 8
  store i64 0, i64* %5, align 8
  store i32 256, i32* %9, align 4
  %14 = load %struct.super_block*, %struct.super_block** %3, align 8
  %15 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %14)
  store %struct.reiserfs_journal* %15, %struct.reiserfs_journal** %13, align 8
  %16 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  store %struct.reiserfs_journal_list* %16, %struct.reiserfs_journal_list** %10, align 8
  store %struct.reiserfs_journal_list* %16, %struct.reiserfs_journal_list** %11, align 8
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = call i64 @reiserfs_data_log(%struct.super_block* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1024, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %2
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %78, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 256
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %26, %28
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i1 [ false, %22 ], [ %29, %25 ]
  br i1 %31, label %32, label %81

32:                                               ; preds = %30
  %33 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %10, align 8
  %34 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %33, i32 0, i32 4
  %35 = call i64 @atomic_read(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32
  %38 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %10, align 8
  %39 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %42 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %37, %32
  br label %81

46:                                               ; preds = %37
  %47 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %10, align 8
  %48 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %47, i32 0, i32 3
  %49 = call i64 @atomic_read(i32* %48)
  store i64 %49, i64* %6, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp ugt i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* @LIST_TOUCHED, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %10, align 8
  %56 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %52, %46
  %60 = load i64, i64* %6, align 8
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, %60
  store i64 %62, i64* %5, align 8
  %63 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %10, align 8
  store %struct.reiserfs_journal_list* %63, %struct.reiserfs_journal_list** %11, align 8
  %64 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %10, align 8
  %65 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %13, align 8
  %69 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %68, i32 0, i32 0
  %70 = icmp eq i32* %67, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %81

72:                                               ; preds = %59
  %73 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %10, align 8
  %74 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(i32* %76)
  store %struct.reiserfs_journal_list* %77, %struct.reiserfs_journal_list** %10, align 8
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %8, align 4
  br label %22

81:                                               ; preds = %71, %45, %30
  %82 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %11, align 8
  %83 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %84 = icmp ne %struct.reiserfs_journal_list* %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load %struct.super_block*, %struct.super_block** %3, align 8
  %87 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %88 = load i64, i64* %5, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @kupdate_transactions(%struct.super_block* %86, %struct.reiserfs_journal_list* %87, %struct.reiserfs_journal_list** %10, i32* %12, i64 %88, i32 %89)
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %85, %81
  %92 = load %struct.super_block*, %struct.super_block** %3, align 8
  %93 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %11, align 8
  %94 = call i32 @flush_journal_list(%struct.super_block* %92, %struct.reiserfs_journal_list* %93, i32 1)
  ret i32 0
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i64 @reiserfs_data_log(%struct.super_block*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(i32*) #1

declare dso_local i32 @kupdate_transactions(%struct.super_block*, %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list**, i32*, i64, i32) #1

declare dso_local i32 @flush_journal_list(%struct.super_block*, %struct.reiserfs_journal_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

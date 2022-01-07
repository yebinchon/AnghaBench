; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_flush_older_commits.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_flush_older_commits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { i32, i32, %struct.list_head, i32 }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.reiserfs_journal = type { %struct.list_head }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.reiserfs_journal_list*)* @flush_older_commits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_older_commits(%struct.super_block* %0, %struct.reiserfs_journal_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.reiserfs_journal_list*, align 8
  %6 = alloca %struct.reiserfs_journal*, align 8
  %7 = alloca %struct.reiserfs_journal_list*, align 8
  %8 = alloca %struct.reiserfs_journal_list*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %5, align 8
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %13)
  store %struct.reiserfs_journal* %14, %struct.reiserfs_journal** %6, align 8
  %15 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  %16 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %10, align 4
  br label %18

18:                                               ; preds = %82, %2
  %19 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  store %struct.reiserfs_journal_list* %19, %struct.reiserfs_journal_list** %8, align 8
  %20 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  %21 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.list_head, %struct.list_head* %21, i32 0, i32 1
  %23 = load %struct.list_head*, %struct.list_head** %22, align 8
  store %struct.list_head* %23, %struct.list_head** %9, align 8
  br label %24

24:                                               ; preds = %18, %37
  %25 = load %struct.list_head*, %struct.list_head** %9, align 8
  %26 = call %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(%struct.list_head* %25)
  store %struct.reiserfs_journal_list* %26, %struct.reiserfs_journal_list** %7, align 8
  %27 = load %struct.list_head*, %struct.list_head** %9, align 8
  %28 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %29 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %28, i32 0, i32 0
  %30 = icmp eq %struct.list_head* %27, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %33 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %32, i32 0, i32 3
  %34 = call i64 @atomic_read(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %24
  br label %43

37:                                               ; preds = %31
  %38 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  store %struct.reiserfs_journal_list* %38, %struct.reiserfs_journal_list** %8, align 8
  %39 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %40 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.list_head, %struct.list_head* %40, i32 0, i32 1
  %42 = load %struct.list_head*, %struct.list_head** %41, align 8
  store %struct.list_head* %42, %struct.list_head** %9, align 8
  br label %24

43:                                               ; preds = %36
  %44 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %45 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  %46 = icmp eq %struct.reiserfs_journal_list* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %96

48:                                               ; preds = %43
  %49 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %50 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %12, align 4
  %52 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %53 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %52, i32 0, i32 2
  store %struct.list_head* %53, %struct.list_head** %9, align 8
  br label %54

54:                                               ; preds = %48, %95
  %55 = load %struct.list_head*, %struct.list_head** %9, align 8
  %56 = call %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(%struct.list_head* %55)
  store %struct.reiserfs_journal_list* %56, %struct.reiserfs_journal_list** %7, align 8
  %57 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %58 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %94

63:                                               ; preds = %54
  %64 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %65 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %64, i32 0, i32 1
  %66 = call i64 @atomic_read(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load %struct.super_block*, %struct.super_block** %4, align 8
  %70 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %71 = call i32 @flush_commit_list(%struct.super_block* %69, %struct.reiserfs_journal_list* %70, i32 0)
  %72 = load %struct.super_block*, %struct.super_block** %4, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @journal_list_still_alive(%struct.super_block* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %68
  store i32 1, i32* %3, align 4
  br label %96

77:                                               ; preds = %68
  %78 = load %struct.super_block*, %struct.super_block** %4, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @journal_list_still_alive(%struct.super_block* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  br label %18

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83, %63
  %85 = load %struct.list_head*, %struct.list_head** %9, align 8
  %86 = getelementptr inbounds %struct.list_head, %struct.list_head* %85, i32 0, i32 0
  %87 = load %struct.list_head*, %struct.list_head** %86, align 8
  store %struct.list_head* %87, %struct.list_head** %9, align 8
  %88 = load %struct.list_head*, %struct.list_head** %9, align 8
  %89 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %6, align 8
  %90 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %89, i32 0, i32 0
  %91 = icmp eq %struct.list_head* %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %96

93:                                               ; preds = %84
  br label %95

94:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %96

95:                                               ; preds = %93
  br label %54

96:                                               ; preds = %94, %92, %76, %47
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(%struct.list_head*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @flush_commit_list(%struct.super_block*, %struct.reiserfs_journal_list*, i32) #1

declare dso_local i32 @journal_list_still_alive(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

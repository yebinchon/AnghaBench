; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_check_advise_trans_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_journal.c_check_advise_trans_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { i32, i32, i32 }

@REISERFS_STANDARD_BLKSIZE = common dso_local global i32 0, align 4
@JOURNAL_TRANS_MAX_DEFAULT = common dso_local global i32 0, align 4
@JOURNAL_TRANS_MIN_DEFAULT = common dso_local global i32 0, align 4
@JOURNAL_MIN_RATIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sh-462\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"bad transaction max size (%u). FSCK?\00", align 1
@JOURNAL_MAX_BATCH_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"sh-463\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"bad transaction max batch (%u). FSCK?\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sh-464\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"bad blocksize (%u)\00", align 1
@JOURNAL_MAX_COMMIT_AGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.reiserfs_journal*)* @check_advise_trans_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_advise_trans_params(%struct.super_block* %0, %struct.reiserfs_journal* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.reiserfs_journal*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.reiserfs_journal* %1, %struct.reiserfs_journal** %5, align 8
  %7 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %8 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %73

11:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @REISERFS_STANDARD_BLKSIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load i32, i32* @REISERFS_STANDARD_BLKSIZE, align 4
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %18, %21
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %17, %11
  %24 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %25 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @JOURNAL_TRANS_MAX_DEFAULT, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %27, %28
  %30 = icmp sgt i32 %26, %29
  br i1 %30, label %48, label %31

31:                                               ; preds = %23
  %32 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %33 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @JOURNAL_TRANS_MIN_DEFAULT, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sdiv i32 %35, %36
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %31
  %40 = load %struct.super_block*, %struct.super_block** %4, align 8
  %41 = call i32 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block* %40)
  %42 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %43 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %41, %44
  %46 = load i32, i32* @JOURNAL_MIN_RATIO, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %39, %31, %23
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  %50 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %51 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @reiserfs_warning(%struct.super_block* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  store i32 1, i32* %3, align 4
  br label %96

54:                                               ; preds = %39
  %55 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %56 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %59 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @JOURNAL_MAX_BATCH_DEFAULT, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load i32, i32* @JOURNAL_TRANS_MAX_DEFAULT, align 4
  %64 = sdiv i32 %62, %63
  %65 = icmp ne i32 %57, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %54
  %67 = load %struct.super_block*, %struct.super_block** %4, align 8
  %68 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %69 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @reiserfs_warning(%struct.super_block* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  store i32 1, i32* %3, align 4
  br label %96

72:                                               ; preds = %54
  br label %95

73:                                               ; preds = %2
  %74 = load %struct.super_block*, %struct.super_block** %4, align 8
  %75 = getelementptr inbounds %struct.super_block, %struct.super_block* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @REISERFS_STANDARD_BLKSIZE, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %73
  %80 = load %struct.super_block*, %struct.super_block** %4, align 8
  %81 = load %struct.super_block*, %struct.super_block** %4, align 8
  %82 = getelementptr inbounds %struct.super_block, %struct.super_block* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @reiserfs_warning(%struct.super_block* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %83)
  store i32 1, i32* %3, align 4
  br label %96

85:                                               ; preds = %73
  %86 = load i32, i32* @JOURNAL_TRANS_MAX_DEFAULT, align 4
  %87 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %88 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @JOURNAL_MAX_BATCH_DEFAULT, align 4
  %90 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %91 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @JOURNAL_MAX_COMMIT_AGE, align 4
  %93 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %94 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %85, %72
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %79, %66, %48
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @SB_ONDISK_JOURNAL_SIZE(%struct.super_block*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

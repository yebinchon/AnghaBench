; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_start_trans.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_start_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i32* }

@EROFS = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_FREE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Detected aborted journal\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ocfs2_super*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %9 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %14 = icmp ne %struct.ocfs2_super* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %17 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %15, %2
  %24 = phi i1 [ true, %2 ], [ %22, %15 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %28 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @EROFS, align 4
  %32 = sub nsw i32 0, %31
  %33 = call i32* @ERR_PTR(i32 %32)
  store i32* %33, i32** %3, align 8
  br label %100

34:                                               ; preds = %23
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %36 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @OCFS2_JOURNAL_FREE, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = icmp sle i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = call i64 (...) @journal_current_handle()
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %34
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32* @jbd2_journal_start(i32* %51, i32 %52)
  store i32* %53, i32** %3, align 8
  br label %100

54:                                               ; preds = %34
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %56 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = call i32 @down_read(i32* %58)
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32* @jbd2_journal_start(i32* %60, i32 %61)
  store i32* %62, i32** %7, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i64 @IS_ERR(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %54
  %67 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %68 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = call i32 @up_read(i32* %70)
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @PTR_ERR(i32* %72)
  %74 = call i32 @mlog_errno(i32 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = call i64 @is_journal_aborted(i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %66
  %79 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %80 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ocfs2_abort(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @EROFS, align 4
  %84 = sub nsw i32 0, %83
  %85 = call i32* @ERR_PTR(i32 %84)
  store i32* %85, i32** %7, align 8
  br label %86

86:                                               ; preds = %78, %66
  br label %98

87:                                               ; preds = %54
  %88 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %89 = call i32 @ocfs2_mount_local(%struct.ocfs2_super* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %87
  %92 = load %struct.ocfs2_super*, %struct.ocfs2_super** %4, align 8
  %93 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = call i32 @atomic_inc(i32* %95)
  br label %97

97:                                               ; preds = %91, %87
  br label %98

98:                                               ; preds = %97, %86
  %99 = load i32*, i32** %7, align 8
  store i32* %99, i32** %3, align 8
  br label %100

100:                                              ; preds = %98, %50, %30
  %101 = load i32*, i32** %3, align 8
  ret i32* %101
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i32* @ERR_PTR(i32) #1

declare dso_local i64 @journal_current_handle(...) #1

declare dso_local i32* @jbd2_journal_start(i32*, i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @is_journal_aborted(i32*) #1

declare dso_local i32 @ocfs2_abort(i32, i8*) #1

declare dso_local i32 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

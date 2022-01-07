; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_journal_load.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_journal_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_journal = type { i32, %struct.ocfs2_super* }
%struct.ocfs2_super = type { i32*, i32, i32 }

@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to load journal!\0A\00", align 1
@ocfs2_commit_thread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"ocfs2cmt\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"unable to launch ocfs2commit thread, error=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_journal_load(%struct.ocfs2_journal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ocfs2_journal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocfs2_super*, align 8
  store %struct.ocfs2_journal* %0, %struct.ocfs2_journal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = call i32 (...) @mlog_entry_void()
  %10 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %4, align 8
  %11 = icmp ne %struct.ocfs2_journal* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %4, align 8
  %16 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %15, i32 0, i32 1
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %16, align 8
  store %struct.ocfs2_super* %17, %struct.ocfs2_super** %8, align 8
  %18 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %4, align 8
  %19 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @jbd2_journal_load(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ML_ERROR, align 4
  %26 = call i32 (i32, i8*, ...) @mlog(i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %75

27:                                               ; preds = %3
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %29 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %4, align 8
  %32 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %35 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @ocfs2_clear_journal_error(i32 %30, i32 %33, i32 %36)
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ocfs2_journal_toggle_dirty(%struct.ocfs2_super* %38, i32 1, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %27
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %75

46:                                               ; preds = %27
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %71, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @ocfs2_commit_thread, align 4
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %52 = call i32* @kthread_run(i32 %50, %struct.ocfs2_super* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %54 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %56 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i64 @IS_ERR(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %49
  %61 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %62 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @PTR_ERR(i32* %63)
  store i32 %64, i32* %7, align 4
  %65 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %66 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %65, i32 0, i32 0
  store i32* null, i32** %66, align 8
  %67 = load i32, i32* @ML_ERROR, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i32, i8*, ...) @mlog(i32 %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %75

70:                                               ; preds = %49
  br label %74

71:                                               ; preds = %46
  %72 = load %struct.ocfs2_super*, %struct.ocfs2_super** %8, align 8
  %73 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %72, i32 0, i32 0
  store i32* null, i32** %73, align 8
  br label %74

74:                                               ; preds = %71, %70
  br label %75

75:                                               ; preds = %74, %60, %43, %24
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @mlog_exit(i32 %76)
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @jbd2_journal_load(i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @ocfs2_clear_journal_error(i32, i32, i32) #1

declare dso_local i32 @ocfs2_journal_toggle_dirty(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @kthread_run(i32, %struct.ocfs2_super*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

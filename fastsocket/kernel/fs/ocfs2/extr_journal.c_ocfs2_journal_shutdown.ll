; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_journal_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_journal_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.ocfs2_journal*, i32* }
%struct.ocfs2_journal = type { i64, i32*, i32*, i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_JOURNAL_LOADED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"Shutting down journal: must wait on %d running transactions!\0A\00", align 1
@OCFS2_JOURNAL_IN_SHUTDOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Waiting for ocfs2commit to exit....\0A\00", align 1
@OCFS2_JOURNAL_FREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_journal_shutdown(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.ocfs2_journal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store %struct.ocfs2_journal* null, %struct.ocfs2_journal** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.inode* null, %struct.inode** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = call i32 (...) @mlog_entry_void()
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %9 = icmp ne %struct.ocfs2_super* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %14 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %13, i32 0, i32 0
  %15 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %14, align 8
  store %struct.ocfs2_journal* %15, %struct.ocfs2_journal** %3, align 8
  %16 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %17 = icmp ne %struct.ocfs2_journal* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %128

19:                                               ; preds = %1
  %20 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %21 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %20, i32 0, i32 4
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %5, align 8
  %23 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %24 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OCFS2_JOURNAL_LOADED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %128

29:                                               ; preds = %19
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = call i32 @igrab(%struct.inode* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = call i32 (...) @BUG()
  br label %35

35:                                               ; preds = %33, %29
  %36 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %37 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %36, i32 0, i32 0
  %38 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %37, align 8
  %39 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %38, i32 0, i32 3
  %40 = call i32 @atomic_read(i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %35
  %47 = load i64, i64* @OCFS2_JOURNAL_IN_SHUTDOWN, align 8
  %48 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %49 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %51 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %57 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @kthread_stop(i32* %58)
  %60 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %61 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %60, i32 0, i32 1
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %54, %46
  %63 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %64 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %63, i32 0, i32 0
  %65 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %64, align 8
  %66 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %65, i32 0, i32 3
  %67 = call i32 @atomic_read(i32* %66)
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %72 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %62
  %75 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %76 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @jbd2_journal_lock_updates(i32* %77)
  %79 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %80 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @jbd2_journal_flush(i32* %81)
  store i32 %82, i32* %4, align 4
  %83 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %84 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @jbd2_journal_unlock_updates(i32* %85)
  %87 = load i32, i32* %4, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %92

92:                                               ; preds = %89, %74
  br label %93

93:                                               ; preds = %92, %62
  %94 = load i32, i32* %4, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %93
  %97 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %98 = call i32 @ocfs2_journal_toggle_dirty(%struct.ocfs2_super* %97, i32 0, i32 0)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @mlog_errno(i32 %102)
  br label %104

104:                                              ; preds = %101, %96
  br label %105

105:                                              ; preds = %104, %93
  %106 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %107 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @jbd2_journal_destroy(i32* %108)
  %110 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %111 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %110, i32 0, i32 2
  store i32* null, i32** %111, align 8
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  %113 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %112)
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %114, align 4
  %117 = load %struct.inode*, %struct.inode** %5, align 8
  %118 = call i32 @ocfs2_inode_unlock(%struct.inode* %117, i32 1)
  %119 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %120 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @brelse(i32* %121)
  %123 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %124 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %123, i32 0, i32 1
  store i32* null, i32** %124, align 8
  %125 = load i64, i64* @OCFS2_JOURNAL_FREE, align 8
  %126 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %127 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %126, i32 0, i32 0
  store i64 %125, i64* %127, align 8
  br label %128

128:                                              ; preds = %105, %28, %18
  %129 = load %struct.inode*, %struct.inode** %5, align 8
  %130 = icmp ne %struct.inode* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.inode*, %struct.inode** %5, align 8
  %133 = call i32 @iput(%struct.inode* %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @jbd2_journal_lock_updates(i32*) #1

declare dso_local i32 @jbd2_journal_flush(i32*) #1

declare dso_local i32 @jbd2_journal_unlock_updates(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_toggle_dirty(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @jbd2_journal_destroy(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

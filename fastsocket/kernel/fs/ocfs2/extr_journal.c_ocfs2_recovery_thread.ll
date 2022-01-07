; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_recovery_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_journal.c_ocfs2_recovery_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, i32*, i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"(node_num=%d, osb->node_num = %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"node %d already in recovery map.\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"starting recovery thread...\0A\00", align 1
@__ocfs2_recovery_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ocfs2rec\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_recovery_thread(%struct.ocfs2_super* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %7 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @mlog_entry(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %5, i32 %8)
  %10 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %11 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @ocfs2_recovery_map_set(%struct.ocfs2_super* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = call i32 (i32, i8*, ...) @mlog(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %29 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %54

33:                                               ; preds = %26
  %34 = load i32, i32* @__ocfs2_recovery_thread, align 4
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %36 = call i32* @kthread_run(i32 %34, %struct.ocfs2_super* %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %38 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %40 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @IS_ERR(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %33
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %46 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @PTR_ERR(i32* %47)
  %49 = trunc i64 %48 to i32
  %50 = call i32 @mlog_errno(i32 %49)
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %52 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %51, i32 0, i32 2
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %44, %33
  br label %54

54:                                               ; preds = %53, %32, %17
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %56 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %59 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %58, i32 0, i32 0
  %60 = call i32 @wake_up(i32* %59)
  %61 = call i32 (...) @mlog_exit_void()
  ret void
}

declare dso_local i32 @mlog_entry(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ocfs2_recovery_map_set(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @mlog(i32, i8*, ...) #1

declare dso_local i32* @kthread_run(i32, %struct.ocfs2_super*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @PTR_ERR(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

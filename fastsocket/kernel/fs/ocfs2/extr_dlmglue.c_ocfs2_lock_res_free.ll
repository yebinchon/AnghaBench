; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_lock_res_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_lock_res_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_lock_res = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@OCFS2_LOCK_INITIALIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Lockres %s is on the blocked list\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Lockres %s has mask waiters pending\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Lockres %s is locked\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Lockres %s has %u ro holders\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Lockres %s has %u ex holders\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_lock_res_free(%struct.ocfs2_lock_res* %0) #0 {
  %2 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_lock_res* %0, %struct.ocfs2_lock_res** %2, align 8
  %3 = call i32 (...) @mlog_entry_void()
  %4 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %5 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @OCFS2_LOCK_INITIALIZED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %67

11:                                               ; preds = %1
  %12 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %13 = call i32 @ocfs2_remove_lockres_tracking(%struct.ocfs2_lock_res* %12)
  %14 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %15 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %14, i32 0, i32 7
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %21 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, i32, ...) @mlog_bug_on_msg(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %25 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %24, i32 0, i32 6
  %26 = call i32 @list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %31 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, i32, ...) @mlog_bug_on_msg(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %35 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %34, i32 0, i32 5
  %36 = call i32 @spin_is_locked(i32* %35)
  %37 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %38 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, i32, ...) @mlog_bug_on_msg(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %42 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %45 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %48 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, i32, ...) @mlog_bug_on_msg(i32 %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %52 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %55 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %58 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, i32, ...) @mlog_bug_on_msg(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %62 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %61, i32 0, i32 1
  %63 = call i32 @memset(i32* %62, i32 0, i32 4)
  %64 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %2, align 8
  %65 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %64, i32 0, i32 0
  store i32 0, i32* %65, align 4
  %66 = call i32 (...) @mlog_exit_void()
  br label %67

67:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_remove_lockres_tracking(%struct.ocfs2_lock_res*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, i32, ...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_is_locked(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

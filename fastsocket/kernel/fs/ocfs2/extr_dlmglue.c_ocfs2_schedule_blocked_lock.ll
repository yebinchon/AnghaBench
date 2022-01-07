; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_schedule_blocked_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_schedule_blocked_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, i32, i32 }
%struct.ocfs2_lock_res = type { i32, i32, i32, i32 }

@OCFS2_LOCK_FREEING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Lockres %s won't be scheduled: flags 0x%lx\0A\00", align 1
@OCFS2_LOCK_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, %struct.ocfs2_lock_res*)* @ocfs2_schedule_blocked_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_schedule_blocked_lock(%struct.ocfs2_super* %0, %struct.ocfs2_lock_res* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_lock_res*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_lock_res* %1, %struct.ocfs2_lock_res** %4, align 8
  %5 = call i32 (...) @mlog_entry_void()
  %6 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %7 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %6, i32 0, i32 3
  %8 = call i32 @assert_spin_locked(i32* %7)
  %9 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %10 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @OCFS2_LOCK_FREEING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %17 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %20 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21)
  br label %49

23:                                               ; preds = %2
  %24 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %25 = load i32, i32* @OCFS2_LOCK_QUEUED, align 4
  %26 = call i32 @lockres_or_flags(%struct.ocfs2_lock_res* %24, i32 %25)
  %27 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %28 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %31 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %30, i32 0, i32 1
  %32 = call i64 @list_empty(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %23
  %35 = load %struct.ocfs2_lock_res*, %struct.ocfs2_lock_res** %4, align 8
  %36 = getelementptr inbounds %struct.ocfs2_lock_res, %struct.ocfs2_lock_res* %35, i32 0, i32 1
  %37 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %38 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %37, i32 0, i32 2
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %41 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %34, %23
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %46 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = call i32 (...) @mlog_exit_void()
  br label %49

49:                                               ; preds = %44, %15
  ret void
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @lockres_or_flags(%struct.ocfs2_lock_res*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mlog_exit_void(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

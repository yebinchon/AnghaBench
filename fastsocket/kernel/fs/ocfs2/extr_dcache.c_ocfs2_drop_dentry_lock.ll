; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dcache.c_ocfs2_drop_dentry_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dcache.c_ocfs2_drop_dentry_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.ocfs2_dentry_lock*, i32 }
%struct.ocfs2_dentry_lock = type { %struct.ocfs2_dentry_lock*, i32 }

@dentry_list_lock = common dso_local global i32 0, align 4
@OCFS2_OSB_DROP_DENTRY_LOCK_IMMED = common dso_local global i32 0, align 4
@ocfs2_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_super*, %struct.ocfs2_dentry_lock*)* @ocfs2_drop_dentry_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_drop_dentry_lock(%struct.ocfs2_super* %0, %struct.ocfs2_dentry_lock* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_dentry_lock*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_dentry_lock* %1, %struct.ocfs2_dentry_lock** %4, align 8
  %5 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %6 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %4, align 8
  %7 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %6, i32 0, i32 1
  %8 = call i32 @ocfs2_simple_drop_lockres(%struct.ocfs2_super* %5, i32* %7)
  %9 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %4, align 8
  %10 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %9, i32 0, i32 1
  %11 = call i32 @ocfs2_lock_res_free(i32* %10)
  %12 = call i32 @spin_lock(i32* @dentry_list_lock)
  %13 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %14 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %13, i32 0, i32 0
  %15 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %14, align 8
  %16 = icmp ne %struct.ocfs2_dentry_lock* %15, null
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %19 = load i32, i32* @OCFS2_OSB_DROP_DENTRY_LOCK_IMMED, align 4
  %20 = call i32 @ocfs2_test_osb_flag(%struct.ocfs2_super* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ocfs2_wq, align 4
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %25 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %24, i32 0, i32 1
  %26 = call i32 @queue_work(i32 %23, i32* %25)
  br label %27

27:                                               ; preds = %22, %17, %2
  %28 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %29 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %28, i32 0, i32 0
  %30 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %29, align 8
  %31 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %4, align 8
  %32 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %31, i32 0, i32 0
  store %struct.ocfs2_dentry_lock* %30, %struct.ocfs2_dentry_lock** %32, align 8
  %33 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %4, align 8
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %35 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %34, i32 0, i32 0
  store %struct.ocfs2_dentry_lock* %33, %struct.ocfs2_dentry_lock** %35, align 8
  %36 = call i32 @spin_unlock(i32* @dentry_list_lock)
  ret void
}

declare dso_local i32 @ocfs2_simple_drop_lockres(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_lock_res_free(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ocfs2_test_osb_flag(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

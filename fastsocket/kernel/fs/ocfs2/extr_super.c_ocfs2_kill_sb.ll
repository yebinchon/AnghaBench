; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_kill_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_kill_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ocfs2_super = type { i32, i32 }

@VOLUME_DISABLED = common dso_local global i64 0, align 8
@dentry_list_lock = common dso_local global i32 0, align 4
@OCFS2_OSB_DROP_DENTRY_LOCK_IMMED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ocfs2_kill_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_kill_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ocfs2_super*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.ocfs2_super* @OCFS2_SB(%struct.super_block* %4)
  store %struct.ocfs2_super* %5, %struct.ocfs2_super** %3, align 8
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %7 = icmp ne %struct.ocfs2_super* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %10 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %9, i32 0, i32 1
  %11 = call i64 @atomic_read(i32* %10)
  %12 = load i64, i64* @VOLUME_DISABLED, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %1
  br label %24

15:                                               ; preds = %8
  %16 = call i32 @spin_lock(i32* @dentry_list_lock)
  %17 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %18 = load i32, i32* @OCFS2_OSB_DROP_DENTRY_LOCK_IMMED, align 4
  %19 = call i32 @ocfs2_set_osb_flag(%struct.ocfs2_super* %17, i32 %18)
  %20 = call i32 @spin_unlock(i32* @dentry_list_lock)
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %22 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %21, i32 0, i32 0
  %23 = call i32 @cancel_work_sync(i32* %22)
  br label %24

24:                                               ; preds = %15, %14
  %25 = load %struct.super_block*, %struct.super_block** %2, align 8
  %26 = call i32 @kill_block_super(%struct.super_block* %25)
  ret void
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.super_block*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ocfs2_set_osb_flag(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @kill_block_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

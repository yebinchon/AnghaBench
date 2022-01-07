; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_set_default_options.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_super.c_nilfs_set_default_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_sb_info = type { i32 }
%struct.nilfs_super_block = type { i32 }

@NILFS_MOUNT_ERRORS_CONT = common dso_local global i32 0, align 4
@NILFS_MOUNT_BARRIER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_sb_info*, %struct.nilfs_super_block*)* @nilfs_set_default_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_set_default_options(%struct.nilfs_sb_info* %0, %struct.nilfs_super_block* %1) #0 {
  %3 = alloca %struct.nilfs_sb_info*, align 8
  %4 = alloca %struct.nilfs_super_block*, align 8
  store %struct.nilfs_sb_info* %0, %struct.nilfs_sb_info** %3, align 8
  store %struct.nilfs_super_block* %1, %struct.nilfs_super_block** %4, align 8
  %5 = load i32, i32* @NILFS_MOUNT_ERRORS_CONT, align 4
  %6 = load i32, i32* @NILFS_MOUNT_BARRIER, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %3, align 8
  %9 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

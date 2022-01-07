; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/freevxfs/extr_vxfs_super.c_vxfs_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/freevxfs/extr_vxfs_super.c_vxfs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.vxfs_sb_info = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @vxfs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxfs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.vxfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.vxfs_sb_info* @VXFS_SBI(%struct.super_block* %4)
  store %struct.vxfs_sb_info* %5, %struct.vxfs_sb_info** %3, align 8
  %6 = call i32 (...) @lock_kernel()
  %7 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %3, align 8
  %8 = getelementptr inbounds %struct.vxfs_sb_info, %struct.vxfs_sb_info* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @vxfs_put_fake_inode(i32 %9)
  %11 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.vxfs_sb_info, %struct.vxfs_sb_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @vxfs_put_fake_inode(i32 %13)
  %15 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %3, align 8
  %16 = getelementptr inbounds %struct.vxfs_sb_info, %struct.vxfs_sb_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @vxfs_put_fake_inode(i32 %17)
  %19 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.vxfs_sb_info, %struct.vxfs_sb_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @brelse(i32 %21)
  %23 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %3, align 8
  %24 = call i32 @kfree(%struct.vxfs_sb_info* %23)
  %25 = call i32 (...) @unlock_kernel()
  ret void
}

declare dso_local %struct.vxfs_sb_info* @VXFS_SBI(%struct.super_block*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @vxfs_put_fake_inode(i32) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @kfree(%struct.vxfs_sb_info*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

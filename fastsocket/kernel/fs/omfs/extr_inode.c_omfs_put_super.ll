; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_inode.c_omfs_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_inode.c_omfs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32* }
%struct.omfs_sb_info = type { %struct.omfs_sb_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @omfs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omfs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.omfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.omfs_sb_info* @OMFS_SB(%struct.super_block* %4)
  store %struct.omfs_sb_info* %5, %struct.omfs_sb_info** %3, align 8
  %6 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %3, align 8
  %7 = getelementptr inbounds %struct.omfs_sb_info, %struct.omfs_sb_info* %6, i32 0, i32 0
  %8 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %7, align 8
  %9 = call i32 @kfree(%struct.omfs_sb_info* %8)
  %10 = load %struct.omfs_sb_info*, %struct.omfs_sb_info** %3, align 8
  %11 = call i32 @kfree(%struct.omfs_sb_info* %10)
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = getelementptr inbounds %struct.super_block, %struct.super_block* %12, i32 0, i32 0
  store i32* null, i32** %13, align 8
  ret void
}

declare dso_local %struct.omfs_sb_info* @OMFS_SB(%struct.super_block*) #1

declare dso_local i32 @kfree(%struct.omfs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

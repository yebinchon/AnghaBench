; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_super.c_affs_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_super.c_affs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32* }
%struct.affs_sb_info = type { i32, %struct.affs_sb_info* }

@.str = private unnamed_addr constant [19 x i8] c"AFFS: put_super()\0A\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @affs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @affs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.affs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.affs_sb_info* @AFFS_SB(%struct.super_block* %4)
  store %struct.affs_sb_info* %5, %struct.affs_sb_info** %3, align 8
  %6 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @lock_kernel()
  %8 = load %struct.super_block*, %struct.super_block** %2, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MS_RDONLY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.super_block*, %struct.super_block** %2, align 8
  %16 = call i32 @affs_commit_super(%struct.super_block* %15, i32 1)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.affs_sb_info*, %struct.affs_sb_info** %3, align 8
  %19 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %18, i32 0, i32 1
  %20 = load %struct.affs_sb_info*, %struct.affs_sb_info** %19, align 8
  %21 = call i32 @kfree(%struct.affs_sb_info* %20)
  %22 = load %struct.super_block*, %struct.super_block** %2, align 8
  %23 = call i32 @affs_free_bitmap(%struct.super_block* %22)
  %24 = load %struct.affs_sb_info*, %struct.affs_sb_info** %3, align 8
  %25 = getelementptr inbounds %struct.affs_sb_info, %struct.affs_sb_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @affs_brelse(i32 %26)
  %28 = load %struct.affs_sb_info*, %struct.affs_sb_info** %3, align 8
  %29 = call i32 @kfree(%struct.affs_sb_info* %28)
  %30 = load %struct.super_block*, %struct.super_block** %2, align 8
  %31 = getelementptr inbounds %struct.super_block, %struct.super_block* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  %32 = call i32 (...) @unlock_kernel()
  ret void
}

declare dso_local %struct.affs_sb_info* @AFFS_SB(%struct.super_block*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @affs_commit_super(%struct.super_block*, i32) #1

declare dso_local i32 @kfree(%struct.affs_sb_info*) #1

declare dso_local i32 @affs_free_bitmap(%struct.super_block*) #1

declare dso_local i32 @affs_brelse(i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

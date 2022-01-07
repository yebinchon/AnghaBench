; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_ufs_get_fs_npsect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_ufs_get_fs_npsect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_super_block_first = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ufs_super_block_third = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i32 }

@UFS_ST_MASK = common dso_local global i32 0, align 4
@UFS_ST_SUNx86 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.ufs_super_block_first*, %struct.ufs_super_block_third*)* @ufs_get_fs_npsect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_get_fs_npsect(%struct.super_block* %0, %struct.ufs_super_block_first* %1, %struct.ufs_super_block_third* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ufs_super_block_first*, align 8
  %7 = alloca %struct.ufs_super_block_third*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ufs_super_block_first* %1, %struct.ufs_super_block_first** %6, align 8
  store %struct.ufs_super_block_third* %2, %struct.ufs_super_block_third** %7, align 8
  %8 = load %struct.super_block*, %struct.super_block** %5, align 8
  %9 = call %struct.TYPE_10__* @UFS_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @UFS_ST_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @UFS_ST_SUNx86, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load %struct.super_block*, %struct.super_block** %5, align 8
  %18 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %19 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @fs32_to_cpu(%struct.super_block* %17, i32 %22)
  store i32 %23, i32* %4, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %6, align 8
  %27 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @fs32_to_cpu(%struct.super_block* %25, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %16
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_10__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @fs32_to_cpu(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

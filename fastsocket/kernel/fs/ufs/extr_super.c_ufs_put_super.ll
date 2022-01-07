; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_super.c_ufs_put_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_super.c_ufs_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32*, i64 }
%struct.ufs_sb_info = type { %struct.ufs_sb_info* }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@MS_RDONLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"EXIT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ufs_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ufs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.ufs_sb_info* @UFS_SB(%struct.super_block* %4)
  store %struct.ufs_sb_info* %5, %struct.ufs_sb_info** %3, align 8
  %6 = call i32 @UFSD(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = call i32 @ufs_write_super(%struct.super_block* %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load %struct.super_block*, %struct.super_block** %2, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MS_RDONLY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load %struct.super_block*, %struct.super_block** %2, align 8
  %23 = call i32 @ufs_put_super_internal(%struct.super_block* %22)
  br label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %26 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %25, i32 0, i32 0
  %27 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %26, align 8
  %28 = call i32 @ubh_brelse_uspi(%struct.ufs_sb_info* %27)
  %29 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %30 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %29, i32 0, i32 0
  %31 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %30, align 8
  %32 = call i32 @kfree(%struct.ufs_sb_info* %31)
  %33 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %3, align 8
  %34 = call i32 @kfree(%struct.ufs_sb_info* %33)
  %35 = load %struct.super_block*, %struct.super_block** %2, align 8
  %36 = getelementptr inbounds %struct.super_block, %struct.super_block* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = call i32 @UFSD(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ufs_sb_info* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @UFSD(i8*) #1

declare dso_local i32 @ufs_write_super(%struct.super_block*) #1

declare dso_local i32 @ufs_put_super_internal(%struct.super_block*) #1

declare dso_local i32 @ubh_brelse_uspi(%struct.ufs_sb_info*) #1

declare dso_local i32 @kfree(%struct.ufs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_ufs_set_fs_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_ufs_set_fs_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_super_block_first = type { %struct.TYPE_11__, %struct.TYPE_15__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8* }
%struct.ufs_super_block_third = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_16__ = type { i32 }

@UFS_ST_MASK = common dso_local global i32 0, align 4
@UFS_42POSTBLFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.ufs_super_block_first*, %struct.ufs_super_block_third*, i32)* @ufs_set_fs_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_set_fs_state(%struct.super_block* %0, %struct.ufs_super_block_first* %1, %struct.ufs_super_block_third* %2, i32 %3) #0 {
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ufs_super_block_first*, align 8
  %7 = alloca %struct.ufs_super_block_third*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.ufs_super_block_first* %1, %struct.ufs_super_block_first** %6, align 8
  store %struct.ufs_super_block_third* %2, %struct.ufs_super_block_third** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = call %struct.TYPE_16__* @UFS_SB(%struct.super_block* %9)
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @UFS_ST_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %56 [
    i32 129, label %15
    i32 130, label %32
    i32 128, label %40
    i32 131, label %48
  ]

15:                                               ; preds = %4
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %18 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @fs32_to_cpu(%struct.super_block* %16, i32 %19)
  %21 = load i32, i32* @UFS_42POSTBLFMT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %15
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i8* @cpu_to_fs32(%struct.super_block* %24, i32 %25)
  %27 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %6, align 8
  %28 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  store i8* %26, i8** %30, align 8
  br label %56

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %4, %31
  %33 = load %struct.super_block*, %struct.super_block** %5, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i8* @cpu_to_fs32(%struct.super_block* %33, i32 %34)
  %36 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %37 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i8* %35, i8** %39, align 8
  br label %56

40:                                               ; preds = %4
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i8* @cpu_to_fs32(%struct.super_block* %41, i32 %42)
  %44 = load %struct.ufs_super_block_first*, %struct.ufs_super_block_first** %6, align 8
  %45 = getelementptr inbounds %struct.ufs_super_block_first, %struct.ufs_super_block_first* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i8* %43, i8** %47, align 8
  br label %56

48:                                               ; preds = %4
  %49 = load %struct.super_block*, %struct.super_block** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i8* @cpu_to_fs32(%struct.super_block* %49, i32 %50)
  %52 = load %struct.ufs_super_block_third*, %struct.ufs_super_block_third** %7, align 8
  %53 = getelementptr inbounds %struct.ufs_super_block_third, %struct.ufs_super_block_third* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i8* %51, i8** %55, align 8
  br label %56

56:                                               ; preds = %4, %48, %40, %32, %23
  ret void
}

declare dso_local %struct.TYPE_16__* @UFS_SB(%struct.super_block*) #1

declare dso_local i32 @fs32_to_cpu(%struct.super_block*, i32) #1

declare dso_local i8* @cpu_to_fs32(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

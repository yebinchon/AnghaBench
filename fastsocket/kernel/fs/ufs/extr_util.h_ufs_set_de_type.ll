; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_ufs_set_de_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ufs/extr_util.h_ufs_set_de_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ufs_dir_entry = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@UFS_DE_MASK = common dso_local global i32 0, align 4
@UFS_DE_44BSD = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@DT_SOCK = common dso_local global i32 0, align 4
@DT_LNK = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@DT_BLK = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@DT_CHR = common dso_local global i32 0, align 4
@DT_FIFO = common dso_local global i32 0, align 4
@DT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.ufs_dir_entry*, i32)* @ufs_set_de_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ufs_set_de_type(%struct.super_block* %0, %struct.ufs_dir_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.ufs_dir_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.ufs_dir_entry* %1, %struct.ufs_dir_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = call %struct.TYPE_6__* @UFS_SB(%struct.super_block* %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @UFS_DE_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @UFS_DE_44BSD, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %68

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @S_IFMT, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %62 [
    i32 128, label %20
    i32 130, label %26
    i32 129, label %32
    i32 134, label %38
    i32 132, label %44
    i32 133, label %50
    i32 131, label %56
  ]

20:                                               ; preds = %16
  %21 = load i32, i32* @DT_SOCK, align 4
  %22 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %5, align 8
  %23 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %21, i32* %25, align 4
  br label %68

26:                                               ; preds = %16
  %27 = load i32, i32* @DT_LNK, align 4
  %28 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %5, align 8
  %29 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  br label %68

32:                                               ; preds = %16
  %33 = load i32, i32* @DT_REG, align 4
  %34 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %5, align 8
  %35 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  br label %68

38:                                               ; preds = %16
  %39 = load i32, i32* @DT_BLK, align 4
  %40 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %5, align 8
  %41 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  br label %68

44:                                               ; preds = %16
  %45 = load i32, i32* @DT_DIR, align 4
  %46 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %5, align 8
  %47 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 4
  br label %68

50:                                               ; preds = %16
  %51 = load i32, i32* @DT_CHR, align 4
  %52 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %5, align 8
  %53 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 4
  br label %68

56:                                               ; preds = %16
  %57 = load i32, i32* @DT_FIFO, align 4
  %58 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %5, align 8
  %59 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  br label %68

62:                                               ; preds = %16
  %63 = load i32, i32* @DT_UNKNOWN, align 4
  %64 = load %struct.ufs_dir_entry*, %struct.ufs_dir_entry** %5, align 8
  %65 = getelementptr inbounds %struct.ufs_dir_entry, %struct.ufs_dir_entry* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  br label %68

68:                                               ; preds = %15, %62, %56, %50, %44, %38, %32, %26, %20
  ret void
}

declare dso_local %struct.TYPE_6__* @UFS_SB(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_ialloc.c_udf_free_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/udf/extr_ialloc.c_udf_free_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.udf_sb_info = type { i32, i64 }
%struct.logicalVolIntegrityDescImpUse = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_free_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.udf_sb_info*, align 8
  %5 = alloca %struct.logicalVolIntegrityDescImpUse*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 1
  %8 = load %struct.super_block*, %struct.super_block** %7, align 8
  store %struct.super_block* %8, %struct.super_block** %3, align 8
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %9)
  store %struct.udf_sb_info* %10, %struct.udf_sb_info** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = call i32 @vfs_dq_free_inode(%struct.inode* %11)
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = call i32 @vfs_dq_drop(%struct.inode* %13)
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = call i32 @clear_inode(%struct.inode* %15)
  %17 = load %struct.udf_sb_info*, %struct.udf_sb_info** %4, align 8
  %18 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.udf_sb_info*, %struct.udf_sb_info** %4, align 8
  %21 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %1
  %25 = load %struct.udf_sb_info*, %struct.udf_sb_info** %4, align 8
  %26 = call %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.udf_sb_info* %25)
  store %struct.logicalVolIntegrityDescImpUse* %26, %struct.logicalVolIntegrityDescImpUse** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %2, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @S_ISDIR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %5, align 8
  %34 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %33, i32 0, i32 1
  %35 = call i32 @le32_add_cpu(i32* %34, i32 -1)
  br label %40

36:                                               ; preds = %24
  %37 = load %struct.logicalVolIntegrityDescImpUse*, %struct.logicalVolIntegrityDescImpUse** %5, align 8
  %38 = getelementptr inbounds %struct.logicalVolIntegrityDescImpUse, %struct.logicalVolIntegrityDescImpUse* %37, i32 0, i32 0
  %39 = call i32 @le32_add_cpu(i32* %38, i32 -1)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load %struct.super_block*, %struct.super_block** %3, align 8
  %42 = call i32 @udf_updated_lvid(%struct.super_block* %41)
  br label %43

43:                                               ; preds = %40, %1
  %44 = load %struct.udf_sb_info*, %struct.udf_sb_info** %4, align 8
  %45 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.super_block*, %struct.super_block** %3, align 8
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = call %struct.TYPE_2__* @UDF_I(%struct.inode* %48)
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @udf_free_blocks(%struct.super_block* %47, i32* null, i32* %50, i32 0, i32 1)
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @vfs_dq_free_inode(%struct.inode*) #1

declare dso_local i32 @vfs_dq_drop(%struct.inode*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.logicalVolIntegrityDescImpUse* @udf_sb_lvidiu(%struct.udf_sb_info*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @udf_updated_lvid(%struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @udf_free_blocks(%struct.super_block*, i32*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @UDF_I(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

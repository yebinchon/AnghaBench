; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.inode = type { i32, %struct.timespec, %struct.timespec, %struct.timespec, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.fat_slot_info = type { i32, i32, i32 }

@CURRENT_TIME_SEC = common dso_local global %struct.timespec zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @vfat_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.fat_slot_info, align 4
  %11 = alloca %struct.timespec, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 5
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %8, align 8
  %17 = load %struct.super_block*, %struct.super_block** %8, align 8
  %18 = call i32 @lock_super(%struct.super_block* %17)
  %19 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.timespec* @CURRENT_TIME_SEC to i8*), i64 4, i1 false)
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i32 @fat_alloc_new_dir(%struct.inode* %20, %struct.timespec* %11)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %12, align 4
  br label %94

26:                                               ; preds = %3
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 2
  %30 = load i32, i32* %13, align 4
  %31 = call i32 @vfat_add_entry(%struct.inode* %27, i32* %29, i32 1, i32 %30, %struct.timespec* %11, %struct.fat_slot_info* %10)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %90

35:                                               ; preds = %26
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = call i32 @inc_nlink(%struct.inode* %40)
  %42 = load %struct.super_block*, %struct.super_block** %8, align 8
  %43 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %10, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %10, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.inode* @fat_build_inode(%struct.super_block* %42, i32 %44, i32 %46)
  store %struct.inode* %47, %struct.inode** %9, align 8
  %48 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %10, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @brelse(i32 %49)
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = call i64 @IS_ERR(%struct.inode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %35
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = call i32 @PTR_ERR(%struct.inode* %55)
  store i32 %56, i32* %12, align 4
  br label %94

57:                                               ; preds = %35
  %58 = load %struct.inode*, %struct.inode** %9, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = getelementptr inbounds %struct.inode, %struct.inode* %62, i32 0, i32 0
  store i32 2, i32* %63, align 8
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 3
  %66 = load %struct.inode*, %struct.inode** %9, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 2
  %68 = load %struct.inode*, %struct.inode** %9, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = bitcast %struct.timespec* %69 to i8*
  %71 = bitcast %struct.timespec* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  %72 = bitcast %struct.timespec* %67 to i8*
  %73 = bitcast %struct.timespec* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 4 %73, i64 4, i1 false)
  %74 = bitcast %struct.timespec* %65 to i8*
  %75 = bitcast %struct.timespec* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %74, i8* align 8 %75, i64 4, i1 false)
  %76 = load %struct.dentry*, %struct.dentry** %6, align 8
  %77 = getelementptr inbounds %struct.dentry, %struct.dentry* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.dentry*, %struct.dentry** %6, align 8
  %84 = getelementptr inbounds %struct.dentry, %struct.dentry* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.dentry*, %struct.dentry** %6, align 8
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = call i32 @d_instantiate(%struct.dentry* %85, %struct.inode* %86)
  %88 = load %struct.super_block*, %struct.super_block** %8, align 8
  %89 = call i32 @unlock_super(%struct.super_block* %88)
  store i32 0, i32* %4, align 4
  br label %98

90:                                               ; preds = %34
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @fat_free_clusters(%struct.inode* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %54, %24
  %95 = load %struct.super_block*, %struct.super_block** %8, align 8
  %96 = call i32 @unlock_super(%struct.super_block* %95)
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %4, align 4
  br label %98

98:                                               ; preds = %94, %57
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @lock_super(%struct.super_block*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fat_alloc_new_dir(%struct.inode*, %struct.timespec*) #1

declare dso_local i32 @vfat_add_entry(%struct.inode*, i32*, i32, i32, %struct.timespec*, %struct.fat_slot_info*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local %struct.inode* @fat_build_inode(%struct.super_block*, i32, i32) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

declare dso_local i32 @fat_free_clusters(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.inode = type { %struct.timespec, %struct.timespec, %struct.timespec, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.nameidata = type { i32 }
%struct.fat_slot_info = type { i32, i32, i32 }

@CURRENT_TIME_SEC = common dso_local global %struct.timespec zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @vfat_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nameidata*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fat_slot_info, align 4
  %12 = alloca %struct.timespec, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nameidata* %3, %struct.nameidata** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 4
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  store %struct.super_block* %16, %struct.super_block** %9, align 8
  %17 = load %struct.super_block*, %struct.super_block** %9, align 8
  %18 = call i32 @lock_super(%struct.super_block* %17)
  %19 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast (%struct.timespec* @CURRENT_TIME_SEC to i8*), i64 4, i1 false)
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = load %struct.dentry*, %struct.dentry** %6, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 2
  %23 = call i32 @vfat_add_entry(%struct.inode* %20, i32* %22, i32 0, i32 0, %struct.timespec* %12, %struct.fat_slot_info* %11)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %76

27:                                               ; preds = %4
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.super_block*, %struct.super_block** %9, align 8
  %33 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.inode* @fat_build_inode(%struct.super_block* %32, i32 %34, i32 %36)
  store %struct.inode* %37, %struct.inode** %10, align 8
  %38 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @brelse(i32 %39)
  %41 = load %struct.inode*, %struct.inode** %10, align 8
  %42 = call i64 @IS_ERR(%struct.inode* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %27
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = call i32 @PTR_ERR(%struct.inode* %45)
  store i32 %46, i32* %13, align 4
  br label %76

47:                                               ; preds = %27
  %48 = load %struct.inode*, %struct.inode** %10, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  %54 = load %struct.inode*, %struct.inode** %10, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = bitcast %struct.timespec* %57 to i8*
  %59 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 4 %59, i64 4, i1 false)
  %60 = bitcast %struct.timespec* %55 to i8*
  %61 = bitcast %struct.timespec* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 8 %61, i64 4, i1 false)
  %62 = bitcast %struct.timespec* %53 to i8*
  %63 = bitcast %struct.timespec* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %62, i8* align 4 %63, i64 4, i1 false)
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dentry*, %struct.dentry** %6, align 8
  %72 = getelementptr inbounds %struct.dentry, %struct.dentry* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.dentry*, %struct.dentry** %6, align 8
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = call i32 @d_instantiate(%struct.dentry* %73, %struct.inode* %74)
  br label %76

76:                                               ; preds = %47, %44, %26
  %77 = load %struct.super_block*, %struct.super_block** %9, align 8
  %78 = call i32 @unlock_super(%struct.super_block* %77)
  %79 = load i32, i32* %13, align 4
  ret i32 %79
}

declare dso_local i32 @lock_super(%struct.super_block*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vfat_add_entry(%struct.inode*, i32*, i32, i32, %struct.timespec*, %struct.fat_slot_info*) #1

declare dso_local %struct.inode* @fat_build_inode(%struct.super_block*, i32, i32) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @unlock_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.inode = type { %struct.timespec, %struct.timespec, %struct.timespec, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.nameidata = type { i32 }
%struct.fat_slot_info = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MSDOS_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global %struct.timespec zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @msdos_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nameidata*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.fat_slot_info, align 4
  %12 = alloca %struct.timespec, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.nameidata* %3, %struct.nameidata** %8, align 8
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 3
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %9, align 8
  store %struct.inode* null, %struct.inode** %10, align 8
  %20 = load i32, i32* @MSDOS_NAME, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load %struct.super_block*, %struct.super_block** %9, align 8
  %25 = call i32 @lock_super(%struct.super_block* %24)
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.super_block*, %struct.super_block** %9, align 8
  %35 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @msdos_format_name(i8* %29, i32 %33, i8* %23, i32* %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %4
  br label %107

41:                                               ; preds = %4
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = getelementptr inbounds i8, i8* %23, i64 0
  %52 = load i8, i8* %51, align 16
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %53, 46
  br label %55

55:                                               ; preds = %50, %41
  %56 = phi i1 [ false, %41 ], [ %54, %50 ]
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %16, align 4
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = call i32 @fat_scan(%struct.inode* %58, i8* %23, %struct.fat_slot_info* %11)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @brelse(i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %15, align 4
  br label %107

67:                                               ; preds = %55
  %68 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 bitcast (%struct.timespec* @CURRENT_TIME_SEC to i8*), i64 4, i1 false)
  %69 = load %struct.inode*, %struct.inode** %5, align 8
  %70 = load i32, i32* %16, align 4
  %71 = call i32 @msdos_add_entry(%struct.inode* %69, i8* %23, i32 0, i32 %70, i32 0, %struct.timespec* %12, %struct.fat_slot_info* %11)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %107

75:                                               ; preds = %67
  %76 = load %struct.super_block*, %struct.super_block** %9, align 8
  %77 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.inode* @fat_build_inode(%struct.super_block* %76, i32 %78, i32 %80)
  store %struct.inode* %81, %struct.inode** %10, align 8
  %82 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %11, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @brelse(i32 %83)
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = call i64 @IS_ERR(%struct.inode* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %75
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = call i32 @PTR_ERR(%struct.inode* %89)
  store i32 %90, i32* %15, align 4
  br label %107

91:                                               ; preds = %75
  %92 = load %struct.inode*, %struct.inode** %10, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 2
  %94 = load %struct.inode*, %struct.inode** %10, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 1
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = bitcast %struct.timespec* %97 to i8*
  %99 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %98, i8* align 4 %99, i64 4, i1 false)
  %100 = bitcast %struct.timespec* %95 to i8*
  %101 = bitcast %struct.timespec* %97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 8 %101, i64 4, i1 false)
  %102 = bitcast %struct.timespec* %93 to i8*
  %103 = bitcast %struct.timespec* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %102, i8* align 4 %103, i64 4, i1 false)
  %104 = load %struct.dentry*, %struct.dentry** %6, align 8
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = call i32 @d_instantiate(%struct.dentry* %104, %struct.inode* %105)
  br label %107

107:                                              ; preds = %91, %88, %74, %61, %40
  %108 = load %struct.super_block*, %struct.super_block** %9, align 8
  %109 = call i32 @unlock_super(%struct.super_block* %108)
  %110 = load i32, i32* %15, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.super_block*, %struct.super_block** %9, align 8
  %114 = load %struct.inode*, %struct.inode** %5, align 8
  %115 = load %struct.inode*, %struct.inode** %10, align 8
  %116 = call i32 @fat_flush_inodes(%struct.super_block* %113, %struct.inode* %114, %struct.inode* %115)
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %112, %107
  %118 = load i32, i32* %15, align 4
  %119 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %119)
  ret i32 %118
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @lock_super(%struct.super_block*) #2

declare dso_local i32 @msdos_format_name(i8*, i32, i8*, i32*) #2

declare dso_local %struct.TYPE_4__* @MSDOS_SB(%struct.super_block*) #2

declare dso_local i32 @fat_scan(%struct.inode*, i8*, %struct.fat_slot_info*) #2

declare dso_local i32 @brelse(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @msdos_add_entry(%struct.inode*, i8*, i32, i32, i32, %struct.timespec*, %struct.fat_slot_info*) #2

declare dso_local %struct.inode* @fat_build_inode(%struct.super_block*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.inode*) #2

declare dso_local i32 @PTR_ERR(%struct.inode*) #2

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #2

declare dso_local i32 @unlock_super(%struct.super_block*) #2

declare dso_local i32 @fat_flush_inodes(%struct.super_block*, %struct.inode*, %struct.inode*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

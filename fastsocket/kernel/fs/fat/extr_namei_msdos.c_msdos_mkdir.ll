; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.inode = type { i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.dentry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.fat_slot_info = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MSDOS_NAME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global %struct.timespec zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @msdos_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.fat_slot_info, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.timespec, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 4
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %8, align 8
  %21 = load i32, i32* @MSDOS_NAME, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load %struct.super_block*, %struct.super_block** %8, align 8
  %26 = call i32 @lock_super(%struct.super_block* %25)
  %27 = load %struct.dentry*, %struct.dentry** %6, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.super_block*, %struct.super_block** %8, align 8
  %36 = call %struct.TYPE_4__* @MSDOS_SB(%struct.super_block* %35)
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @msdos_format_name(i8* %30, i32 %34, i8* %24, i32* %37)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  br label %130

42:                                               ; preds = %3
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 46
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = getelementptr inbounds i8, i8* %24, i64 0
  %53 = load i8, i8* %52, align 16
  %54 = zext i8 %53 to i32
  %55 = icmp ne i32 %54, 46
  br label %56

56:                                               ; preds = %51, %42
  %57 = phi i1 [ false, %42 ], [ %55, %51 ]
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %15, align 4
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call i32 @fat_scan(%struct.inode* %59, i8* %24, %struct.fat_slot_info* %9)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @brelse(i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %14, align 4
  br label %130

68:                                               ; preds = %56
  %69 = bitcast %struct.timespec* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %69, i8* align 4 bitcast (%struct.timespec* @CURRENT_TIME_SEC to i8*), i64 4, i1 false)
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = call i32 @fat_alloc_new_dir(%struct.inode* %70, %struct.timespec* %13)
  store i32 %71, i32* %16, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %16, align 4
  store i32 %75, i32* %14, align 4
  br label %130

76:                                               ; preds = %68
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @msdos_add_entry(%struct.inode* %77, i8* %24, i32 1, i32 %78, i32 %79, %struct.timespec* %13, %struct.fat_slot_info* %9)
  store i32 %80, i32* %14, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %126

84:                                               ; preds = %76
  %85 = load %struct.inode*, %struct.inode** %5, align 8
  %86 = call i32 @inc_nlink(%struct.inode* %85)
  %87 = load %struct.super_block*, %struct.super_block** %8, align 8
  %88 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call %struct.inode* @fat_build_inode(%struct.super_block* %87, i32 %89, i32 %91)
  store %struct.inode* %92, %struct.inode** %10, align 8
  %93 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %9, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @brelse(i32 %94)
  %96 = load %struct.inode*, %struct.inode** %10, align 8
  %97 = call i64 @IS_ERR(%struct.inode* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %84
  %100 = load %struct.inode*, %struct.inode** %10, align 8
  %101 = call i32 @PTR_ERR(%struct.inode* %100)
  store i32 %101, i32* %14, align 4
  br label %130

102:                                              ; preds = %84
  %103 = load %struct.inode*, %struct.inode** %10, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  store i32 2, i32* %104, align 8
  %105 = load %struct.inode*, %struct.inode** %10, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 3
  %107 = load %struct.inode*, %struct.inode** %10, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 2
  %109 = load %struct.inode*, %struct.inode** %10, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 1
  %111 = bitcast %struct.timespec* %110 to i8*
  %112 = bitcast %struct.timespec* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %111, i8* align 4 %112, i64 4, i1 false)
  %113 = bitcast %struct.timespec* %108 to i8*
  %114 = bitcast %struct.timespec* %110 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %113, i8* align 4 %114, i64 4, i1 false)
  %115 = bitcast %struct.timespec* %106 to i8*
  %116 = bitcast %struct.timespec* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %115, i8* align 8 %116, i64 4, i1 false)
  %117 = load %struct.dentry*, %struct.dentry** %6, align 8
  %118 = load %struct.inode*, %struct.inode** %10, align 8
  %119 = call i32 @d_instantiate(%struct.dentry* %117, %struct.inode* %118)
  %120 = load %struct.super_block*, %struct.super_block** %8, align 8
  %121 = call i32 @unlock_super(%struct.super_block* %120)
  %122 = load %struct.super_block*, %struct.super_block** %8, align 8
  %123 = load %struct.inode*, %struct.inode** %5, align 8
  %124 = load %struct.inode*, %struct.inode** %10, align 8
  %125 = call i32 @fat_flush_inodes(%struct.super_block* %122, %struct.inode* %123, %struct.inode* %124)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %134

126:                                              ; preds = %83
  %127 = load %struct.inode*, %struct.inode** %5, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @fat_free_clusters(%struct.inode* %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %99, %74, %62, %41
  %131 = load %struct.super_block*, %struct.super_block** %8, align 8
  %132 = call i32 @unlock_super(%struct.super_block* %131)
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %134

134:                                              ; preds = %130, %102
  %135 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %4, align 4
  ret i32 %136
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

declare dso_local i32 @fat_alloc_new_dir(%struct.inode*, %struct.timespec*) #2

declare dso_local i32 @msdos_add_entry(%struct.inode*, i8*, i32, i32, i32, %struct.timespec*, %struct.fat_slot_info*) #2

declare dso_local i32 @inc_nlink(%struct.inode*) #2

declare dso_local %struct.inode* @fat_build_inode(%struct.super_block*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.inode*) #2

declare dso_local i32 @PTR_ERR(%struct.inode*) #2

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #2

declare dso_local i32 @unlock_super(%struct.super_block*) #2

declare dso_local i32 @fat_flush_inodes(%struct.super_block*, %struct.inode*, %struct.inode*) #2

declare dso_local i32 @fat_free_clusters(%struct.inode*, i32) #2

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

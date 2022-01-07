; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_vfat.c_vfat_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.timespec, %struct.timespec, %struct.timespec }
%struct.timespec = type { i32 }
%struct.qstr = type { i32 }
%struct.fat_slot_info = type { i32 }
%struct.msdos_dir_slot = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@MSDOS_SLOTS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, i32, i32, %struct.timespec*, %struct.fat_slot_info*)* @vfat_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfat_add_entry(%struct.inode* %0, %struct.qstr* %1, i32 %2, i32 %3, %struct.timespec* %4, %struct.fat_slot_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.qstr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.timespec*, align 8
  %13 = alloca %struct.fat_slot_info*, align 8
  %14 = alloca %struct.msdos_dir_slot*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %8, align 8
  store %struct.qstr* %1, %struct.qstr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.timespec* %4, %struct.timespec** %12, align 8
  store %struct.fat_slot_info* %5, %struct.fat_slot_info** %13, align 8
  %18 = load %struct.qstr*, %struct.qstr** %9, align 8
  %19 = call i32 @vfat_striptail_len(%struct.qstr* %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %88

25:                                               ; preds = %6
  %26 = load i32, i32* @MSDOS_SLOTS, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_NOFS, align 4
  %31 = call %struct.msdos_dir_slot* @kmalloc(i32 %29, i32 %30)
  store %struct.msdos_dir_slot* %31, %struct.msdos_dir_slot** %14, align 8
  %32 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %33 = icmp eq %struct.msdos_dir_slot* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %88

37:                                               ; preds = %25
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = load %struct.qstr*, %struct.qstr** %9, align 8
  %40 = getelementptr inbounds %struct.qstr, %struct.qstr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.timespec*, %struct.timespec** %12, align 8
  %46 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %47 = call i32 @vfat_build_slots(%struct.inode* %38, i32 %41, i32 %42, i32 %43, i32 %44, %struct.timespec* %45, %struct.msdos_dir_slot* %46, i32* %17)
  store i32 %47, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %37
  br label %84

51:                                               ; preds = %37
  %52 = load %struct.inode*, %struct.inode** %8, align 8
  %53 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %54 = load i32, i32* %17, align 4
  %55 = load %struct.fat_slot_info*, %struct.fat_slot_info** %13, align 8
  %56 = call i32 @fat_add_entries(%struct.inode* %52, %struct.msdos_dir_slot* %53, i32 %54, %struct.fat_slot_info* %55)
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %84

60:                                               ; preds = %51
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 2
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 1
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load %struct.timespec*, %struct.timespec** %12, align 8
  %68 = bitcast %struct.timespec* %66 to i8*
  %69 = bitcast %struct.timespec* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %68, i8* align 4 %69, i64 4, i1 false)
  %70 = bitcast %struct.timespec* %64 to i8*
  %71 = bitcast %struct.timespec* %66 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  %72 = bitcast %struct.timespec* %62 to i8*
  %73 = bitcast %struct.timespec* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = call i64 @IS_DIRSYNC(%struct.inode* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %60
  %78 = load %struct.inode*, %struct.inode** %8, align 8
  %79 = call i32 @fat_sync_inode(%struct.inode* %78)
  br label %83

80:                                               ; preds = %60
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = call i32 @mark_inode_dirty(%struct.inode* %81)
  br label %83

83:                                               ; preds = %80, %77
  br label %84

84:                                               ; preds = %83, %59, %50
  %85 = load %struct.msdos_dir_slot*, %struct.msdos_dir_slot** %14, align 8
  %86 = call i32 @kfree(%struct.msdos_dir_slot* %85)
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %84, %34, %22
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @vfat_striptail_len(%struct.qstr*) #1

declare dso_local %struct.msdos_dir_slot* @kmalloc(i32, i32) #1

declare dso_local i32 @vfat_build_slots(%struct.inode*, i32, i32, i32, i32, %struct.timespec*, %struct.msdos_dir_slot*, i32*) #1

declare dso_local i32 @fat_add_entries(%struct.inode*, %struct.msdos_dir_slot*, i32, %struct.fat_slot_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @fat_sync_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.msdos_dir_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

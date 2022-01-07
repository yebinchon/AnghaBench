; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fat/extr_namei_msdos.c_msdos_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.timespec, %struct.timespec, i32 }
%struct.timespec = type { i32 }
%struct.fat_slot_info = type { i32 }
%struct.msdos_sb_info = type { i32 }
%struct.msdos_dir_entry = type { i64, i8*, i8*, i8*, i8*, i64, i64, i64, i64, i64, i32, i32 }

@MSDOS_NAME = common dso_local global i32 0, align 4
@ATTR_DIR = common dso_local global i32 0, align 4
@ATTR_ARCH = common dso_local global i32 0, align 4
@ATTR_HIDDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*, i32, i32, i32, %struct.timespec*, %struct.fat_slot_info*)* @msdos_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_add_entry(%struct.inode* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.timespec* %5, %struct.fat_slot_info* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timespec*, align 8
  %15 = alloca %struct.fat_slot_info*, align 8
  %16 = alloca %struct.msdos_sb_info*, align 8
  %17 = alloca %struct.msdos_dir_entry, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.timespec* %5, %struct.timespec** %14, align 8
  store %struct.fat_slot_info* %6, %struct.fat_slot_info** %15, align 8
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.msdos_sb_info* @MSDOS_SB(i32 %23)
  store %struct.msdos_sb_info* %24, %struct.msdos_sb_info** %16, align 8
  %25 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 11
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @MSDOS_NAME, align 4
  %29 = call i32 @memcpy(i32 %26, i8* %27, i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %7
  %33 = load i32, i32* @ATTR_DIR, align 4
  br label %36

34:                                               ; preds = %7
  %35 = load i32, i32* @ATTR_ARCH, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 10
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i32, i32* @ATTR_HIDDEN, align 4
  %43 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 10
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %36
  %47 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 9
  store i64 0, i64* %47, align 8
  %48 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %16, align 8
  %49 = load %struct.timespec*, %struct.timespec** %14, align 8
  %50 = call i32 @fat_time_unix2fat(%struct.msdos_sb_info* %48, %struct.timespec* %49, i8** %18, i8** %19, i32* null)
  %51 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 7
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 8
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 5
  store i64 0, i64* %54, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 4
  store i8* %55, i8** %56, align 8
  %57 = load i8*, i8** %19, align 8
  %58 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 3
  store i8* %57, i8** %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i8* @cpu_to_le16(i32 %59)
  %61 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 2
  store i8* %60, i8** %61, align 8
  %62 = load i32, i32* %13, align 4
  %63 = ashr i32 %62, 16
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 1
  store i8* %64, i8** %65, align 8
  %66 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %17, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = load %struct.fat_slot_info*, %struct.fat_slot_info** %15, align 8
  %69 = call i32 @fat_add_entries(%struct.inode* %67, %struct.msdos_dir_entry* %17, i32 1, %struct.fat_slot_info* %68)
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %20, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %46
  %73 = load i32, i32* %20, align 4
  store i32 %73, i32* %8, align 4
  br label %94

74:                                               ; preds = %46
  %75 = load %struct.inode*, %struct.inode** %9, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 1
  %77 = load %struct.inode*, %struct.inode** %9, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load %struct.timespec*, %struct.timespec** %14, align 8
  %80 = bitcast %struct.timespec* %78 to i8*
  %81 = bitcast %struct.timespec* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 4, i1 false)
  %82 = bitcast %struct.timespec* %76 to i8*
  %83 = bitcast %struct.timespec* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 4, i1 false)
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = call i64 @IS_DIRSYNC(%struct.inode* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %74
  %88 = load %struct.inode*, %struct.inode** %9, align 8
  %89 = call i32 @fat_sync_inode(%struct.inode* %88)
  br label %93

90:                                               ; preds = %74
  %91 = load %struct.inode*, %struct.inode** %9, align 8
  %92 = call i32 @mark_inode_dirty(%struct.inode* %91)
  br label %93

93:                                               ; preds = %90, %87
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %93, %72
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @fat_time_unix2fat(%struct.msdos_sb_info*, %struct.timespec*, i8**, i8**, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @fat_add_entries(%struct.inode*, %struct.msdos_dir_entry*, i32, %struct.fat_slot_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @fat_sync_inode(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

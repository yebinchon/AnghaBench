; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_file.c_ext4_file_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_file.c_ext4_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.file = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vfsmount* }
%struct.vfsmount = type { i32, i32 }
%struct.ext4_sb_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.path = type { i32, i32 }

@EXT4_MF_MNTDIR_SAMPLED = common dso_local global i32 0, align 4
@MS_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ext4_file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_file_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext4_sb_info*, align 8
  %7 = alloca %struct.vfsmount*, align 8
  %8 = alloca %struct.path, align 4
  %9 = alloca [64 x i8], align 16
  %10 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %5, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.super_block*, %struct.super_block** %15, align 8
  %17 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %16)
  store %struct.ext4_sb_info* %17, %struct.ext4_sb_info** %6, align 8
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.vfsmount*, %struct.vfsmount** %20, align 8
  store %struct.vfsmount* %21, %struct.vfsmount** %7, align 8
  %22 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %23 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @EXT4_MF_MNTDIR_SAMPLED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %2
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @MS_RDONLY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %28, %2
  %37 = phi i1 [ false, %2 ], [ %35, %28 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %36
  %42 = load i32, i32* @EXT4_MF_MNTDIR_SAMPLED, align 4
  %43 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %44 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %48 = call i32 @memset(i8* %47, i32 0, i32 64)
  %49 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %50 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  store i32 %51, i32* %52, align 4
  %53 = load %struct.vfsmount*, %struct.vfsmount** %7, align 8
  %54 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = call i32 @path_get(%struct.path* %8)
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %59 = call i8* @d_path(%struct.path* %8, i8* %58, i32 64)
  store i8* %59, i8** %10, align 8
  %60 = call i32 @path_put(%struct.path* %8)
  %61 = load i8*, i8** %10, align 8
  %62 = call i32 @IS_ERR(i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %41
  %65 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %6, align 8
  %66 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 @memcpy(i32 %69, i8* %70, i32 4)
  %72 = load %struct.super_block*, %struct.super_block** %5, align 8
  %73 = getelementptr inbounds %struct.super_block, %struct.super_block* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %64, %41
  br label %75

75:                                               ; preds = %74, %36
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = load %struct.file*, %struct.file** %4, align 8
  %78 = call i32 @generic_file_open(%struct.inode* %76, %struct.file* %77)
  ret i32 %78
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i8* @d_path(%struct.path*, i8*, i32) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i32 @IS_ERR(i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @generic_file_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

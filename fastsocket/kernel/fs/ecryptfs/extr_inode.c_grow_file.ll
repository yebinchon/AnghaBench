; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_grow_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ecryptfs/extr_inode.c_grow_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.ecryptfs_file_info = type { %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@ECRYPTFS_NEW_FILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @grow_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grow_file(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file, align 8
  %5 = alloca %struct.ecryptfs_file_info, align 8
  %6 = alloca [1 x i8], align 1
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %3, align 8
  %11 = bitcast [1 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %11, i8 0, i64 1, i1 false)
  store i32 0, i32* %7, align 4
  %12 = call i32 @memset(%struct.file* %4, i32 0, i32 8)
  %13 = load %struct.dentry*, %struct.dentry** %2, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %4, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.dentry* %13, %struct.dentry** %15, align 8
  %16 = bitcast %struct.ecryptfs_file_info* %5 to %struct.file*
  %17 = call i32 @memset(%struct.file* %16, i32 0, i32 8)
  %18 = bitcast %struct.ecryptfs_file_info* %5 to %struct.file*
  %19 = call i32 @ecryptfs_set_file_private(%struct.file* %4, %struct.file* %18)
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = call %struct.TYPE_6__* @ecryptfs_inode_to_private(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ecryptfs_set_file_lower(%struct.file* %4, i32 %23)
  %25 = getelementptr inbounds [1 x i8], [1 x i8]* %6, i64 0, i64 0
  %26 = call i32 @ecryptfs_write(%struct.file* %4, i8* %25, i32 0, i32 1)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.inode*, %struct.inode** %3, align 8
  %28 = call i32 @i_size_write(%struct.inode* %27, i32 0)
  %29 = load %struct.inode*, %struct.inode** %3, align 8
  %30 = call i32 @ecryptfs_write_inode_size_to_metadata(%struct.inode* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @ECRYPTFS_NEW_FILE, align 4
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = call %struct.TYPE_6__* @ecryptfs_inode_to_private(%struct.inode* %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %31
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.file*, i32, i32) #2

declare dso_local i32 @ecryptfs_set_file_private(%struct.file*, %struct.file*) #2

declare dso_local i32 @ecryptfs_set_file_lower(%struct.file*, i32) #2

declare dso_local %struct.TYPE_6__* @ecryptfs_inode_to_private(%struct.inode*) #2

declare dso_local i32 @ecryptfs_write(%struct.file*, i8*, i32, i32) #2

declare dso_local i32 @i_size_write(%struct.inode*, i32) #2

declare dso_local i32 @ecryptfs_write_inode_size_to_metadata(%struct.inode*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

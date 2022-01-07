; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_shmem.c_shmem_file_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_shmem.c_shmem_file_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.file = type opaque
%struct.inode = type { i64, i32 }
%struct.path = type { i32, i32 }
%struct.qstr = type { i8*, i64, i32 }

@shm_mnt = common dso_local global %struct.TYPE_4__* null, align 8
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@shmem_file_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @shmem_file_setup(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.path, align 4
  %12 = alloca %struct.dentry*, align 8
  %13 = alloca %struct.qstr, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shm_mnt, align 8
  %15 = call i64 @IS_ERR(%struct.TYPE_4__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shm_mnt, align 8
  %19 = bitcast %struct.TYPE_4__* %18 to i8*
  %20 = bitcast i8* %19 to %struct.file*
  store %struct.file* %20, %struct.file** %4, align 8
  br label %117

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i8* @ERR_PTR(i32 %30)
  %32 = bitcast i8* %31 to %struct.file*
  store %struct.file* %32, %struct.file** %4, align 8
  br label %117

33:                                               ; preds = %24
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @shmem_acct_size(i64 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  %41 = call i8* @ERR_PTR(i32 %40)
  %42 = bitcast i8* %41 to %struct.file*
  store %struct.file* %42, %struct.file** %4, align 8
  br label %117

43:                                               ; preds = %33
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 0
  store i8* %46, i8** %47, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = call i32 @strlen(i8* %48)
  %50 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shm_mnt, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.dentry*, %struct.dentry** %53, align 8
  store %struct.dentry* %54, %struct.dentry** %12, align 8
  %55 = load %struct.dentry*, %struct.dentry** %12, align 8
  %56 = call i32 @d_alloc(%struct.dentry* %55, %struct.qstr* %13)
  %57 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %43
  br label %110

62:                                               ; preds = %43
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shm_mnt, align 8
  %64 = call i32 @mntget(%struct.TYPE_4__* %63)
  %65 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @ENOSPC, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %8, align 4
  %68 = load %struct.dentry*, %struct.dentry** %12, align 8
  %69 = getelementptr inbounds %struct.dentry, %struct.dentry* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @S_IFREG, align 4
  %72 = load i32, i32* @S_IRWXUGO, align 4
  %73 = or i32 %71, %72
  %74 = load i64, i64* %7, align 8
  %75 = call %struct.inode* @shmem_get_inode(i32 %70, i32 %73, i32 0, i64 %74)
  store %struct.inode* %75, %struct.inode** %10, align 8
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = icmp ne %struct.inode* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %62
  br label %108

79:                                               ; preds = %62
  %80 = getelementptr inbounds %struct.path, %struct.path* %11, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.inode*, %struct.inode** %10, align 8
  %83 = call i32 @d_instantiate(i32 %81, %struct.inode* %82)
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.inode*, %struct.inode** %10, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @ramfs_nommu_expand_for_mapping(%struct.inode* %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %79
  br label %108

95:                                               ; preds = %79
  %96 = load i32, i32* @ENFILE, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* @FMODE_WRITE, align 4
  %99 = load i32, i32* @FMODE_READ, align 4
  %100 = or i32 %98, %99
  %101 = call i8* @alloc_file(%struct.path* %11, i32 %100, i32* @shmem_file_operations)
  %102 = bitcast i8* %101 to %struct.file*
  store %struct.file* %102, %struct.file** %9, align 8
  %103 = load %struct.file*, %struct.file** %9, align 8
  %104 = icmp ne %struct.file* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %95
  br label %108

106:                                              ; preds = %95
  %107 = load %struct.file*, %struct.file** %9, align 8
  store %struct.file* %107, %struct.file** %4, align 8
  br label %117

108:                                              ; preds = %105, %94, %78
  %109 = call i32 @path_put(%struct.path* %11)
  br label %110

110:                                              ; preds = %108, %61
  %111 = load i64, i64* %7, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @shmem_unacct_size(i64 %111, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = call i8* @ERR_PTR(i32 %114)
  %116 = bitcast i8* %115 to %struct.file*
  store %struct.file* %116, %struct.file** %4, align 8
  br label %117

117:                                              ; preds = %110, %106, %38, %28, %17
  %118 = load %struct.file*, %struct.file** %4, align 8
  ret %struct.file* %118
}

declare dso_local i64 @IS_ERR(%struct.TYPE_4__*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i64 @shmem_acct_size(i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @d_alloc(%struct.dentry*, %struct.qstr*) #1

declare dso_local i32 @mntget(%struct.TYPE_4__*) #1

declare dso_local %struct.inode* @shmem_get_inode(i32, i32, i32, i64) #1

declare dso_local i32 @d_instantiate(i32, %struct.inode*) #1

declare dso_local i32 @ramfs_nommu_expand_for_mapping(%struct.inode*, i32) #1

declare dso_local i8* @alloc_file(%struct.path*, i32, i32*) #1

declare dso_local i32 @path_put(%struct.path*) #1

declare dso_local i32 @shmem_unacct_size(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

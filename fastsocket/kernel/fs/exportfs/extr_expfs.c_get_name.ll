; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exportfs/extr_expfs.c_get_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exportfs/extr_expfs.c_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.cred = type { i32 }
%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.getdents_callback = type { i8*, i32, i64, i32 }

@ENOTDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@filldir_one = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.dentry*, i8*, %struct.dentry*)* @get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_name(%struct.vfsmount* %0, %struct.dentry* %1, i8* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.vfsmount*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.cred*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.getdents_callback, align 8
  %14 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.dentry* %3, %struct.dentry** %8, align 8
  %15 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %15, %struct.cred** %9, align 8
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.inode*, %struct.inode** %17, align 8
  store %struct.inode* %18, %struct.inode** %10, align 8
  %19 = load i32, i32* @ENOTDIR, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.inode*, %struct.inode** %10, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @S_ISDIR(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23, %4
  br label %100

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  br label %100

38:                                               ; preds = %30
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = call i32 @dget(%struct.dentry* %39)
  %41 = load %struct.vfsmount*, %struct.vfsmount** %5, align 8
  %42 = call i32 @mntget(%struct.vfsmount* %41)
  %43 = load i32, i32* @O_RDONLY, align 4
  %44 = load %struct.cred*, %struct.cred** %9, align 8
  %45 = call %struct.file* @dentry_open(i32 %40, i32 %42, i32 %43, %struct.cred* %44)
  store %struct.file* %45, %struct.file** %12, align 8
  %46 = load %struct.file*, %struct.file** %12, align 8
  %47 = call i32 @PTR_ERR(%struct.file* %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.file*, %struct.file** %12, align 8
  %49 = call i64 @IS_ERR(%struct.file* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %38
  br label %100

52:                                               ; preds = %38
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %11, align 4
  %55 = load %struct.file*, %struct.file** %12, align 8
  %56 = getelementptr inbounds %struct.file, %struct.file* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %97

62:                                               ; preds = %52
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %13, i32 0, i32 0
  store i8* %63, i8** %64, align 8
  %65 = load %struct.dentry*, %struct.dentry** %8, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 0
  %67 = load %struct.inode*, %struct.inode** %66, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %13, i32 0, i32 3
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %13, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %13, i32 0, i32 1
  store i32 0, i32* %72, align 8
  br label %73

73:                                               ; preds = %62, %95
  %74 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %13, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %14, align 4
  %76 = load %struct.file*, %struct.file** %12, align 8
  %77 = load i32, i32* @filldir_one, align 4
  %78 = call i32 @vfs_readdir(%struct.file* %76, i32 %77, %struct.getdents_callback* %13)
  store i32 %78, i32* %11, align 4
  %79 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %13, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  store i32 0, i32* %11, align 4
  br label %96

83:                                               ; preds = %73
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %96

87:                                               ; preds = %83
  %88 = load i32, i32* @ENOENT, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %14, align 4
  %91 = getelementptr inbounds %struct.getdents_callback, %struct.getdents_callback* %13, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %96

95:                                               ; preds = %87
  br label %73

96:                                               ; preds = %94, %86, %82
  br label %97

97:                                               ; preds = %96, %61
  %98 = load %struct.file*, %struct.file** %12, align 8
  %99 = call i32 @fput(%struct.file* %98)
  br label %100

100:                                              ; preds = %97, %51, %37, %29
  %101 = load i32, i32* %11, align 4
  ret i32 %101
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.file* @dentry_open(i32, i32, i32, %struct.cred*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local i32 @mntget(%struct.vfsmount*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @vfs_readdir(%struct.file*, i32, %struct.getdents_callback*) #1

declare dso_local i32 @fput(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

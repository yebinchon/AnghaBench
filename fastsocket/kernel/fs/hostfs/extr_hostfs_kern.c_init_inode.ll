; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_init_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_init_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__*, i32*, i32* }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OS_TYPE_DIR = common dso_local global i32 0, align 4
@OS_TYPE_SYMLINK = common dso_local global i32 0, align 4
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@hostfs_dir_iops = common dso_local global i32 0, align 4
@hostfs_iops = common dso_local global i32 0, align 4
@hostfs_dir_fops = common dso_local global i32 0, align 4
@hostfs_file_fops = common dso_local global i32 0, align 4
@hostfs_link_aops = common dso_local global i32 0, align 4
@hostfs_aops = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IFBLK = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @init_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_inode(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.dentry*, %struct.dentry** %4, align 8
  %14 = icmp ne %struct.dentry* %13, null
  br i1 %14, label %15, label %29

15:                                               ; preds = %2
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call i8* @dentry_name(%struct.dentry* %16, i32 0)
  store i8* %17, i8** %5, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %94

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @file_type(i8* %22, i32* %8, i32* %9)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @MKDEV(i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @kfree(i8* %27)
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @OS_TYPE_DIR, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %29, %21
  store i32 0, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @OS_TYPE_SYMLINK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 2
  store i32* @page_symlink_inode_operations, i32** %37, align 8
  br label %49

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @OS_TYPE_DIR, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 2
  store i32* @hostfs_dir_iops, i32** %44, align 8
  br label %48

45:                                               ; preds = %38
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 2
  store i32* @hostfs_iops, i32** %47, align 8
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @OS_TYPE_DIR, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  store i32* @hostfs_dir_fops, i32** %55, align 8
  br label %59

56:                                               ; preds = %49
  %57 = load %struct.inode*, %struct.inode** %3, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 1
  store i32* @hostfs_file_fops, i32** %58, align 8
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @OS_TYPE_SYMLINK, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load %struct.inode*, %struct.inode** %3, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32* @hostfs_link_aops, i32** %67, align 8
  br label %73

68:                                               ; preds = %59
  %69 = load %struct.inode*, %struct.inode** %3, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32* @hostfs_aops, i32** %72, align 8
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* %6, align 4
  switch i32 %74, label %93 [
    i32 130, label %75
    i32 131, label %80
    i32 129, label %85
    i32 128, label %89
  ]

75:                                               ; preds = %73
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = load i32, i32* @S_IFCHR, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @init_special_inode(%struct.inode* %76, i32 %77, i32 %78)
  br label %93

80:                                               ; preds = %73
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = load i32, i32* @S_IFBLK, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @init_special_inode(%struct.inode* %81, i32 %82, i32 %83)
  br label %93

85:                                               ; preds = %73
  %86 = load %struct.inode*, %struct.inode** %3, align 8
  %87 = load i32, i32* @S_IFIFO, align 4
  %88 = call i32 @init_special_inode(%struct.inode* %86, i32 %87, i32 0)
  br label %93

89:                                               ; preds = %73
  %90 = load %struct.inode*, %struct.inode** %3, align 8
  %91 = load i32, i32* @S_IFSOCK, align 4
  %92 = call i32 @init_special_inode(%struct.inode* %90, i32 %91, i32 0)
  br label %93

93:                                               ; preds = %73, %89, %85, %80, %75
  br label %94

94:                                               ; preds = %93, %20
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i8* @dentry_name(%struct.dentry*, i32) #1

declare dso_local i32 @file_type(i8*, i32*, i32*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

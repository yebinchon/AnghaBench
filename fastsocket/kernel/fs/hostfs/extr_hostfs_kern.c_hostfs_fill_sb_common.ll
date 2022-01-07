; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_fill_sb_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hostfs/extr_hostfs_kern.c_hostfs_fill_sb_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32*, i32, i32*, i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i8* }

@HOSTFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@hostfs_sbops = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@root_ino = common dso_local global i8* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @hostfs_fill_sb_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostfs_fill_sb_common(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %10, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  store i32 1024, i32* %14, align 8
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = getelementptr inbounds %struct.super_block, %struct.super_block* %15, i32 0, i32 1
  store i32 10, i32* %16, align 4
  %17 = load i32, i32* @HOSTFS_SUPER_MAGIC, align 4
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 4
  store i32* @hostfs_sbops, i32** %21, align 8
  %22 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %28

28:                                               ; preds = %27, %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %11, align 4
  %31 = load i8*, i8** @root_ino, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = add nsw i64 %32, 1
  %34 = load i8*, i8** %10, align 8
  %35 = call i64 @strlen(i8* %34)
  %36 = add nsw i64 %33, %35
  %37 = add nsw i64 %36, 1
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i8* @kmalloc(i64 %37, i32 %38)
  store i8* %39, i8** %9, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %97

43:                                               ; preds = %28
  %44 = load i8*, i8** %9, align 8
  %45 = load i8*, i8** @root_ino, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @sprintf(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %45, i8* %46)
  %48 = load %struct.super_block*, %struct.super_block** %5, align 8
  %49 = call %struct.inode* @hostfs_iget(%struct.super_block* %48)
  store %struct.inode* %49, %struct.inode** %8, align 8
  %50 = load %struct.inode*, %struct.inode** %8, align 8
  %51 = call i64 @IS_ERR(%struct.inode* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = call i32 @PTR_ERR(%struct.inode* %54)
  store i32 %55, i32* %11, align 4
  br label %94

56:                                               ; preds = %43
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call i32 @init_inode(%struct.inode* %57, i32* null)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %91

62:                                               ; preds = %56
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = call %struct.TYPE_2__* @HOSTFS_I(%struct.inode* %64)
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i8* %63, i8** %66, align 8
  store i8* null, i8** %9, align 8
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  %69 = load %struct.inode*, %struct.inode** %8, align 8
  %70 = call i32* @d_alloc_root(%struct.inode* %69)
  %71 = load %struct.super_block*, %struct.super_block** %5, align 8
  %72 = getelementptr inbounds %struct.super_block, %struct.super_block* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  %73 = load %struct.super_block*, %struct.super_block** %5, align 8
  %74 = getelementptr inbounds %struct.super_block, %struct.super_block* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %62
  br label %91

78:                                               ; preds = %62
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = call i32 @hostfs_read_inode(%struct.inode* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.super_block*, %struct.super_block** %5, align 8
  %85 = getelementptr inbounds %struct.super_block, %struct.super_block* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @dput(i32* %86)
  %88 = load %struct.super_block*, %struct.super_block** %5, align 8
  %89 = getelementptr inbounds %struct.super_block, %struct.super_block* %88, i32 0, i32 2
  store i32* null, i32** %89, align 8
  br label %97

90:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %99

91:                                               ; preds = %77, %61
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = call i32 @iput(%struct.inode* %92)
  br label %94

94:                                               ; preds = %91, %53
  %95 = load i8*, i8** %9, align 8
  %96 = call i32 @kfree(i8* %95)
  br label %97

97:                                               ; preds = %94, %83, %42
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %90
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

declare dso_local %struct.inode* @hostfs_iget(%struct.super_block*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @init_inode(%struct.inode*, i32*) #1

declare dso_local %struct.TYPE_2__* @HOSTFS_I(%struct.inode*) #1

declare dso_local i32* @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @hostfs_read_inode(%struct.inode*) #1

declare dso_local i32 @dput(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

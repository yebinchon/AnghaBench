; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_namei.c_hpfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.inode*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32 }
%struct.quad_buffer_head = type { i32 }
%struct.hpfs_dirent = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"there was error when removing dirent\00", align 1
@EFSERROR = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @hpfs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.quad_buffer_head, align 4
  %8 = alloca %struct.hpfs_dirent*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load %struct.dentry*, %struct.dentry** %4, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %9, align 8
  store i32 0, i32* %12, align 4
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 @hpfs_adjust_length(i8* %26, i32* %6)
  %28 = call i32 (...) @lock_kernel()
  %29 = load %struct.inode*, %struct.inode** %9, align 8
  %30 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %13, align 4
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = load %struct.inode*, %struct.inode** %3, align 8
  %41 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %40)
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call %struct.hpfs_dirent* @map_dirent(%struct.inode* %39, i32 %43, i8* %44, i32 %45, i32* %10, %struct.quad_buffer_head* %7)
  store %struct.hpfs_dirent* %46, %struct.hpfs_dirent** %8, align 8
  %47 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %48 = icmp ne %struct.hpfs_dirent* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %2
  br label %107

50:                                               ; preds = %2
  %51 = load i32, i32* @EPERM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %13, align 4
  %53 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %54 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %105

58:                                               ; preds = %50
  %59 = load i32, i32* @ENOTDIR, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %13, align 4
  %61 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %62 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  br label %105

66:                                               ; preds = %58
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.inode*, %struct.inode** %9, align 8
  %71 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %70)
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @hpfs_count_dnodes(i32 %69, i32 %73, i32* null, i32* null, i32* %12)
  %75 = load i32, i32* @ENOTEMPTY, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  br label %105

80:                                               ; preds = %66
  %81 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %82 = getelementptr inbounds %struct.hpfs_dirent, %struct.hpfs_dirent* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %11, align 4
  %84 = load %struct.inode*, %struct.inode** %3, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.hpfs_dirent*, %struct.hpfs_dirent** %8, align 8
  %87 = call i32 @hpfs_remove_dirent(%struct.inode* %84, i32 %85, %struct.hpfs_dirent* %86, %struct.quad_buffer_head* %7, i32 1)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  switch i32 %88, label %99 [
    i32 1, label %89
    i32 2, label %96
  ]

89:                                               ; preds = %80
  %90 = load %struct.inode*, %struct.inode** %3, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @hpfs_error(i32 %92, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %94 = load i32, i32* @EFSERROR, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %13, align 4
  br label %104

96:                                               ; preds = %80
  %97 = load i32, i32* @ENOSPC, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %13, align 4
  br label %104

99:                                               ; preds = %80
  %100 = load %struct.inode*, %struct.inode** %3, align 8
  %101 = call i32 @drop_nlink(%struct.inode* %100)
  %102 = load %struct.inode*, %struct.inode** %9, align 8
  %103 = call i32 @clear_nlink(%struct.inode* %102)
  store i32 0, i32* %13, align 4
  br label %104

104:                                              ; preds = %99, %96, %89
  br label %107

105:                                              ; preds = %79, %65, %57
  %106 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %7)
  br label %107

107:                                              ; preds = %105, %104, %49
  %108 = load %struct.inode*, %struct.inode** %3, align 8
  %109 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %108)
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load %struct.inode*, %struct.inode** %9, align 8
  %113 = call %struct.TYPE_4__* @hpfs_i(%struct.inode* %112)
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = call i32 (...) @unlock_kernel()
  %117 = load i32, i32* %13, align 4
  ret i32 %117
}

declare dso_local i32 @hpfs_adjust_length(i8*, i32*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_4__* @hpfs_i(%struct.inode*) #1

declare dso_local %struct.hpfs_dirent* @map_dirent(%struct.inode*, i32, i8*, i32, i32*, %struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_count_dnodes(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @hpfs_remove_dirent(%struct.inode*, i32, %struct.hpfs_dirent*, %struct.quad_buffer_head*, i32) #1

declare dso_local i32 @hpfs_error(i32, i8*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

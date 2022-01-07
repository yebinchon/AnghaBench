; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_inode.c_jfs_iget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_inode.c_jfs_iget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, i32, i32*, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32* }
%struct.super_block = type { i32 }
%struct.TYPE_4__ = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@jfs_file_inode_operations = common dso_local global i32 0, align 4
@jfs_file_operations = common dso_local global i32 0, align 4
@jfs_aops = common dso_local global i32 0, align 4
@jfs_dir_inode_operations = common dso_local global i32 0, align 4
@jfs_dir_operations = common dso_local global i32 0, align 4
@IDATASIZE = common dso_local global i64 0, align 8
@page_symlink_inode_operations = common dso_local global i32 0, align 4
@jfs_symlink_inode_operations = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @jfs_iget(%struct.super_block* %0, i64 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call %struct.inode* @iget_locked(%struct.super_block* %8, i64 %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = icmp ne %struct.inode* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.inode* @ERR_PTR(i32 %15)
  store %struct.inode* %16, %struct.inode** %3, align 8
  br label %110

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @I_NEW, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %25, %struct.inode** %3, align 8
  br label %110

26:                                               ; preds = %17
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = call i32 @diRead(%struct.inode* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @iget_failed(%struct.inode* %32)
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.inode* @ERR_PTR(i32 %34)
  store %struct.inode* %35, %struct.inode** %3, align 8
  br label %110

36:                                               ; preds = %26
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @S_ISREG(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 4
  store i32* @jfs_file_inode_operations, i32** %44, align 8
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 6
  store i32* @jfs_file_operations, i32** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 5
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32* @jfs_aops, i32** %50, align 8
  br label %106

51:                                               ; preds = %36
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @S_ISDIR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = getelementptr inbounds %struct.inode, %struct.inode* %58, i32 0, i32 4
  store i32* @jfs_dir_inode_operations, i32** %59, align 8
  %60 = load %struct.inode*, %struct.inode** %6, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 6
  store i32* @jfs_dir_operations, i32** %61, align 8
  br label %105

62:                                               ; preds = %51
  %63 = load %struct.inode*, %struct.inode** %6, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @S_ISLNK(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %62
  %69 = load %struct.inode*, %struct.inode** %6, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @IDATASIZE, align 8
  %73 = icmp uge i64 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.inode*, %struct.inode** %6, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 4
  store i32* @page_symlink_inode_operations, i32** %76, align 8
  %77 = load %struct.inode*, %struct.inode** %6, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 5
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i32* @jfs_aops, i32** %80, align 8
  br label %92

81:                                               ; preds = %68
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 4
  store i32* @jfs_symlink_inode_operations, i32** %83, align 8
  %84 = load %struct.inode*, %struct.inode** %6, align 8
  %85 = call %struct.TYPE_4__* @JFS_IP(%struct.inode* %84)
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load %struct.inode*, %struct.inode** %6, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 0, i8* %91, align 1
  br label %92

92:                                               ; preds = %81, %74
  br label %104

93:                                               ; preds = %62
  %94 = load %struct.inode*, %struct.inode** %6, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 4
  store i32* @jfs_file_inode_operations, i32** %95, align 8
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @init_special_inode(%struct.inode* %96, i32 %99, i32 %102)
  br label %104

104:                                              ; preds = %93, %92
  br label %105

105:                                              ; preds = %104, %57
  br label %106

106:                                              ; preds = %105, %42
  %107 = load %struct.inode*, %struct.inode** %6, align 8
  %108 = call i32 @unlock_new_inode(%struct.inode* %107)
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %109, %struct.inode** %3, align 8
  br label %110

110:                                              ; preds = %106, %31, %24, %13
  %111 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %111
}

declare dso_local %struct.inode* @iget_locked(%struct.super_block*, i64) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @diRead(%struct.inode*) #1

declare dso_local i32 @iget_failed(%struct.inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local %struct.TYPE_4__* @JFS_IP(%struct.inode*) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

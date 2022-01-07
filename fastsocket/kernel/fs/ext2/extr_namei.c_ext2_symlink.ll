; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_namei.c_ext2_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext2/extr_namei.c_ext2_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, %struct.TYPE_3__*, %struct.super_block* }
%struct.TYPE_3__ = type { i32* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { i64 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@ext2_symlink_inode_operations = common dso_local global i32 0, align 4
@NOBH = common dso_local global i32 0, align 4
@ext2_nobh_aops = common dso_local global i32 0, align 4
@ext2_aops = common dso_local global i32 0, align 4
@ext2_fast_symlink_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @ext2_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 3
  %13 = load %struct.super_block*, %struct.super_block** %12, align 8
  store %struct.super_block* %13, %struct.super_block** %7, align 8
  %14 = load i32, i32* @ENAMETOOLONG, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.super_block*, %struct.super_block** %7, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ugt i32 %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %90

25:                                               ; preds = %3
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = load i32, i32* @S_IFLNK, align 4
  %28 = load i32, i32* @S_IRWXUGO, align 4
  %29 = or i32 %27, %28
  %30 = call %struct.inode* @ext2_new_inode(%struct.inode* %26, i32 %29)
  store %struct.inode* %30, %struct.inode** %10, align 8
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = call i32 @PTR_ERR(%struct.inode* %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.inode*, %struct.inode** %10, align 8
  %34 = call i64 @IS_ERR(%struct.inode* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %90

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = icmp ugt i64 %39, 8
  br i1 %40, label %41, label %69

41:                                               ; preds = %37
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  store i32* @ext2_symlink_inode_operations, i32** %43, align 8
  %44 = load %struct.inode*, %struct.inode** %10, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 3
  %46 = load %struct.super_block*, %struct.super_block** %45, align 8
  %47 = load i32, i32* @NOBH, align 4
  %48 = call i64 @test_opt(%struct.super_block* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.inode*, %struct.inode** %10, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32* @ext2_nobh_aops, i32** %54, align 8
  br label %60

55:                                               ; preds = %41
  %56 = load %struct.inode*, %struct.inode** %10, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32* @ext2_aops, i32** %59, align 8
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @page_symlink(%struct.inode* %61, i8* %62, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %92

68:                                               ; preds = %60
  br label %84

69:                                               ; preds = %37
  %70 = load %struct.inode*, %struct.inode** %10, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  store i32* @ext2_fast_symlink_inode_operations, i32** %71, align 8
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = call %struct.TYPE_4__* @EXT2_I(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @memcpy(i8* %76, i8* %77, i32 %78)
  %80 = load i32, i32* %9, align 4
  %81 = sub i32 %80, 1
  %82 = load %struct.inode*, %struct.inode** %10, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %69, %68
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = call i32 @mark_inode_dirty(%struct.inode* %85)
  %87 = load %struct.dentry*, %struct.dentry** %5, align 8
  %88 = load %struct.inode*, %struct.inode** %10, align 8
  %89 = call i32 @ext2_add_nondir(%struct.dentry* %87, %struct.inode* %88)
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %92, %84, %36, %24
  %91 = load i32, i32* %8, align 4
  ret i32 %91

92:                                               ; preds = %67
  %93 = load %struct.inode*, %struct.inode** %10, align 8
  %94 = call i32 @inode_dec_link_count(%struct.inode* %93)
  %95 = load %struct.inode*, %struct.inode** %10, align 8
  %96 = call i32 @unlock_new_inode(%struct.inode* %95)
  %97 = load %struct.inode*, %struct.inode** %10, align 8
  %98 = call i32 @iput(%struct.inode* %97)
  br label %90
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.inode* @ext2_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @EXT2_I(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ext2_add_nondir(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

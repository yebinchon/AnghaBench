; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_namei.c_exofs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exofs/extr_namei.c_exofs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32*, %struct.TYPE_2__*, %struct.super_block* }
%struct.TYPE_2__ = type { i32* }
%struct.super_block = type { i32 }
%struct.dentry = type { i32 }
%struct.exofs_i_info = type { i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@exofs_symlink_inode_operations = common dso_local global i32 0, align 4
@exofs_aops = common dso_local global i32 0, align 4
@exofs_fast_symlink_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @exofs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exofs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.exofs_i_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 3
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %7, align 8
  %15 = load i32, i32* @ENAMETOOLONG, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %8, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.super_block*, %struct.super_block** %7, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ugt i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %82

26:                                               ; preds = %3
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = load i32, i32* @S_IFLNK, align 4
  %29 = load i32, i32* @S_IRWXUGO, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.inode* @exofs_new_inode(%struct.inode* %27, i32 %30)
  store %struct.inode* %31, %struct.inode** %10, align 8
  %32 = load %struct.inode*, %struct.inode** %10, align 8
  %33 = call i32 @PTR_ERR(%struct.inode* %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = call i64 @IS_ERR(%struct.inode* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %82

38:                                               ; preds = %26
  %39 = load %struct.inode*, %struct.inode** %10, align 8
  %40 = call %struct.exofs_i_info* @exofs_i(%struct.inode* %39)
  store %struct.exofs_i_info* %40, %struct.exofs_i_info** %11, align 8
  %41 = load i32, i32* %9, align 4
  %42 = zext i32 %41 to i64
  %43 = icmp ugt i64 %42, 4
  br i1 %43, label %44, label %63

44:                                               ; preds = %38
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  store i32* @exofs_symlink_inode_operations, i32** %46, align 8
  %47 = load %struct.inode*, %struct.inode** %10, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32* @exofs_aops, i32** %50, align 8
  %51 = load %struct.exofs_i_info*, %struct.exofs_i_info** %11, align 8
  %52 = getelementptr inbounds %struct.exofs_i_info, %struct.exofs_i_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memset(i32 %53, i32 0, i32 4)
  %55 = load %struct.inode*, %struct.inode** %10, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @page_symlink(%struct.inode* %55, i8* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %44
  br label %84

62:                                               ; preds = %44
  br label %76

63:                                               ; preds = %38
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 1
  store i32* @exofs_fast_symlink_inode_operations, i32** %65, align 8
  %66 = load %struct.exofs_i_info*, %struct.exofs_i_info** %11, align 8
  %67 = getelementptr inbounds %struct.exofs_i_info, %struct.exofs_i_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @memcpy(i32 %68, i8* %69, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = sub i32 %72, 1
  %74 = load %struct.inode*, %struct.inode** %10, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  br label %76

76:                                               ; preds = %63, %62
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = call i32 @mark_inode_dirty(%struct.inode* %77)
  %79 = load %struct.dentry*, %struct.dentry** %5, align 8
  %80 = load %struct.inode*, %struct.inode** %10, align 8
  %81 = call i32 @exofs_add_nondir(%struct.dentry* %79, %struct.inode* %80)
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %84, %76, %37, %25
  %83 = load i32, i32* %8, align 4
  ret i32 %83

84:                                               ; preds = %61
  %85 = load %struct.inode*, %struct.inode** %10, align 8
  %86 = call i32 @inode_dec_link_count(%struct.inode* %85)
  %87 = load %struct.inode*, %struct.inode** %10, align 8
  %88 = call i32 @iput(%struct.inode* %87)
  br label %82
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.inode* @exofs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.exofs_i_info* @exofs_i(%struct.inode*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @exofs_add_nondir(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_namei.c_nilfs_symlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_namei.c_nilfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block*, %struct.TYPE_2__*, i32* }
%struct.super_block = type { i32 }
%struct.TYPE_2__ = type { i32* }
%struct.dentry = type { i32 }
%struct.nilfs_transaction_info = type { i32 }

@ENAMETOOLONG = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@nilfs_symlink_inode_operations = common dso_local global i32 0, align 4
@nilfs_aops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @nilfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nilfs_transaction_info, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.inode*, %struct.inode** %5, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %9, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 @strlen(i8* %16)
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.super_block*, %struct.super_block** %9, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ugt i32 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @ENAMETOOLONG, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %86

27:                                               ; preds = %3
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load %struct.super_block*, %struct.super_block** %29, align 8
  %31 = call i32 @nilfs_transaction_begin(%struct.super_block* %30, %struct.nilfs_transaction_info* %8, i32 1)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %4, align 4
  br label %86

36:                                               ; preds = %27
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load i32, i32* @S_IFLNK, align 4
  %39 = load i32, i32* @S_IRWXUGO, align 4
  %40 = or i32 %38, %39
  %41 = call %struct.inode* @nilfs_new_inode(%struct.inode* %37, i32 %40)
  store %struct.inode* %41, %struct.inode** %11, align 8
  %42 = load %struct.inode*, %struct.inode** %11, align 8
  %43 = call i32 @PTR_ERR(%struct.inode* %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.inode*, %struct.inode** %11, align 8
  %45 = call i64 @IS_ERR(%struct.inode* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  br label %66

48:                                               ; preds = %36
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 2
  store i32* @nilfs_symlink_inode_operations, i32** %50, align 8
  %51 = load %struct.inode*, %struct.inode** %11, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32* @nilfs_aops, i32** %54, align 8
  %55 = load %struct.inode*, %struct.inode** %11, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @page_symlink(%struct.inode* %55, i8* %56, i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %81

62:                                               ; preds = %48
  %63 = load %struct.dentry*, %struct.dentry** %6, align 8
  %64 = load %struct.inode*, %struct.inode** %11, align 8
  %65 = call i32 @nilfs_add_nondir(%struct.dentry* %63, %struct.inode* %64)
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %81, %62, %47
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 0
  %72 = load %struct.super_block*, %struct.super_block** %71, align 8
  %73 = call i32 @nilfs_transaction_commit(%struct.super_block* %72)
  store i32 %73, i32* %12, align 4
  br label %79

74:                                               ; preds = %66
  %75 = load %struct.inode*, %struct.inode** %5, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 0
  %77 = load %struct.super_block*, %struct.super_block** %76, align 8
  %78 = call i32 @nilfs_transaction_abort(%struct.super_block* %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %4, align 4
  br label %86

81:                                               ; preds = %61
  %82 = load %struct.inode*, %struct.inode** %11, align 8
  %83 = call i32 @inode_dec_link_count(%struct.inode* %82)
  %84 = load %struct.inode*, %struct.inode** %11, align 8
  %85 = call i32 @iput(%struct.inode* %84)
  br label %66

86:                                               ; preds = %79, %34, %24
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nilfs_transaction_begin(%struct.super_block*, %struct.nilfs_transaction_info*, i32) #1

declare dso_local %struct.inode* @nilfs_new_inode(%struct.inode*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @page_symlink(%struct.inode*, i8*, i32) #1

declare dso_local i32 @nilfs_add_nondir(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @nilfs_transaction_commit(%struct.super_block*) #1

declare dso_local i32 @nilfs_transaction_abort(%struct.super_block*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_rename.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/omfs/extr_dir.c_omfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { %struct.TYPE_2__, %struct.inode* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.buffer_head = type { i32 }

@ENOTEMPTY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, %struct.inode*, %struct.dentry*)* @omfs_rename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omfs_rename(%struct.inode* %0, %struct.dentry* %1, %struct.inode* %2, %struct.dentry* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store %struct.dentry* %3, %struct.dentry** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %9, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 1
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %10, align 8
  %20 = load %struct.inode*, %struct.inode** %10, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @S_ISDIR(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.inode*, %struct.inode** %9, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %26, label %63

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOTEMPTY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.inode*, %struct.inode** %9, align 8
  %33 = call i32 @omfs_dir_is_empty(%struct.inode* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  br label %85

36:                                               ; preds = %31, %26
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %13, align 4
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = load %struct.dentry*, %struct.dentry** %8, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dentry*, %struct.dentry** %8, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.buffer_head* @omfs_find_entry(%struct.inode* %39, i32 %43, i32 %47)
  store %struct.buffer_head* %48, %struct.buffer_head** %11, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %50 = call i64 @IS_ERR(%struct.buffer_head* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %36
  br label %85

53:                                               ; preds = %36
  %54 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %55 = call i32 @brelse(%struct.buffer_head* %54)
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = load %struct.dentry*, %struct.dentry** %8, align 8
  %58 = call i32 @omfs_unlink(%struct.inode* %56, %struct.dentry* %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %85

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %4
  %64 = load %struct.inode*, %struct.inode** %10, align 8
  %65 = call i32 @inode_inc_link_count(%struct.inode* %64)
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = call i32 @omfs_unlink(%struct.inode* %66, %struct.dentry* %67)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = call i32 @inode_dec_link_count(%struct.inode* %72)
  br label %85

74:                                               ; preds = %63
  %75 = load %struct.dentry*, %struct.dentry** %8, align 8
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = call i32 @omfs_add_link(%struct.dentry* %75, %struct.inode* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %85

81:                                               ; preds = %74
  %82 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %83 = load %struct.inode*, %struct.inode** %10, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %80, %71, %61, %52, %35
  %86 = load i32, i32* %13, align 4
  ret i32 %86
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @omfs_dir_is_empty(%struct.inode*) #1

declare dso_local %struct.buffer_head* @omfs_find_entry(%struct.inode*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @omfs_unlink(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @inode_inc_link_count(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @omfs_add_link(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

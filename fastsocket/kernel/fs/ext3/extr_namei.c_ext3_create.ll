; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32*, i32* }
%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }

@EXT3_INDEX_EXTRA_TRANS_BLOCKS = common dso_local global i64 0, align 8
@ext3_file_inode_operations = common dso_local global i32 0, align 4
@ext3_file_operations = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.nameidata*)* @ext3_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_create(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.nameidata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %78, %4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @EXT3_DATA_TRANS_BLOCKS(i32 %18)
  %20 = load i64, i64* @EXT3_INDEX_EXTRA_TRANS_BLOCKS, align 8
  %21 = add nsw i64 %19, %20
  %22 = add nsw i64 %21, 3
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @EXT3_QUOTA_INIT_BLOCKS(i32 %25)
  %27 = mul nsw i32 2, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %22, %28
  %30 = call %struct.inode* @ext3_journal_start(%struct.inode* %15, i64 %29)
  store %struct.inode* %30, %struct.inode** %10, align 8
  %31 = load %struct.inode*, %struct.inode** %10, align 8
  %32 = call i64 @IS_ERR(%struct.inode* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %14
  %35 = load %struct.inode*, %struct.inode** %10, align 8
  %36 = call i32 @PTR_ERR(%struct.inode* %35)
  store i32 %36, i32* %5, align 4
  br label %81

37:                                               ; preds = %14
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call i64 @IS_DIRSYNC(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  br label %44

44:                                               ; preds = %41, %37
  %45 = load %struct.inode*, %struct.inode** %10, align 8
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call %struct.inode* @ext3_new_inode(%struct.inode* %45, %struct.inode* %46, i32 %47)
  store %struct.inode* %48, %struct.inode** %11, align 8
  %49 = load %struct.inode*, %struct.inode** %11, align 8
  %50 = call i32 @PTR_ERR(%struct.inode* %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.inode*, %struct.inode** %11, align 8
  %52 = call i64 @IS_ERR(%struct.inode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %44
  %55 = load %struct.inode*, %struct.inode** %11, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 3
  store i32* @ext3_file_inode_operations, i32** %56, align 8
  %57 = load %struct.inode*, %struct.inode** %11, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 2
  store i32* @ext3_file_operations, i32** %58, align 8
  %59 = load %struct.inode*, %struct.inode** %11, align 8
  %60 = call i32 @ext3_set_aops(%struct.inode* %59)
  %61 = load %struct.inode*, %struct.inode** %10, align 8
  %62 = load %struct.dentry*, %struct.dentry** %7, align 8
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = call i32 @ext3_add_nondir(%struct.inode* %61, %struct.dentry* %62, %struct.inode* %63)
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %54, %44
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = call i32 @ext3_journal_stop(%struct.inode* %66)
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @ENOSPC, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %79

72:                                               ; preds = %65
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @ext3_should_retry_alloc(i32 %75, i32* %13)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %14

79:                                               ; preds = %72, %65
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %79, %34
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.inode* @ext3_journal_start(%struct.inode*, i64) #1

declare dso_local i64 @EXT3_DATA_TRANS_BLOCKS(i32) #1

declare dso_local i32 @EXT3_QUOTA_INIT_BLOCKS(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local %struct.inode* @ext3_new_inode(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @ext3_set_aops(%struct.inode*) #1

declare dso_local i32 @ext3_add_nondir(%struct.inode*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ext3_journal_stop(%struct.inode*) #1

declare dso_local i64 @ext3_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_mknod.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32*, i32 }
%struct.dentry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EXT3_INDEX_EXTRA_TRANS_BLOCKS = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@ext3_special_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @ext3_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @new_valid_dev(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %88

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %85, %20
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @EXT3_DATA_TRANS_BLOCKS(i32 %25)
  %27 = load i64, i64* @EXT3_INDEX_EXTRA_TRANS_BLOCKS, align 8
  %28 = add nsw i64 %26, %27
  %29 = add nsw i64 %28, 3
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @EXT3_QUOTA_INIT_BLOCKS(i32 %32)
  %34 = mul nsw i32 2, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %29, %35
  %37 = call %struct.inode* @ext3_journal_start(%struct.inode* %22, i64 %36)
  store %struct.inode* %37, %struct.inode** %10, align 8
  %38 = load %struct.inode*, %struct.inode** %10, align 8
  %39 = call i64 @IS_ERR(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %21
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = call i32 @PTR_ERR(%struct.inode* %42)
  store i32 %43, i32* %5, align 4
  br label %88

44:                                               ; preds = %21
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = call i64 @IS_DIRSYNC(%struct.inode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.inode*, %struct.inode** %10, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %44
  %52 = load %struct.inode*, %struct.inode** %10, align 8
  %53 = load %struct.inode*, %struct.inode** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call %struct.inode* @ext3_new_inode(%struct.inode* %52, %struct.inode* %53, i32 %54)
  store %struct.inode* %55, %struct.inode** %11, align 8
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = call i32 @PTR_ERR(%struct.inode* %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.inode*, %struct.inode** %11, align 8
  %59 = call i64 @IS_ERR(%struct.inode* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %51
  %62 = load %struct.inode*, %struct.inode** %11, align 8
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @init_special_inode(%struct.inode* %62, i32 %65, i32 %66)
  %68 = load %struct.inode*, %struct.inode** %10, align 8
  %69 = load %struct.dentry*, %struct.dentry** %7, align 8
  %70 = load %struct.inode*, %struct.inode** %11, align 8
  %71 = call i32 @ext3_add_nondir(%struct.inode* %68, %struct.dentry* %69, %struct.inode* %70)
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %61, %51
  %73 = load %struct.inode*, %struct.inode** %10, align 8
  %74 = call i32 @ext3_journal_stop(%struct.inode* %73)
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @ENOSPC, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.inode*, %struct.inode** %6, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @ext3_should_retry_alloc(i32 %82, i32* %13)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  br label %21

86:                                               ; preds = %79, %72
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %41, %17
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @new_valid_dev(i32) #1

declare dso_local %struct.inode* @ext3_journal_start(%struct.inode*, i64) #1

declare dso_local i64 @EXT3_DATA_TRANS_BLOCKS(i32) #1

declare dso_local i32 @EXT3_QUOTA_INIT_BLOCKS(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local %struct.inode* @ext3_new_inode(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext3_add_nondir(%struct.inode*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ext3_journal_stop(%struct.inode*) #1

declare dso_local i64 @ext3_should_retry_alloc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hugetlbfs/extr_inode.c_hugetlbfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hugetlbfs/extr_inode.c_hugetlbfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.dentry*, i32*, i32, i32, i32, i32, %struct.hugetlbfs_sb_info* }
%struct.dentry = type { i32 }
%struct.hugetlbfs_sb_info = type { i32, i32, %struct.hugetlbfs_sb_info*, i32, i32* }
%struct.inode = type { i32 }
%struct.hugetlbfs_config = type { i32, i32, i32, i32, i32, i32* }

@default_hstate = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@HUGETLBFS_MAGIC = common dso_local global i32 0, align 4
@hugetlbfs_ops = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @hugetlbfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hugetlbfs_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hugetlbfs_config, align 8
  %12 = alloca %struct.hugetlbfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @save_mount_options(%struct.super_block* %13, i8* %14)
  %16 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 0
  store i32 -1, i32* %16, align 8
  %17 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  %18 = call i32 (...) @current_fsuid()
  %19 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 4
  store i32 %18, i32* %19, align 8
  %20 = call i32 (...) @current_fsgid()
  %21 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 3
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 2
  store i32 493, i32* %22, align 8
  %23 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 5
  store i32* @default_hstate, i32** %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @hugetlbfs_parse_options(i8* %24, %struct.hugetlbfs_config* %11)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %135

30:                                               ; preds = %3
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.hugetlbfs_sb_info* @kmalloc(i32 32, i32 %31)
  store %struct.hugetlbfs_sb_info* %32, %struct.hugetlbfs_sb_info** %12, align 8
  %33 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %12, align 8
  %34 = icmp ne %struct.hugetlbfs_sb_info* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %135

38:                                               ; preds = %30
  %39 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %12, align 8
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = getelementptr inbounds %struct.super_block, %struct.super_block* %40, i32 0, i32 7
  store %struct.hugetlbfs_sb_info* %39, %struct.hugetlbfs_sb_info** %41, align 8
  %42 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %12, align 8
  %45 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %44, i32 0, i32 4
  store i32* %43, i32** %45, align 8
  %46 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %12, align 8
  %47 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %46, i32 0, i32 3
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %12, align 8
  %52 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %12, align 8
  %56 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %12, align 8
  %58 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %57, i32 0, i32 2
  store %struct.hugetlbfs_sb_info* null, %struct.hugetlbfs_sb_info** %58, align 8
  %59 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %74

62:                                               ; preds = %38
  %63 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.hugetlbfs_sb_info* @hugepage_new_subpool(i32 %64)
  %66 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %12, align 8
  %67 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %66, i32 0, i32 2
  store %struct.hugetlbfs_sb_info* %65, %struct.hugetlbfs_sb_info** %67, align 8
  %68 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %12, align 8
  %69 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %68, i32 0, i32 2
  %70 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %69, align 8
  %71 = icmp ne %struct.hugetlbfs_sb_info* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %62
  br label %120

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %38
  %75 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %76 = load %struct.super_block*, %struct.super_block** %5, align 8
  %77 = getelementptr inbounds %struct.super_block, %struct.super_block* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @huge_page_size(i32* %79)
  %81 = load %struct.super_block*, %struct.super_block** %5, align 8
  %82 = getelementptr inbounds %struct.super_block, %struct.super_block* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 8
  %83 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @huge_page_shift(i32* %84)
  %86 = load %struct.super_block*, %struct.super_block** %5, align 8
  %87 = getelementptr inbounds %struct.super_block, %struct.super_block* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @HUGETLBFS_MAGIC, align 4
  %89 = load %struct.super_block*, %struct.super_block** %5, align 8
  %90 = getelementptr inbounds %struct.super_block, %struct.super_block* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 8
  %91 = load %struct.super_block*, %struct.super_block** %5, align 8
  %92 = getelementptr inbounds %struct.super_block, %struct.super_block* %91, i32 0, i32 2
  store i32* @hugetlbfs_ops, i32** %92, align 8
  %93 = load %struct.super_block*, %struct.super_block** %5, align 8
  %94 = getelementptr inbounds %struct.super_block, %struct.super_block* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.super_block*, %struct.super_block** %5, align 8
  %96 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @S_IFDIR, align 4
  %101 = getelementptr inbounds %struct.hugetlbfs_config, %struct.hugetlbfs_config* %11, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %100, %102
  %104 = call %struct.inode* @hugetlbfs_get_inode(%struct.super_block* %95, i32 %97, i32 %99, i32 %103, i32 0)
  store %struct.inode* %104, %struct.inode** %8, align 8
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = icmp ne %struct.inode* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %74
  br label %120

108:                                              ; preds = %74
  %109 = load %struct.inode*, %struct.inode** %8, align 8
  %110 = call %struct.dentry* @d_alloc_root(%struct.inode* %109)
  store %struct.dentry* %110, %struct.dentry** %9, align 8
  %111 = load %struct.dentry*, %struct.dentry** %9, align 8
  %112 = icmp ne %struct.dentry* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %108
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = call i32 @iput(%struct.inode* %114)
  br label %120

116:                                              ; preds = %108
  %117 = load %struct.dentry*, %struct.dentry** %9, align 8
  %118 = load %struct.super_block*, %struct.super_block** %5, align 8
  %119 = getelementptr inbounds %struct.super_block, %struct.super_block* %118, i32 0, i32 1
  store %struct.dentry* %117, %struct.dentry** %119, align 8
  store i32 0, i32* %4, align 4
  br label %135

120:                                              ; preds = %113, %107, %72
  %121 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %12, align 8
  %122 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %121, i32 0, i32 2
  %123 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %122, align 8
  %124 = icmp ne %struct.hugetlbfs_sb_info* %123, null
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %12, align 8
  %127 = getelementptr inbounds %struct.hugetlbfs_sb_info, %struct.hugetlbfs_sb_info* %126, i32 0, i32 2
  %128 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %127, align 8
  %129 = call i32 @kfree(%struct.hugetlbfs_sb_info* %128)
  br label %130

130:                                              ; preds = %125, %120
  %131 = load %struct.hugetlbfs_sb_info*, %struct.hugetlbfs_sb_info** %12, align 8
  %132 = call i32 @kfree(%struct.hugetlbfs_sb_info* %131)
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %130, %116, %35, %28
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @save_mount_options(%struct.super_block*, i8*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @hugetlbfs_parse_options(i8*, %struct.hugetlbfs_config*) #1

declare dso_local %struct.hugetlbfs_sb_info* @kmalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.hugetlbfs_sb_info* @hugepage_new_subpool(i32) #1

declare dso_local i32 @huge_page_size(i32*) #1

declare dso_local i32 @huge_page_shift(i32*) #1

declare dso_local %struct.inode* @hugetlbfs_get_inode(%struct.super_block*, i32, i32, i32, i32) #1

declare dso_local %struct.dentry* @d_alloc_root(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.hugetlbfs_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

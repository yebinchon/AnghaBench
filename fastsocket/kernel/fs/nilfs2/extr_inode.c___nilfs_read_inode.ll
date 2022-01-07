; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c___nilfs_read_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nilfs2/extr_inode.c___nilfs_read_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32, i32*, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32* }
%struct.nilfs_sb_info = type { i32, i32 }
%struct.buffer_head = type { i32 }
%struct.nilfs_inode = type { i32 }
%struct.TYPE_4__ = type { i32 }

@nilfs_file_inode_operations = common dso_local global i32 0, align 4
@nilfs_file_operations = common dso_local global i32 0, align 4
@nilfs_aops = common dso_local global i32 0, align 4
@nilfs_dir_inode_operations = common dso_local global i32 0, align 4
@nilfs_dir_operations = common dso_local global i32 0, align 4
@nilfs_symlink_inode_operations = common dso_local global i32 0, align 4
@nilfs_special_inode_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i64, %struct.inode*)* @__nilfs_read_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nilfs_read_inode(%struct.super_block* %0, i64 %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.nilfs_sb_info*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.nilfs_inode*, align 8
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block* %13)
  store %struct.nilfs_sb_info* %14, %struct.nilfs_sb_info** %8, align 8
  %15 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %8, align 8
  %16 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.inode* @nilfs_dat_inode(i32 %17)
  store %struct.inode* %18, %struct.inode** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %9, align 8
  %20 = call %struct.TYPE_4__* @NILFS_MDT(%struct.inode* %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @down_read(i32* %21)
  %23 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %8, align 8
  %24 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @nilfs_ifile_get_inode_block(i32 %25, i64 %26, %struct.buffer_head** %10)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %127

32:                                               ; preds = %3
  %33 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %8, align 8
  %34 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %38 = call %struct.nilfs_inode* @nilfs_ifile_map_inode(i32 %35, i64 %36, %struct.buffer_head* %37)
  store %struct.nilfs_inode* %38, %struct.nilfs_inode** %11, align 8
  %39 = load %struct.inode*, %struct.inode** %7, align 8
  %40 = load %struct.nilfs_inode*, %struct.nilfs_inode** %11, align 8
  %41 = call i32 @nilfs_read_inode_common(%struct.inode* %39, %struct.nilfs_inode* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %118

45:                                               ; preds = %32
  %46 = load %struct.inode*, %struct.inode** %7, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @S_ISREG(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.inode*, %struct.inode** %7, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  store i32* @nilfs_file_inode_operations, i32** %53, align 8
  %54 = load %struct.inode*, %struct.inode** %7, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 3
  store i32* @nilfs_file_operations, i32** %55, align 8
  %56 = load %struct.inode*, %struct.inode** %7, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32* @nilfs_aops, i32** %59, align 8
  br label %103

60:                                               ; preds = %45
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @S_ISDIR(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  store i32* @nilfs_dir_inode_operations, i32** %68, align 8
  %69 = load %struct.inode*, %struct.inode** %7, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 3
  store i32* @nilfs_dir_operations, i32** %70, align 8
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32* @nilfs_aops, i32** %74, align 8
  br label %102

75:                                               ; preds = %60
  %76 = load %struct.inode*, %struct.inode** %7, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @S_ISLNK(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.inode*, %struct.inode** %7, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 1
  store i32* @nilfs_symlink_inode_operations, i32** %83, align 8
  %84 = load %struct.inode*, %struct.inode** %7, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 2
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32* @nilfs_aops, i32** %87, align 8
  br label %101

88:                                               ; preds = %75
  %89 = load %struct.inode*, %struct.inode** %7, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 1
  store i32* @nilfs_special_inode_operations, i32** %90, align 8
  %91 = load %struct.inode*, %struct.inode** %7, align 8
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.nilfs_inode*, %struct.nilfs_inode** %11, align 8
  %96 = getelementptr inbounds %struct.nilfs_inode, %struct.nilfs_inode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le64_to_cpu(i32 %97)
  %99 = call i32 @new_decode_dev(i32 %98)
  %100 = call i32 @init_special_inode(%struct.inode* %91, i32 %94, i32 %99)
  br label %101

101:                                              ; preds = %88, %81
  br label %102

102:                                              ; preds = %101, %66
  br label %103

103:                                              ; preds = %102, %51
  %104 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %8, align 8
  %105 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %109 = call i32 @nilfs_ifile_unmap_inode(i32 %106, i64 %107, %struct.buffer_head* %108)
  %110 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %111 = call i32 @brelse(%struct.buffer_head* %110)
  %112 = load %struct.inode*, %struct.inode** %9, align 8
  %113 = call %struct.TYPE_4__* @NILFS_MDT(%struct.inode* %112)
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = call i32 @up_read(i32* %114)
  %116 = load %struct.inode*, %struct.inode** %7, align 8
  %117 = call i32 @nilfs_set_inode_flags(%struct.inode* %116)
  store i32 0, i32* %4, align 4
  br label %133

118:                                              ; preds = %44
  %119 = load %struct.nilfs_sb_info*, %struct.nilfs_sb_info** %8, align 8
  %120 = getelementptr inbounds %struct.nilfs_sb_info, %struct.nilfs_sb_info* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %6, align 8
  %123 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %124 = call i32 @nilfs_ifile_unmap_inode(i32 %121, i64 %122, %struct.buffer_head* %123)
  %125 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %126 = call i32 @brelse(%struct.buffer_head* %125)
  br label %127

127:                                              ; preds = %118, %31
  %128 = load %struct.inode*, %struct.inode** %9, align 8
  %129 = call %struct.TYPE_4__* @NILFS_MDT(%struct.inode* %128)
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = call i32 @up_read(i32* %130)
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %127, %103
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local %struct.nilfs_sb_info* @NILFS_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @nilfs_dat_inode(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_4__* @NILFS_MDT(%struct.inode*) #1

declare dso_local i32 @nilfs_ifile_get_inode_block(i32, i64, %struct.buffer_head**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.nilfs_inode* @nilfs_ifile_map_inode(i32, i64, %struct.buffer_head*) #1

declare dso_local i32 @nilfs_read_inode_common(%struct.inode*, %struct.nilfs_inode*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #1

declare dso_local i32 @new_decode_dev(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @nilfs_ifile_unmap_inode(i32, i64, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @nilfs_set_inode_flags(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ext4_dir_entry_2 = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ERR_BAD_DX_DIR = common dso_local global i32 0, align 4
@EXT4_INODE_INDEX = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EXT4_FEATURE_COMPAT_DIR_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.dentry*, %struct.inode*)* @ext4_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_add_entry(i32* %0, %struct.dentry* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.ext4_dir_entry_2*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %8, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load %struct.super_block*, %struct.super_block** %23, align 8
  store %struct.super_block* %24, %struct.super_block** %11, align 8
  %25 = load %struct.super_block*, %struct.super_block** %11, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.dentry*, %struct.dentry** %6, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %149

36:                                               ; preds = %3
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = call i64 @is_dx(%struct.inode* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.dentry*, %struct.dentry** %6, align 8
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = call i32 @ext4_dx_add_entry(i32* %41, %struct.dentry* %42, %struct.inode* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @ERR_BAD_DX_DIR, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %40
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %4, align 4
  br label %149

53:                                               ; preds = %47
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = load i32, i32* @EXT4_INODE_INDEX, align 4
  %56 = call i32 @ext4_clear_inode_flag(%struct.inode* %54, i32 %55)
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = load %struct.inode*, %struct.inode** %8, align 8
  %61 = call i32 @ext4_mark_inode_dirty(i32* %59, %struct.inode* %60)
  br label %62

62:                                               ; preds = %53, %36
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.super_block*, %struct.super_block** %11, align 8
  %67 = getelementptr inbounds %struct.super_block, %struct.super_block* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %65, %68
  store i32 %69, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %117, %62
  %71 = load i32, i32* %15, align 4
  %72 = load i32, i32* %16, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %120

74:                                               ; preds = %70
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call %struct.buffer_head* @ext4_bread(i32* %75, %struct.inode* %76, i32 %77, i32 0, i32* %12)
  store %struct.buffer_head* %78, %struct.buffer_head** %9, align 8
  %79 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %80 = icmp ne %struct.buffer_head* %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %4, align 4
  br label %149

83:                                               ; preds = %74
  %84 = load i32*, i32** %5, align 8
  %85 = load %struct.dentry*, %struct.dentry** %6, align 8
  %86 = load %struct.inode*, %struct.inode** %7, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %88 = call i32 @add_dirent_to_buf(i32* %84, %struct.dentry* %85, %struct.inode* %86, %struct.ext4_dir_entry_2* null, %struct.buffer_head* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @ENOSPC, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp ne i32 %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %83
  %94 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %95 = call i32 @brelse(%struct.buffer_head* %94)
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %4, align 4
  br label %149

97:                                               ; preds = %83
  %98 = load i32, i32* %16, align 4
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %100, label %114

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %114, label %103

103:                                              ; preds = %100
  %104 = load %struct.super_block*, %struct.super_block** %11, align 8
  %105 = load i32, i32* @EXT4_FEATURE_COMPAT_DIR_INDEX, align 4
  %106 = call i64 @EXT4_HAS_COMPAT_FEATURE(%struct.super_block* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i32*, i32** %5, align 8
  %110 = load %struct.dentry*, %struct.dentry** %6, align 8
  %111 = load %struct.inode*, %struct.inode** %7, align 8
  %112 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %113 = call i32 @make_indexed_dir(i32* %109, %struct.dentry* %110, %struct.inode* %111, %struct.buffer_head* %112)
  store i32 %113, i32* %4, align 4
  br label %149

114:                                              ; preds = %103, %100, %97
  %115 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %116 = call i32 @brelse(%struct.buffer_head* %115)
  br label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %15, align 4
  br label %70

120:                                              ; preds = %70
  %121 = load i32*, i32** %5, align 8
  %122 = load %struct.inode*, %struct.inode** %8, align 8
  %123 = call %struct.buffer_head* @ext4_append(i32* %121, %struct.inode* %122, i32* %15, i32* %12)
  store %struct.buffer_head* %123, %struct.buffer_head** %9, align 8
  %124 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %125 = icmp ne %struct.buffer_head* %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %4, align 4
  br label %149

128:                                              ; preds = %120
  %129 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %130 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %132, %struct.ext4_dir_entry_2** %10, align 8
  %133 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %134 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %133, i32 0, i32 1
  store i64 0, i64* %134, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @ext4_rec_len_to_disk(i32 %135, i32 %136)
  %138 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %139 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load %struct.dentry*, %struct.dentry** %6, align 8
  %142 = load %struct.inode*, %struct.inode** %7, align 8
  %143 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %10, align 8
  %144 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %145 = call i32 @add_dirent_to_buf(i32* %140, %struct.dentry* %141, %struct.inode* %142, %struct.ext4_dir_entry_2* %143, %struct.buffer_head* %144)
  store i32 %145, i32* %12, align 4
  %146 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %147 = call i32 @brelse(%struct.buffer_head* %146)
  %148 = load i32, i32* %12, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %128, %126, %108, %93, %81, %51, %33
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local i64 @is_dx(%struct.inode*) #1

declare dso_local i32 @ext4_dx_add_entry(i32*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ext4_clear_inode_flag(%struct.inode*, i32) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local %struct.buffer_head* @ext4_bread(i32*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @add_dirent_to_buf(i32*, %struct.dentry*, %struct.inode*, %struct.ext4_dir_entry_2*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @EXT4_HAS_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @make_indexed_dir(i32*, %struct.dentry*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @ext4_append(i32*, %struct.inode*, i32*, i32*) #1

declare dso_local i32 @ext4_rec_len_to_disk(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_add_entry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.inode* }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ext3_dir_entry_2 = type { i32, i64 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ERR_BAD_DX_DIR = common dso_local global i32 0, align 4
@EXT3_INDEX_FL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EXT3_FEATURE_COMPAT_DIR_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.dentry*, %struct.inode*)* @ext3_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_add_entry(i32* %0, %struct.dentry* %1, %struct.inode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ext3_dir_entry_2*, align 8
  %12 = alloca %struct.super_block*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.inode*, %struct.inode** %21, align 8
  store %struct.inode* %22, %struct.inode** %8, align 8
  store i32 0, i32* %14, align 4
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load %struct.super_block*, %struct.super_block** %24, align 8
  store %struct.super_block* %25, %struct.super_block** %12, align 8
  %26 = load %struct.super_block*, %struct.super_block** %12, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.dentry*, %struct.dentry** %6, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %148

37:                                               ; preds = %3
  %38 = load %struct.inode*, %struct.inode** %8, align 8
  %39 = call i64 @is_dx(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = call i32 @ext3_dx_add_entry(i32* %42, %struct.dentry* %43, %struct.inode* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @ERR_BAD_DX_DIR, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %41
  %53 = load i32, i32* %13, align 4
  store i32 %53, i32* %4, align 4
  br label %148

54:                                               ; preds = %48
  %55 = load i32, i32* @EXT3_INDEX_FL, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = call %struct.TYPE_6__* @EXT3_I(%struct.inode* %57)
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %56
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = call i32 @ext3_mark_inode_dirty(i32* %64, %struct.inode* %65)
  br label %67

67:                                               ; preds = %54, %37
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.super_block*, %struct.super_block** %12, align 8
  %72 = getelementptr inbounds %struct.super_block, %struct.super_block* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %70, %73
  store i32 %74, i32* %17, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %9, align 8
  br label %75

75:                                               ; preds = %120, %67
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %123

79:                                               ; preds = %75
  %80 = load i32*, i32** %5, align 8
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = load i32, i32* %16, align 4
  %83 = call %struct.buffer_head* @ext3_bread(i32* %80, %struct.inode* %81, i32 %82, i32 0, i32* %13)
  store %struct.buffer_head* %83, %struct.buffer_head** %10, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %85 = icmp ne %struct.buffer_head* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %4, align 4
  br label %148

88:                                               ; preds = %79
  %89 = load i32*, i32** %5, align 8
  %90 = load %struct.dentry*, %struct.dentry** %6, align 8
  %91 = load %struct.inode*, %struct.inode** %7, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %93 = call i32 @add_dirent_to_buf(i32* %89, %struct.dentry* %90, %struct.inode* %91, %struct.ext3_dir_entry_2* null, %struct.buffer_head* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @ENOSPC, align 4
  %96 = sub nsw i32 0, %95
  %97 = icmp ne i32 %94, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %88
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %4, align 4
  br label %148

100:                                              ; preds = %88
  %101 = load i32, i32* %17, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %103
  %107 = load %struct.super_block*, %struct.super_block** %12, align 8
  %108 = load i32, i32* @EXT3_FEATURE_COMPAT_DIR_INDEX, align 4
  %109 = call i64 @EXT3_HAS_COMPAT_FEATURE(%struct.super_block* %107, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.dentry*, %struct.dentry** %6, align 8
  %114 = load %struct.inode*, %struct.inode** %7, align 8
  %115 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %116 = call i32 @make_indexed_dir(i32* %112, %struct.dentry* %113, %struct.inode* %114, %struct.buffer_head* %115)
  store i32 %116, i32* %4, align 4
  br label %148

117:                                              ; preds = %106, %103, %100
  %118 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %119 = call i32 @brelse(%struct.buffer_head* %118)
  br label %120

120:                                              ; preds = %117
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %16, align 4
  br label %75

123:                                              ; preds = %75
  %124 = load i32*, i32** %5, align 8
  %125 = load %struct.inode*, %struct.inode** %8, align 8
  %126 = call %struct.buffer_head* @ext3_append(i32* %124, %struct.inode* %125, i32* %16, i32* %13)
  store %struct.buffer_head* %126, %struct.buffer_head** %10, align 8
  %127 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %128 = icmp ne %struct.buffer_head* %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %13, align 4
  store i32 %130, i32* %4, align 4
  br label %148

131:                                              ; preds = %123
  %132 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %133 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %135, %struct.ext3_dir_entry_2** %11, align 8
  %136 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %137 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %136, i32 0, i32 1
  store i64 0, i64* %137, align 8
  %138 = load i32, i32* %15, align 4
  %139 = call i32 @ext3_rec_len_to_disk(i32 %138)
  %140 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %141 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load i32*, i32** %5, align 8
  %143 = load %struct.dentry*, %struct.dentry** %6, align 8
  %144 = load %struct.inode*, %struct.inode** %7, align 8
  %145 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %146 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %147 = call i32 @add_dirent_to_buf(i32* %142, %struct.dentry* %143, %struct.inode* %144, %struct.ext3_dir_entry_2* %145, %struct.buffer_head* %146)
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %131, %129, %111, %98, %86, %52, %34
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i64 @is_dx(%struct.inode*) #1

declare dso_local i32 @ext3_dx_add_entry(i32*, %struct.dentry*, %struct.inode*) #1

declare dso_local %struct.TYPE_6__* @EXT3_I(%struct.inode*) #1

declare dso_local i32 @ext3_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local %struct.buffer_head* @ext3_bread(i32*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @add_dirent_to_buf(i32*, %struct.dentry*, %struct.inode*, %struct.ext3_dir_entry_2*, %struct.buffer_head*) #1

declare dso_local i64 @EXT3_HAS_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @make_indexed_dir(i32*, %struct.dentry*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @ext3_append(i32*, %struct.inode*, i32*, i32*) #1

declare dso_local i32 @ext3_rec_len_to_disk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

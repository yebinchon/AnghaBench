; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_htree_dirblock_to_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_htree_dirblock_to_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dx_hash_info = type { i64, i64 }
%struct.buffer_head = type { i8* }
%struct.ext3_dir_entry_2 = type { i64, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"In htree dirblock_to_tree: block %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"htree_dirblock_to_tree\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.inode*, i32, %struct.dx_hash_info*, i64, i64)* @htree_dirblock_to_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htree_dirblock_to_tree(%struct.file* %0, %struct.inode* %1, i32 %2, %struct.dx_hash_info* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dx_hash_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.ext3_dir_entry_2*, align 8
  %16 = alloca %struct.ext3_dir_entry_2*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.dx_hash_info* %3, %struct.dx_hash_info** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = call i32 @dxtrace(i32 %20)
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.buffer_head* @ext3_bread(i32* null, %struct.inode* %22, i32 %23, i32 0, i32* %17)
  store %struct.buffer_head* %24, %struct.buffer_head** %14, align 8
  %25 = icmp ne %struct.buffer_head* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* %17, align 4
  store i32 %27, i32* %7, align 4
  br label %149

28:                                               ; preds = %6
  %29 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %30 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = bitcast i8* %31 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %32, %struct.ext3_dir_entry_2** %15, align 8
  %33 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %15, align 8
  %34 = bitcast %struct.ext3_dir_entry_2* %33 to i8*
  %35 = load %struct.inode*, %struct.inode** %9, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %34, i64 %40
  %42 = call i8* @EXT3_DIR_REC_LEN(i32 0)
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = inttoptr i64 %45 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %46, %struct.ext3_dir_entry_2** %16, align 8
  br label %47

47:                                               ; preds = %142, %28
  %48 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %15, align 8
  %49 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %16, align 8
  %50 = icmp ult %struct.ext3_dir_entry_2* %48, %49
  br i1 %50, label %51, label %145

51:                                               ; preds = %47
  %52 = load %struct.inode*, %struct.inode** %9, align 8
  %53 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %15, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.inode*, %struct.inode** %9, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = call i32 @EXT3_BLOCK_SIZE_BITS(%struct.TYPE_2__* %58)
  %60 = shl i32 %55, %59
  %61 = sext i32 %60 to i64
  %62 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %15, align 8
  %63 = bitcast %struct.ext3_dir_entry_2* %62 to i8*
  %64 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %65 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = ptrtoint i8* %63 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = add nsw i64 %61, %69
  %71 = trunc i64 %70 to i32
  %72 = call i32 @ext3_check_dir_entry(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %52, %struct.ext3_dir_entry_2* %53, %struct.buffer_head* %54, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %51
  %75 = load %struct.file*, %struct.file** %8, align 8
  %76 = getelementptr inbounds %struct.file, %struct.file* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.inode*, %struct.inode** %9, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub nsw i32 %82, 1
  %84 = or i32 %77, %83
  %85 = add nsw i32 %84, 1
  %86 = load %struct.file*, %struct.file** %8, align 8
  %87 = getelementptr inbounds %struct.file, %struct.file* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %89 = call i32 @brelse(%struct.buffer_head* %88)
  %90 = load i32, i32* %18, align 4
  store i32 %90, i32* %7, align 4
  br label %149

91:                                               ; preds = %51
  %92 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %15, align 8
  %93 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %15, align 8
  %96 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.dx_hash_info*, %struct.dx_hash_info** %11, align 8
  %99 = call i32 @ext3fs_dirhash(i32 %94, i32 %97, %struct.dx_hash_info* %98)
  %100 = load %struct.dx_hash_info*, %struct.dx_hash_info** %11, align 8
  %101 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %12, align 8
  %104 = icmp slt i64 %102, %103
  br i1 %104, label %117, label %105

105:                                              ; preds = %91
  %106 = load %struct.dx_hash_info*, %struct.dx_hash_info** %11, align 8
  %107 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* %12, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load %struct.dx_hash_info*, %struct.dx_hash_info** %11, align 8
  %113 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %13, align 8
  %116 = icmp slt i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111, %91
  br label %142

118:                                              ; preds = %111, %105
  %119 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %15, align 8
  %120 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %142

124:                                              ; preds = %118
  %125 = load %struct.file*, %struct.file** %8, align 8
  %126 = load %struct.dx_hash_info*, %struct.dx_hash_info** %11, align 8
  %127 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.dx_hash_info*, %struct.dx_hash_info** %11, align 8
  %130 = getelementptr inbounds %struct.dx_hash_info, %struct.dx_hash_info* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %15, align 8
  %133 = call i32 @ext3_htree_store_dirent(%struct.file* %125, i64 %128, i64 %131, %struct.ext3_dir_entry_2* %132)
  store i32 %133, i32* %17, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %124
  %136 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %137 = call i32 @brelse(%struct.buffer_head* %136)
  %138 = load i32, i32* %17, align 4
  store i32 %138, i32* %7, align 4
  br label %149

139:                                              ; preds = %124
  %140 = load i32, i32* %18, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %18, align 4
  br label %142

142:                                              ; preds = %139, %123, %117
  %143 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %15, align 8
  %144 = call %struct.ext3_dir_entry_2* @ext3_next_entry(%struct.ext3_dir_entry_2* %143)
  store %struct.ext3_dir_entry_2* %144, %struct.ext3_dir_entry_2** %15, align 8
  br label %47

145:                                              ; preds = %47
  %146 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %147 = call i32 @brelse(%struct.buffer_head* %146)
  %148 = load i32, i32* %18, align 4
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %145, %135, %74, %26
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @dxtrace(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local %struct.buffer_head* @ext3_bread(i32*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i8* @EXT3_DIR_REC_LEN(i32) #1

declare dso_local i32 @ext3_check_dir_entry(i8*, %struct.inode*, %struct.ext3_dir_entry_2*, %struct.buffer_head*, i32) #1

declare dso_local i32 @EXT3_BLOCK_SIZE_BITS(%struct.TYPE_2__*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext3fs_dirhash(i32, i32, %struct.dx_hash_info*) #1

declare dso_local i32 @ext3_htree_store_dirent(%struct.file*, i64, i64, %struct.ext3_dir_entry_2*) #1

declare dso_local %struct.ext3_dir_entry_2* @ext3_next_entry(%struct.ext3_dir_entry_2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

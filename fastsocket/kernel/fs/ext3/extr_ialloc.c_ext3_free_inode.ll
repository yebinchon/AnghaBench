; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_ialloc.c_ext3_free_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_ialloc.c_ext3_free_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext3_group_desc = type { i32, i32 }
%struct.ext3_super_block = type { i32 }
%struct.ext3_sb_info = type { i32, i32, %struct.ext3_super_block* }

@.str = private unnamed_addr constant [37 x i8] c"ext3_free_inode: inode has count=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"ext3_free_inode: inode has nlink=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"ext3_free_inode: inode on nonexistent device\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"freeing inode %lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"ext3_free_inode\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"reserved or nonexistent inode %lu\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"bit already cleared for inode %lu\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"call ext3_journal_dirty_metadata\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext3_free_inode(i32* %0, %struct.inode* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ext3_group_desc*, align 8
  %13 = alloca %struct.ext3_super_block*, align 8
  %14 = alloca %struct.ext3_sb_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 4
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %8, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 3
  %22 = call i32 @atomic_read(i32* %21)
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 3
  %27 = call i32 @atomic_read(i32* %26)
  %28 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %200

29:                                               ; preds = %2
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %200

39:                                               ; preds = %29
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = icmp ne %struct.super_block* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %39
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %200

44:                                               ; preds = %39
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = call %struct.ext3_sb_info* @EXT3_SB(%struct.super_block* %45)
  store %struct.ext3_sb_info* %46, %struct.ext3_sb_info** %14, align 8
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @ext3_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %50)
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = call i32 @trace_ext3_free_inode(%struct.inode* %52)
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = call i32 @vfs_dq_init(%struct.inode* %54)
  %56 = load i32*, i32** %3, align 8
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = call i32 @ext3_xattr_delete_inode(i32* %56, %struct.inode* %57)
  %59 = load %struct.inode*, %struct.inode** %4, align 8
  %60 = call i32 @vfs_dq_free_inode(%struct.inode* %59)
  %61 = load %struct.inode*, %struct.inode** %4, align 8
  %62 = call i32 @vfs_dq_drop(%struct.inode* %61)
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @S_ISDIR(i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = call i32 @clear_inode(%struct.inode* %67)
  %69 = load %struct.super_block*, %struct.super_block** %5, align 8
  %70 = call %struct.ext3_sb_info* @EXT3_SB(%struct.super_block* %69)
  %71 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %70, i32 0, i32 2
  %72 = load %struct.ext3_super_block*, %struct.ext3_super_block** %71, align 8
  store %struct.ext3_super_block* %72, %struct.ext3_super_block** %13, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.super_block*, %struct.super_block** %5, align 8
  %75 = call i64 @EXT3_FIRST_INO(%struct.super_block* %74)
  %76 = icmp ult i64 %73, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %44
  %78 = load i64, i64* %7, align 8
  %79 = load %struct.ext3_super_block*, %struct.ext3_super_block** %13, align 8
  %80 = getelementptr inbounds %struct.ext3_super_block, %struct.ext3_super_block* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @le32_to_cpu(i32 %81)
  %83 = icmp ugt i64 %78, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77, %44
  %85 = load %struct.super_block*, %struct.super_block** %5, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @ext3_error(%struct.super_block* %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i64 %86)
  br label %194

88:                                               ; preds = %77
  %89 = load i64, i64* %7, align 8
  %90 = sub i64 %89, 1
  %91 = load %struct.super_block*, %struct.super_block** %5, align 8
  %92 = call i64 @EXT3_INODES_PER_GROUP(%struct.super_block* %91)
  %93 = udiv i64 %90, %92
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %7, align 8
  %95 = sub i64 %94, 1
  %96 = load %struct.super_block*, %struct.super_block** %5, align 8
  %97 = call i64 @EXT3_INODES_PER_GROUP(%struct.super_block* %96)
  %98 = urem i64 %95, %97
  store i64 %98, i64* %11, align 8
  %99 = load %struct.super_block*, %struct.super_block** %5, align 8
  %100 = load i64, i64* %10, align 8
  %101 = call %struct.buffer_head* @read_inode_bitmap(%struct.super_block* %99, i64 %100)
  store %struct.buffer_head* %101, %struct.buffer_head** %8, align 8
  %102 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %103 = icmp ne %struct.buffer_head* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %88
  br label %194

105:                                              ; preds = %88
  %106 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %107 = call i32 @BUFFER_TRACE(%struct.buffer_head* %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %108 = load i32*, i32** %3, align 8
  %109 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %110 = call i32 @ext3_journal_get_write_access(i32* %108, %struct.buffer_head* %109)
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %194

114:                                              ; preds = %105
  %115 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %116 = load i64, i64* %10, align 8
  %117 = call i32 @sb_bgl_lock(%struct.ext3_sb_info* %115, i64 %116)
  %118 = load i64, i64* %11, align 8
  %119 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %120 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ext3_clear_bit_atomic(i32 %117, i64 %118, i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %114
  %125 = load %struct.super_block*, %struct.super_block** %5, align 8
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @ext3_error(%struct.super_block* %125, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i64 %126)
  br label %183

128:                                              ; preds = %114
  %129 = load %struct.super_block*, %struct.super_block** %5, align 8
  %130 = load i64, i64* %10, align 8
  %131 = call %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block* %129, i64 %130, %struct.buffer_head** %9)
  store %struct.ext3_group_desc* %131, %struct.ext3_group_desc** %12, align 8
  %132 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %133 = call i32 @BUFFER_TRACE(%struct.buffer_head* %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %134 = load i32*, i32** %3, align 8
  %135 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %136 = call i32 @ext3_journal_get_write_access(i32* %134, %struct.buffer_head* %135)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  br label %194

140:                                              ; preds = %128
  %141 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %12, align 8
  %142 = icmp ne %struct.ext3_group_desc* %141, null
  br i1 %142, label %143, label %172

143:                                              ; preds = %140
  %144 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %145 = load i64, i64* %10, align 8
  %146 = call i32 @sb_bgl_lock(%struct.ext3_sb_info* %144, i64 %145)
  %147 = call i32 @spin_lock(i32 %146)
  %148 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %12, align 8
  %149 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %148, i32 0, i32 1
  %150 = call i32 @le16_add_cpu(i32* %149, i32 1)
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %143
  %154 = load %struct.ext3_group_desc*, %struct.ext3_group_desc** %12, align 8
  %155 = getelementptr inbounds %struct.ext3_group_desc, %struct.ext3_group_desc* %154, i32 0, i32 0
  %156 = call i32 @le16_add_cpu(i32* %155, i32 -1)
  br label %157

157:                                              ; preds = %153, %143
  %158 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %159 = load i64, i64* %10, align 8
  %160 = call i32 @sb_bgl_lock(%struct.ext3_sb_info* %158, i64 %159)
  %161 = call i32 @spin_unlock(i32 %160)
  %162 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %163 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %162, i32 0, i32 1
  %164 = call i32 @percpu_counter_inc(i32* %163)
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %157
  %168 = load %struct.ext3_sb_info*, %struct.ext3_sb_info** %14, align 8
  %169 = getelementptr inbounds %struct.ext3_sb_info, %struct.ext3_sb_info* %168, i32 0, i32 0
  %170 = call i32 @percpu_counter_dec(i32* %169)
  br label %171

171:                                              ; preds = %167, %157
  br label %172

172:                                              ; preds = %171, %140
  %173 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %174 = call i32 @BUFFER_TRACE(%struct.buffer_head* %173, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %175 = load i32*, i32** %3, align 8
  %176 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %177 = call i32 @ext3_journal_dirty_metadata(i32* %175, %struct.buffer_head* %176)
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %15, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %182, label %180

180:                                              ; preds = %172
  %181 = load i32, i32* %16, align 4
  store i32 %181, i32* %15, align 4
  br label %182

182:                                              ; preds = %180, %172
  br label %183

183:                                              ; preds = %182, %124
  %184 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %185 = call i32 @BUFFER_TRACE(%struct.buffer_head* %184, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %186 = load i32*, i32** %3, align 8
  %187 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %188 = call i32 @ext3_journal_dirty_metadata(i32* %186, %struct.buffer_head* %187)
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %15, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %193, label %191

191:                                              ; preds = %183
  %192 = load i32, i32* %16, align 4
  store i32 %192, i32* %15, align 4
  br label %193

193:                                              ; preds = %191, %183
  br label %194

194:                                              ; preds = %193, %139, %113, %104, %84
  %195 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %196 = call i32 @brelse(%struct.buffer_head* %195)
  %197 = load %struct.super_block*, %struct.super_block** %5, align 8
  %198 = load i32, i32* %15, align 4
  %199 = call i32 @ext3_std_error(%struct.super_block* %197, i32 %198)
  br label %200

200:                                              ; preds = %194, %42, %34, %24
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local %struct.ext3_sb_info* @EXT3_SB(%struct.super_block*) #1

declare dso_local i32 @ext3_debug(i8*, i64) #1

declare dso_local i32 @trace_ext3_free_inode(%struct.inode*) #1

declare dso_local i32 @vfs_dq_init(%struct.inode*) #1

declare dso_local i32 @ext3_xattr_delete_inode(i32*, %struct.inode*) #1

declare dso_local i32 @vfs_dq_free_inode(%struct.inode*) #1

declare dso_local i32 @vfs_dq_drop(%struct.inode*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i64 @EXT3_FIRST_INO(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext3_error(%struct.super_block*, i8*, i8*, i64) #1

declare dso_local i64 @EXT3_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @read_inode_bitmap(%struct.super_block*, i64) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext3_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext3_clear_bit_atomic(i32, i64, i32) #1

declare dso_local i32 @sb_bgl_lock(%struct.ext3_sb_info*, i64) #1

declare dso_local %struct.ext3_group_desc* @ext3_get_group_desc(%struct.super_block*, i64, %struct.buffer_head**) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @percpu_counter_inc(i32*) #1

declare dso_local i32 @percpu_counter_dec(i32*) #1

declare dso_local i32 @ext3_journal_dirty_metadata(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext3_std_error(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

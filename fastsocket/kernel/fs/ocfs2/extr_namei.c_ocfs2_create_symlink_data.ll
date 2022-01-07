; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_create_symlink_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_create_symlink_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.super_block* }
%struct.super_block = type { i32, i32 }
%struct.inode = type { i64 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"i_blocks = %llu, i_size = %llu, blocks = %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_CREATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, i32*, %struct.inode*, i8*)* @ocfs2_create_symlink_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_create_symlink_data(%struct.ocfs2_super* %0, i32* %1, %struct.inode* %2, i8* %3) #0 {
  %5 = alloca %struct.ocfs2_super*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.super_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.inode* %2, %struct.inode** %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.buffer_head** null, %struct.buffer_head*** %9, align 8
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %5, align 8
  %20 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %19, i32 0, i32 0
  %21 = load %struct.super_block*, %struct.super_block** %20, align 8
  store %struct.super_block* %21, %struct.super_block** %11, align 8
  %22 = load %struct.inode*, %struct.inode** %7, align 8
  %23 = call i32 @i_size_read(%struct.inode* %22)
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = load %struct.super_block*, %struct.super_block** %11, align 8
  %27 = getelementptr inbounds %struct.super_block, %struct.super_block* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.super_block*, %struct.super_block** %11, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %30, %33
  store i32 %34, i32* %15, align 4
  %35 = load %struct.inode*, %struct.inode** %7, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = call i32 @i_size_read(%struct.inode* %38)
  %40 = load i32, i32* %15, align 4
  %41 = call i32 @mlog_entry(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %37, i32 %39, i32 %40)
  %42 = load i32, i32* %18, align 4
  %43 = load %struct.super_block*, %struct.super_block** %11, align 8
  %44 = load %struct.inode*, %struct.inode** %7, align 8
  %45 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ocfs2_clusters_to_bytes(%struct.super_block* %43, i32 %47)
  %49 = icmp sgt i32 %42, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %4
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @mlog_errno(i32 %53)
  br label %199

55:                                               ; preds = %4
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call %struct.buffer_head** @kcalloc(i32 %56, i32 8, i32 %57)
  store %struct.buffer_head** %58, %struct.buffer_head*** %9, align 8
  %59 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %60 = icmp ne %struct.buffer_head** %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = call i32 @mlog_errno(i32 %64)
  br label %199

66:                                               ; preds = %55
  %67 = load %struct.inode*, %struct.inode** %7, align 8
  %68 = call i32 @ocfs2_extent_map_get_blocks(%struct.inode* %67, i32 0, i32* %12, i32* %13, i32* null)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %16, align 4
  %73 = call i32 @mlog_errno(i32 %72)
  br label %199

74:                                               ; preds = %66
  %75 = load i32, i32* %13, align 4
  %76 = load %struct.super_block*, %struct.super_block** %11, align 8
  %77 = getelementptr inbounds %struct.super_block, %struct.super_block* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %75, %78
  %80 = load i32, i32* %18, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @mlog_errno(i32 %85)
  br label %199

87:                                               ; preds = %74
  store i32 0, i32* %14, align 4
  br label %88

88:                                               ; preds = %188, %87
  %89 = load i32, i32* %18, align 4
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %198

91:                                               ; preds = %88
  %92 = load i8*, i8** %8, align 8
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.super_block*, %struct.super_block** %11, align 8
  %95 = getelementptr inbounds %struct.super_block, %struct.super_block* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %93, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %92, i64 %98
  store i8* %99, i8** %10, align 8
  %100 = load %struct.super_block*, %struct.super_block** %11, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call %struct.buffer_head* @sb_getblk(%struct.super_block* %100, i32 %101)
  %103 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %103, i64 %105
  store %struct.buffer_head* %102, %struct.buffer_head** %106, align 8
  %107 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %107, i64 %109
  %111 = load %struct.buffer_head*, %struct.buffer_head** %110, align 8
  %112 = icmp ne %struct.buffer_head* %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %91
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = call i32 @mlog_errno(i32 %116)
  br label %199

118:                                              ; preds = %91
  %119 = load %struct.inode*, %struct.inode** %7, align 8
  %120 = call i32 @INODE_CACHE(%struct.inode* %119)
  %121 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %121, i64 %123
  %125 = load %struct.buffer_head*, %struct.buffer_head** %124, align 8
  %126 = call i32 @ocfs2_set_new_buffer_uptodate(i32 %120, %struct.buffer_head* %125)
  %127 = load i32*, i32** %6, align 8
  %128 = load %struct.inode*, %struct.inode** %7, align 8
  %129 = call i32 @INODE_CACHE(%struct.inode* %128)
  %130 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %130, i64 %132
  %134 = load %struct.buffer_head*, %struct.buffer_head** %133, align 8
  %135 = load i32, i32* @OCFS2_JOURNAL_ACCESS_CREATE, align 4
  %136 = call i32 @ocfs2_journal_access(i32* %127, i32 %129, %struct.buffer_head* %134, i32 %135)
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %118
  %140 = load i32, i32* %16, align 4
  %141 = call i32 @mlog_errno(i32 %140)
  br label %199

142:                                              ; preds = %118
  %143 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %143, i64 %145
  %147 = load %struct.buffer_head*, %struct.buffer_head** %146, align 8
  %148 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.super_block*, %struct.super_block** %11, align 8
  %151 = getelementptr inbounds %struct.super_block, %struct.super_block* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @memset(i32 %149, i32 0, i32 %152)
  %154 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %155 = load i32, i32* %14, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %154, i64 %156
  %158 = load %struct.buffer_head*, %struct.buffer_head** %157, align 8
  %159 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i8*, i8** %10, align 8
  %162 = load i32, i32* %18, align 4
  %163 = load %struct.super_block*, %struct.super_block** %11, align 8
  %164 = getelementptr inbounds %struct.super_block, %struct.super_block* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %162, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %142
  %168 = load %struct.super_block*, %struct.super_block** %11, align 8
  %169 = getelementptr inbounds %struct.super_block, %struct.super_block* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  br label %173

171:                                              ; preds = %142
  %172 = load i32, i32* %18, align 4
  br label %173

173:                                              ; preds = %171, %167
  %174 = phi i32 [ %170, %167 ], [ %172, %171 ]
  %175 = call i32 @memcpy(i32 %160, i8* %161, i32 %174)
  %176 = load i32*, i32** %6, align 8
  %177 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %178 = load i32, i32* %14, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %177, i64 %179
  %181 = load %struct.buffer_head*, %struct.buffer_head** %180, align 8
  %182 = call i32 @ocfs2_journal_dirty(i32* %176, %struct.buffer_head* %181)
  store i32 %182, i32* %16, align 4
  %183 = load i32, i32* %16, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %173
  %186 = load i32, i32* %16, align 4
  %187 = call i32 @mlog_errno(i32 %186)
  br label %199

188:                                              ; preds = %173
  %189 = load i32, i32* %14, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* %12, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %12, align 4
  %193 = load %struct.super_block*, %struct.super_block** %11, align 8
  %194 = getelementptr inbounds %struct.super_block, %struct.super_block* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* %18, align 4
  %197 = sub nsw i32 %196, %195
  store i32 %197, i32* %18, align 4
  br label %88

198:                                              ; preds = %88
  store i32 0, i32* %16, align 4
  br label %199

199:                                              ; preds = %198, %185, %139, %113, %82, %71, %61, %50
  %200 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %201 = icmp ne %struct.buffer_head** %200, null
  br i1 %201, label %202, label %220

202:                                              ; preds = %199
  store i32 0, i32* %17, align 4
  br label %203

203:                                              ; preds = %214, %202
  %204 = load i32, i32* %17, align 4
  %205 = load i32, i32* %15, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %217

207:                                              ; preds = %203
  %208 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %209 = load i32, i32* %17, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %208, i64 %210
  %212 = load %struct.buffer_head*, %struct.buffer_head** %211, align 8
  %213 = call i32 @brelse(%struct.buffer_head* %212)
  br label %214

214:                                              ; preds = %207
  %215 = load i32, i32* %17, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %17, align 4
  br label %203

217:                                              ; preds = %203
  %218 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %219 = call i32 @kfree(%struct.buffer_head** %218)
  br label %220

220:                                              ; preds = %217, %199
  %221 = load i32, i32* %16, align 4
  %222 = call i32 @mlog_exit(i32 %221)
  %223 = load i32, i32* %16, align 4
  ret i32 %223
}

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i32 @mlog_entry(i8*, i64, i32, i32) #1

declare dso_local i32 @ocfs2_clusters_to_bytes(%struct.super_block*, i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.buffer_head** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ocfs2_extent_map_get_blocks(%struct.inode*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.buffer_head* @sb_getblk(%struct.super_block*, i32) #1

declare dso_local i32 @ocfs2_set_new_buffer_uptodate(i32, %struct.buffer_head*) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

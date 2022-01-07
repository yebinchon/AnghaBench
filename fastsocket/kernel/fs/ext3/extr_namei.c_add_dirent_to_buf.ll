; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_add_dirent_to_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_add_dirent_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8*, i32 }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_7__*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ext3_dir_entry_2 = type { i32, i32, i64, i32, i8* }
%struct.buffer_head = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"ext3_add_entry\00", align 1
@EIO = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@EXT3_FT_UNKNOWN = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"call ext3_journal_dirty_metadata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.dentry*, %struct.inode*, %struct.ext3_dir_entry_2*, %struct.buffer_head*)* @add_dirent_to_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_dirent_to_buf(i32* %0, %struct.dentry* %1, %struct.inode* %2, %struct.ext3_dir_entry_2* %3, %struct.buffer_head* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.ext3_dir_entry_2*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i16, align 2
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca %struct.ext3_dir_entry_2*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.ext3_dir_entry_2* %3, %struct.ext3_dir_entry_2** %10, align 8
  store %struct.buffer_head* %4, %struct.buffer_head** %11, align 8
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.inode*, %struct.inode** %25, align 8
  store %struct.inode* %26, %struct.inode** %12, align 8
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %13, align 8
  %31 = load %struct.dentry*, %struct.dentry** %8, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i8* @EXT3_DIR_REC_LEN(i32 %35)
  %37 = ptrtoint i8* %36 to i16
  store i16 %37, i16* %16, align 2
  %38 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %39 = icmp ne %struct.ext3_dir_entry_2* %38, null
  br i1 %39, label %133, label %40

40:                                               ; preds = %5
  %41 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %42 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %44, %struct.ext3_dir_entry_2** %10, align 8
  %45 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %46 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.inode*, %struct.inode** %12, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %47, %53
  %55 = load i16, i16* %16, align 2
  %56 = zext i16 %55 to i64
  %57 = sub nsw i64 %54, %56
  %58 = inttoptr i64 %57 to i8*
  store i8* %58, i8** %20, align 8
  br label %59

59:                                               ; preds = %113, %40
  %60 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %61 = bitcast %struct.ext3_dir_entry_2* %60 to i8*
  %62 = load i8*, i8** %20, align 8
  %63 = icmp ule i8* %61, %62
  br i1 %63, label %64, label %124

64:                                               ; preds = %59
  %65 = load %struct.inode*, %struct.inode** %12, align 8
  %66 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %67 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %68 = load i64, i64* %15, align 8
  %69 = call i32 @ext3_check_dir_entry(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.inode* %65, %struct.ext3_dir_entry_2* %66, %struct.buffer_head* %67, i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %64
  %72 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %73 = call i32 @brelse(%struct.buffer_head* %72)
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %246

76:                                               ; preds = %64
  %77 = load i32, i32* %14, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %80 = call i64 @ext3_match(i32 %77, i8* %78, %struct.ext3_dir_entry_2* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %76
  %83 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %84 = call i32 @brelse(%struct.buffer_head* %83)
  %85 = load i32, i32* @EEXIST, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %246

87:                                               ; preds = %76
  %88 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %89 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @EXT3_DIR_REC_LEN(i32 %90)
  %92 = ptrtoint i8* %91 to i32
  store i32 %92, i32* %17, align 4
  %93 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %94 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @ext3_rec_len_from_disk(i8* %95)
  store i32 %96, i32* %18, align 4
  %97 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %98 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %87
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %17, align 4
  %104 = sub nsw i32 %102, %103
  br label %107

105:                                              ; preds = %87
  %106 = load i32, i32* %18, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = phi i32 [ %104, %101 ], [ %106, %105 ]
  %109 = load i16, i16* %16, align 2
  %110 = zext i16 %109 to i32
  %111 = icmp sge i32 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  br label %124

113:                                              ; preds = %107
  %114 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %115 = bitcast %struct.ext3_dir_entry_2* %114 to i8*
  %116 = load i32, i32* %18, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = bitcast i8* %118 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %119, %struct.ext3_dir_entry_2** %10, align 8
  %120 = load i32, i32* %18, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %15, align 8
  %123 = add i64 %122, %121
  store i64 %123, i64* %15, align 8
  br label %59

124:                                              ; preds = %112, %59
  %125 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %126 = bitcast %struct.ext3_dir_entry_2* %125 to i8*
  %127 = load i8*, i8** %20, align 8
  %128 = icmp ugt i8* %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* @ENOSPC, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  br label %246

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %5
  %134 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %135 = call i32 @BUFFER_TRACE(%struct.buffer_head* %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32*, i32** %7, align 8
  %137 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %138 = call i32 @ext3_journal_get_write_access(i32* %136, %struct.buffer_head* %137)
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %19, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %133
  %142 = load %struct.inode*, %struct.inode** %12, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = load i32, i32* %19, align 4
  %146 = call i32 @ext3_std_error(%struct.TYPE_7__* %144, i32 %145)
  %147 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %148 = call i32 @brelse(%struct.buffer_head* %147)
  %149 = load i32, i32* %19, align 4
  store i32 %149, i32* %6, align 4
  br label %246

150:                                              ; preds = %133
  %151 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %152 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @EXT3_DIR_REC_LEN(i32 %153)
  %155 = ptrtoint i8* %154 to i32
  store i32 %155, i32* %17, align 4
  %156 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %157 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %156, i32 0, i32 4
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @ext3_rec_len_from_disk(i8* %158)
  store i32 %159, i32* %18, align 4
  %160 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %161 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %150
  %165 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %166 = bitcast %struct.ext3_dir_entry_2* %165 to i8*
  %167 = load i32, i32* %17, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = bitcast i8* %169 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %170, %struct.ext3_dir_entry_2** %21, align 8
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %17, align 4
  %173 = sub nsw i32 %171, %172
  %174 = call i8* @ext3_rec_len_to_disk(i32 %173)
  %175 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %21, align 8
  %176 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %175, i32 0, i32 4
  store i8* %174, i8** %176, align 8
  %177 = load i32, i32* %17, align 4
  %178 = call i8* @ext3_rec_len_to_disk(i32 %177)
  %179 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %180 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %179, i32 0, i32 4
  store i8* %178, i8** %180, align 8
  %181 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %21, align 8
  store %struct.ext3_dir_entry_2* %181, %struct.ext3_dir_entry_2** %10, align 8
  br label %182

182:                                              ; preds = %164, %150
  %183 = load i32, i32* @EXT3_FT_UNKNOWN, align 4
  %184 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %185 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %184, i32 0, i32 3
  store i32 %183, i32* %185, align 8
  %186 = load %struct.inode*, %struct.inode** %9, align 8
  %187 = icmp ne %struct.inode* %186, null
  br i1 %187, label %188, label %203

188:                                              ; preds = %182
  %189 = load %struct.inode*, %struct.inode** %9, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 8
  %192 = call i64 @cpu_to_le32(i32 %191)
  %193 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %194 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %193, i32 0, i32 2
  store i64 %192, i64* %194, align 8
  %195 = load %struct.inode*, %struct.inode** %12, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 0
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %199 = load %struct.inode*, %struct.inode** %9, align 8
  %200 = getelementptr inbounds %struct.inode, %struct.inode* %199, i32 0, i32 4
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @ext3_set_de_type(%struct.TYPE_7__* %197, %struct.ext3_dir_entry_2* %198, i32 %201)
  br label %206

203:                                              ; preds = %182
  %204 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %205 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %204, i32 0, i32 2
  store i64 0, i64* %205, align 8
  br label %206

206:                                              ; preds = %203, %188
  %207 = load i32, i32* %14, align 4
  %208 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %209 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 8
  %210 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %10, align 8
  %211 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load i8*, i8** %13, align 8
  %214 = load i32, i32* %14, align 4
  %215 = call i32 @memcpy(i32 %212, i8* %213, i32 %214)
  %216 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %217 = load %struct.inode*, %struct.inode** %12, align 8
  %218 = getelementptr inbounds %struct.inode, %struct.inode* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 4
  %219 = load %struct.inode*, %struct.inode** %12, align 8
  %220 = getelementptr inbounds %struct.inode, %struct.inode* %219, i32 0, i32 3
  store i32 %216, i32* %220, align 8
  %221 = load %struct.inode*, %struct.inode** %12, align 8
  %222 = call i32 @ext3_update_dx_flag(%struct.inode* %221)
  %223 = load %struct.inode*, %struct.inode** %12, align 8
  %224 = getelementptr inbounds %struct.inode, %struct.inode* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %224, align 8
  %227 = load i32*, i32** %7, align 8
  %228 = load %struct.inode*, %struct.inode** %12, align 8
  %229 = call i32 @ext3_mark_inode_dirty(i32* %227, %struct.inode* %228)
  %230 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %231 = call i32 @BUFFER_TRACE(%struct.buffer_head* %230, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %232 = load i32*, i32** %7, align 8
  %233 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %234 = call i32 @ext3_journal_dirty_metadata(i32* %232, %struct.buffer_head* %233)
  store i32 %234, i32* %19, align 4
  %235 = load i32, i32* %19, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %206
  %238 = load %struct.inode*, %struct.inode** %12, align 8
  %239 = getelementptr inbounds %struct.inode, %struct.inode* %238, i32 0, i32 0
  %240 = load %struct.TYPE_7__*, %struct.TYPE_7__** %239, align 8
  %241 = load i32, i32* %19, align 4
  %242 = call i32 @ext3_std_error(%struct.TYPE_7__* %240, i32 %241)
  br label %243

243:                                              ; preds = %237, %206
  %244 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %245 = call i32 @brelse(%struct.buffer_head* %244)
  store i32 0, i32* %6, align 4
  br label %246

246:                                              ; preds = %243, %141, %129, %82, %71
  %247 = load i32, i32* %6, align 4
  ret i32 %247
}

declare dso_local i8* @EXT3_DIR_REC_LEN(i32) #1

declare dso_local i32 @ext3_check_dir_entry(i8*, %struct.inode*, %struct.ext3_dir_entry_2*, %struct.buffer_head*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i64 @ext3_match(i32, i8*, %struct.ext3_dir_entry_2*) #1

declare dso_local i32 @ext3_rec_len_from_disk(i8*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext3_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext3_std_error(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @ext3_rec_len_to_disk(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @ext3_set_de_type(%struct.TYPE_7__*, %struct.ext3_dir_entry_2*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ext3_update_dx_flag(%struct.inode*) #1

declare dso_local i32 @ext3_mark_inode_dirty(i32*, %struct.inode*) #1

declare dso_local i32 @ext3_journal_dirty_metadata(i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

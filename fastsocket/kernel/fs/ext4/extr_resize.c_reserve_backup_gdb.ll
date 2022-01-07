; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_resize.c_reserve_backup_gdb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_resize.c_reserve_backup_gdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ext4_new_group_data = type { i32 }
%struct.buffer_head = type { i64, i64 }
%struct.ext4_iloc = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EXT4_DIND_BLOCK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"reserved block %llu not at offset %ld\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_new_group_data*)* @reserve_backup_gdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_backup_gdb(i32* %0, %struct.inode* %1, %struct.ext4_new_group_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_new_group_data*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head**, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ext4_iloc, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.ext4_new_group_data* %2, %struct.ext4_new_group_data** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %8, align 8
  %24 = load %struct.super_block*, %struct.super_block** %8, align 8
  %25 = call %struct.TYPE_7__* @EXT4_SB(%struct.super_block* %24)
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le16_to_cpu(i32 %29)
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %16, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_NOFS, align 4
  %36 = call %struct.buffer_head** @kmalloc(i32 %34, i32 %35)
  store %struct.buffer_head** %36, %struct.buffer_head*** %10, align 8
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %38 = icmp ne %struct.buffer_head** %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %3
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %277

42:                                               ; preds = %3
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = call %struct.TYPE_8__* @EXT4_I(%struct.inode* %43)
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @EXT4_DIND_BLOCK, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32* %49, i32** %14, align 8
  %50 = load %struct.super_block*, %struct.super_block** %8, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  %54 = call %struct.buffer_head* @sb_bread(%struct.super_block* %50, i32 %53)
  store %struct.buffer_head* %54, %struct.buffer_head** %11, align 8
  %55 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %56 = icmp ne %struct.buffer_head* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %42
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %19, align 4
  br label %273

60:                                               ; preds = %42
  %61 = load %struct.super_block*, %struct.super_block** %8, align 8
  %62 = call %struct.TYPE_7__* @EXT4_SB(%struct.super_block* %61)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  %68 = load %struct.super_block*, %struct.super_block** %8, align 8
  %69 = call %struct.TYPE_7__* @EXT4_SB(%struct.super_block* %68)
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %67, %71
  store i32 %72, i32* %13, align 4
  %73 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %74 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to i32*
  %77 = load %struct.super_block*, %struct.super_block** %8, align 8
  %78 = call %struct.TYPE_7__* @EXT4_SB(%struct.super_block* %77)
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.super_block*, %struct.super_block** %8, align 8
  %82 = call i32 @EXT4_ADDR_PER_BLOCK(%struct.super_block* %81)
  %83 = srem i32 %80, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %76, i64 %84
  store i32* %85, i32** %14, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %87 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = load %struct.super_block*, %struct.super_block** %8, align 8
  %91 = call i32 @EXT4_ADDR_PER_BLOCK(%struct.super_block* %90)
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  store i32* %93, i32** %15, align 8
  store i32 0, i32* %17, align 4
  br label %94

94:                                               ; preds = %164, %60
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %9, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %169

98:                                               ; preds = %94
  %99 = load i32*, i32** %14, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %98
  %105 = load %struct.super_block*, %struct.super_block** %8, align 8
  %106 = load i32, i32* %13, align 4
  %107 = load i32*, i32** %14, align 8
  %108 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %109 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i32*
  %112 = ptrtoint i32* %107 to i64
  %113 = ptrtoint i32* %111 to i64
  %114 = sub i64 %112, %113
  %115 = sdiv exact i64 %114, 4
  %116 = call i32 @ext4_warning(%struct.super_block* %105, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %106, i64 %115)
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %19, align 4
  br label %258

119:                                              ; preds = %98
  %120 = load %struct.super_block*, %struct.super_block** %8, align 8
  %121 = load i32, i32* %13, align 4
  %122 = call %struct.buffer_head* @sb_bread(%struct.super_block* %120, i32 %121)
  %123 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %124 = load i32, i32* %17, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %123, i64 %125
  store %struct.buffer_head* %122, %struct.buffer_head** %126, align 8
  %127 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %128 = load i32, i32* %17, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %127, i64 %129
  %131 = load %struct.buffer_head*, %struct.buffer_head** %130, align 8
  %132 = icmp ne %struct.buffer_head* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %119
  %134 = load i32, i32* @EIO, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %19, align 4
  br label %258

136:                                              ; preds = %119
  %137 = load %struct.super_block*, %struct.super_block** %8, align 8
  %138 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %139 = load i32, i32* %17, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %138, i64 %140
  %142 = load %struct.buffer_head*, %struct.buffer_head** %141, align 8
  %143 = call i32 @verify_reserved_gdb(%struct.super_block* %137, %struct.buffer_head* %142)
  store i32 %143, i32* %16, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %136
  %146 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %147 = load i32, i32* %17, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %146, i64 %148
  %150 = load %struct.buffer_head*, %struct.buffer_head** %149, align 8
  %151 = call i32 @brelse(%struct.buffer_head* %150)
  %152 = load i32, i32* %16, align 4
  store i32 %152, i32* %19, align 4
  br label %258

153:                                              ; preds = %136
  %154 = load i32*, i32** %14, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %14, align 8
  %156 = load i32*, i32** %15, align 8
  %157 = icmp uge i32* %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %160 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i32*
  store i32* %162, i32** %14, align 8
  br label %163

163:                                              ; preds = %158, %153
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %17, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %17, align 4
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %13, align 4
  br label %94

169:                                              ; preds = %94
  store i32 0, i32* %18, align 4
  br label %170

170:                                              ; preds = %185, %169
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %188

174:                                              ; preds = %170
  %175 = load i32*, i32** %5, align 8
  %176 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %177 = load i32, i32* %18, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %176, i64 %178
  %180 = load %struct.buffer_head*, %struct.buffer_head** %179, align 8
  %181 = call i32 @ext4_journal_get_write_access(i32* %175, %struct.buffer_head* %180)
  store i32 %181, i32* %19, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %174
  br label %258

184:                                              ; preds = %174
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %18, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %18, align 4
  br label %170

188:                                              ; preds = %170
  %189 = load i32*, i32** %5, align 8
  %190 = load %struct.inode*, %struct.inode** %6, align 8
  %191 = call i32 @ext4_reserve_inode_write(i32* %189, %struct.inode* %190, %struct.ext4_iloc* %12)
  store i32 %191, i32* %19, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %188
  br label %258

194:                                              ; preds = %188
  %195 = load %struct.ext4_new_group_data*, %struct.ext4_new_group_data** %7, align 8
  %196 = getelementptr inbounds %struct.ext4_new_group_data, %struct.ext4_new_group_data* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.super_block*, %struct.super_block** %8, align 8
  %199 = call i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block* %198)
  %200 = mul nsw i32 %197, %199
  store i32 %200, i32* %13, align 4
  store i32 0, i32* %18, align 4
  br label %201

201:                                              ; preds = %241, %194
  %202 = load i32, i32* %18, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %244

205:                                              ; preds = %201
  %206 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %207 = load i32, i32* %18, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %206, i64 %208
  %210 = load %struct.buffer_head*, %struct.buffer_head** %209, align 8
  %211 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = inttoptr i64 %212 to i32*
  store i32* %213, i32** %14, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %217 = load i32, i32* %18, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %216, i64 %218
  %220 = load %struct.buffer_head*, %struct.buffer_head** %219, align 8
  %221 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %215, %222
  %224 = call i32 @cpu_to_le32(i64 %223)
  %225 = load i32*, i32** %14, align 8
  %226 = load i32, i32* %16, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %224, i32* %228, align 4
  %229 = load i32*, i32** %5, align 8
  %230 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %231 = load i32, i32* %18, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %230, i64 %232
  %234 = load %struct.buffer_head*, %struct.buffer_head** %233, align 8
  %235 = call i32 @ext4_handle_dirty_metadata(i32* %229, i32* null, %struct.buffer_head* %234)
  store i32 %235, i32* %20, align 4
  %236 = load i32, i32* %19, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %240, label %238

238:                                              ; preds = %205
  %239 = load i32, i32* %20, align 4
  store i32 %239, i32* %19, align 4
  br label %240

240:                                              ; preds = %238, %205
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %18, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %18, align 4
  br label %201

244:                                              ; preds = %201
  %245 = load i32, i32* %9, align 4
  %246 = load %struct.super_block*, %struct.super_block** %8, align 8
  %247 = getelementptr inbounds %struct.super_block, %struct.super_block* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = mul nsw i32 %245, %248
  %250 = ashr i32 %249, 9
  %251 = load %struct.inode*, %struct.inode** %6, align 8
  %252 = getelementptr inbounds %struct.inode, %struct.inode* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %253, %250
  store i32 %254, i32* %252, align 8
  %255 = load i32*, i32** %5, align 8
  %256 = load %struct.inode*, %struct.inode** %6, align 8
  %257 = call i32 @ext4_mark_iloc_dirty(i32* %255, %struct.inode* %256, %struct.ext4_iloc* %12)
  br label %258

258:                                              ; preds = %244, %193, %183, %145, %133, %104
  br label %259

259:                                              ; preds = %263, %258
  %260 = load i32, i32* %17, align 4
  %261 = add nsw i32 %260, -1
  store i32 %261, i32* %17, align 4
  %262 = icmp sge i32 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %259
  %264 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %265 = load i32, i32* %17, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %264, i64 %266
  %268 = load %struct.buffer_head*, %struct.buffer_head** %267, align 8
  %269 = call i32 @brelse(%struct.buffer_head* %268)
  br label %259

270:                                              ; preds = %259
  %271 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %272 = call i32 @brelse(%struct.buffer_head* %271)
  br label %273

273:                                              ; preds = %270, %57
  %274 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %275 = call i32 @kfree(%struct.buffer_head** %274)
  %276 = load i32, i32* %19, align 4
  store i32 %276, i32* %4, align 4
  br label %277

277:                                              ; preds = %273, %39
  %278 = load i32, i32* %4, align 4
  ret i32 %278
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.TYPE_7__* @EXT4_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head** @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_8__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @EXT4_ADDR_PER_BLOCK(%struct.super_block*) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*, i32, i64) #1

declare dso_local i32 @verify_reserved_gdb(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_journal_get_write_access(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_reserve_inode_write(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @EXT4_BLOCKS_PER_GROUP(%struct.super_block*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, i32*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_mark_iloc_dirty(i32*, %struct.inode*, %struct.ext4_iloc*) #1

declare dso_local i32 @kfree(%struct.buffer_head**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

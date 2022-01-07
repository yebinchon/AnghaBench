; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_leaf_dealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_dir.c_leaf_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_leaf = type { i32 }
%struct.gfs2_rgrp_list = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.gfs2_rgrpd* }
%struct.gfs2_rgrpd = type { i64 }
%struct.buffer_head = type { i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NO_QUOTA_CHANGE = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i64 0, align 8
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i32, i32, i64)* @leaf_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leaf_dealloc(%struct.gfs2_inode* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gfs2_inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.gfs2_sbd*, align 8
  %11 = alloca %struct.gfs2_leaf*, align 8
  %12 = alloca %struct.gfs2_rgrp_list, align 8
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.gfs2_rgrpd*, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %24 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %25 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %24, i32 0, i32 1
  %26 = call %struct.gfs2_sbd* @GFS2_SB(i32* %25)
  store %struct.gfs2_sbd* %26, %struct.gfs2_sbd** %10, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %21, align 4
  %31 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %32 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %31)
  store i32 %32, i32* %22, align 4
  %33 = load i32, i32* %22, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %4
  %36 = load i32, i32* %22, align 4
  store i32 %36, i32* %5, align 4
  br label %250

37:                                               ; preds = %4
  %38 = call i32 @memset(%struct.gfs2_rgrp_list* %12, i32 0, i32 16)
  %39 = load i32, i32* %21, align 4
  %40 = load i32, i32* @GFP_NOFS, align 4
  %41 = call i8* @kzalloc(i32 %39, i32 %40)
  store i8* %41, i8** %19, align 8
  %42 = load i8*, i8** %19, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* %21, align 4
  %46 = call i8* @vzalloc(i32 %45)
  store i8* %46, i8** %19, align 8
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i8*, i8** %19, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %250

53:                                               ; preds = %47
  %54 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %55 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %54)
  store i32 %55, i32* %22, align 4
  %56 = load i32, i32* %22, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %238

59:                                               ; preds = %53
  %60 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %61 = load i32, i32* @NO_QUOTA_CHANGE, align 4
  %62 = load i32, i32* @NO_QUOTA_CHANGE, align 4
  %63 = call i32 @gfs2_quota_hold(%struct.gfs2_inode* %60, i32 %61, i32 %62)
  store i32 %63, i32* %22, align 4
  %64 = load i32, i32* %22, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %238

67:                                               ; preds = %59
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %15, align 8
  br label %69

69:                                               ; preds = %95, %67
  %70 = load i64, i64* %15, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %69
  %73 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @get_leaf(%struct.gfs2_inode* %73, i64 %74, %struct.buffer_head** %13)
  store i32 %75, i32* %22, align 4
  %76 = load i32, i32* %22, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %72
  br label %234

79:                                               ; preds = %72
  %80 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %83, %struct.gfs2_leaf** %11, align 8
  %84 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %11, align 8
  %85 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @be64_to_cpu(i32 %86)
  store i64 %87, i64* %16, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %89 = call i32 @brelse(%struct.buffer_head* %88)
  %90 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %91 = load i64, i64* %15, align 8
  %92 = call i32 @gfs2_rlist_add(%struct.gfs2_inode* %90, %struct.gfs2_rgrp_list* %12, i64 %91)
  %93 = load i32, i32* %18, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %18, align 4
  br label %95

95:                                               ; preds = %79
  %96 = load i64, i64* %16, align 8
  store i64 %96, i64* %15, align 8
  br label %69

97:                                               ; preds = %69
  %98 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %99 = call i32 @gfs2_rlist_alloc(%struct.gfs2_rgrp_list* %12, i32 %98)
  store i32 0, i32* %20, align 4
  br label %100

100:                                              ; preds = %122, %97
  %101 = load i32, i32* %20, align 4
  %102 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %12, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ult i32 %101, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %12, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* %20, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %113, align 8
  store %struct.gfs2_rgrpd* %114, %struct.gfs2_rgrpd** %23, align 8
  %115 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %23, align 8
  %116 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i32, i32* %17, align 4
  %119 = zext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %17, align 4
  br label %122

122:                                              ; preds = %105
  %123 = load i32, i32* %20, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %20, align 4
  br label %100

125:                                              ; preds = %100
  %126 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %12, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %12, i32 0, i32 1
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = call i32 @gfs2_glock_nq_m(i32 %127, %struct.TYPE_5__* %129)
  store i32 %130, i32* %22, align 4
  %131 = load i32, i32* %22, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %125
  br label %234

134:                                              ; preds = %125
  %135 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %136 = load i32, i32* %17, align 4
  %137 = zext i32 %136 to i64
  %138 = load i32, i32* %21, align 4
  %139 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %140 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @DIV_ROUND_UP(i32 %138, i32 %141)
  %143 = add nsw i64 %142, 1
  %144 = add nsw i64 %137, %143
  %145 = load i64, i64* @RES_DINODE, align 8
  %146 = add nsw i64 %144, %145
  %147 = load i64, i64* @RES_STATFS, align 8
  %148 = add nsw i64 %146, %147
  %149 = load i64, i64* @RES_QUOTA, align 8
  %150 = add nsw i64 %148, %149
  %151 = load i32, i32* %18, align 4
  %152 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %135, i64 %150, i32 %151)
  store i32 %152, i32* %22, align 4
  %153 = load i32, i32* %22, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %134
  br label %228

156:                                              ; preds = %134
  %157 = load i64, i64* %9, align 8
  store i64 %157, i64* %15, align 8
  br label %158

158:                                              ; preds = %185, %156
  %159 = load i64, i64* %15, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %187

161:                                              ; preds = %158
  %162 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %163 = load i64, i64* %15, align 8
  %164 = call i32 @get_leaf(%struct.gfs2_inode* %162, i64 %163, %struct.buffer_head** %13)
  store i32 %164, i32* %22, align 4
  %165 = load i32, i32* %22, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  br label %225

168:                                              ; preds = %161
  %169 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %170 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to %struct.gfs2_leaf*
  store %struct.gfs2_leaf* %172, %struct.gfs2_leaf** %11, align 8
  %173 = load %struct.gfs2_leaf*, %struct.gfs2_leaf** %11, align 8
  %174 = getelementptr inbounds %struct.gfs2_leaf, %struct.gfs2_leaf* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @be64_to_cpu(i32 %175)
  store i64 %176, i64* %16, align 8
  %177 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %178 = call i32 @brelse(%struct.buffer_head* %177)
  %179 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %180 = load i64, i64* %15, align 8
  %181 = call i32 @gfs2_free_meta(%struct.gfs2_inode* %179, i64 %180, i32 1)
  %182 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %183 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %182, i32 0, i32 1
  %184 = call i32 @gfs2_add_inode_blocks(i32* %183, i32 -1)
  br label %185

185:                                              ; preds = %168
  %186 = load i64, i64* %16, align 8
  store i64 %186, i64* %15, align 8
  br label %158

187:                                              ; preds = %158
  %188 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %189 = load i8*, i8** %19, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = mul i64 %191, 8
  %193 = trunc i64 %192 to i32
  %194 = load i32, i32* %21, align 4
  %195 = call i32 @gfs2_dir_write_data(%struct.gfs2_inode* %188, i8* %189, i32 %193, i32 %194)
  store i32 %195, i32* %22, align 4
  %196 = load i32, i32* %22, align 4
  %197 = load i32, i32* %21, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %206

199:                                              ; preds = %187
  %200 = load i32, i32* %22, align 4
  %201 = icmp sge i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* @EIO, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %22, align 4
  br label %205

205:                                              ; preds = %202, %199
  br label %225

206:                                              ; preds = %187
  %207 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %208 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %207, %struct.buffer_head** %14)
  store i32 %208, i32* %22, align 4
  %209 = load i32, i32* %22, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %225

212:                                              ; preds = %206
  %213 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %214 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %217 = call i32 @gfs2_trans_add_meta(i32 %215, %struct.buffer_head* %216)
  %218 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %219 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %220 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %218, i64 %221)
  %223 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %224 = call i32 @brelse(%struct.buffer_head* %223)
  br label %225

225:                                              ; preds = %212, %211, %205, %167
  %226 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %10, align 8
  %227 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %226)
  br label %228

228:                                              ; preds = %225, %155
  %229 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %12, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %12, i32 0, i32 1
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %231, align 8
  %233 = call i32 @gfs2_glock_dq_m(i32 %230, %struct.TYPE_5__* %232)
  br label %234

234:                                              ; preds = %228, %133, %78
  %235 = call i32 @gfs2_rlist_free(%struct.gfs2_rgrp_list* %12)
  %236 = load %struct.gfs2_inode*, %struct.gfs2_inode** %6, align 8
  %237 = call i32 @gfs2_quota_unhold(%struct.gfs2_inode* %236)
  br label %238

238:                                              ; preds = %234, %66, %58
  %239 = load i8*, i8** %19, align 8
  %240 = call i64 @is_vmalloc_addr(i8* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load i8*, i8** %19, align 8
  %244 = call i32 @vfree(i8* %243)
  br label %248

245:                                              ; preds = %238
  %246 = load i8*, i8** %19, align 8
  %247 = call i32 @kfree(i8* %246)
  br label %248

248:                                              ; preds = %245, %242
  %249 = load i32, i32* %22, align 4
  store i32 %249, i32* %5, align 4
  br label %250

250:                                              ; preds = %248, %50, %35
  %251 = load i32, i32* %5, align 4
  ret i32 %251
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @memset(%struct.gfs2_rgrp_list*, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @gfs2_quota_hold(%struct.gfs2_inode*, i32, i32) #1

declare dso_local i32 @get_leaf(%struct.gfs2_inode*, i64, %struct.buffer_head**) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_rlist_add(%struct.gfs2_inode*, %struct.gfs2_rgrp_list*, i64) #1

declare dso_local i32 @gfs2_rlist_alloc(%struct.gfs2_rgrp_list*, i32) #1

declare dso_local i32 @gfs2_glock_nq_m(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @gfs2_free_meta(%struct.gfs2_inode*, i64, i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(i32*, i32) #1

declare dso_local i32 @gfs2_dir_write_data(%struct.gfs2_inode*, i8*, i32, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i64) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq_m(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_rlist_free(%struct.gfs2_rgrp_list*) #1

declare dso_local i32 @gfs2_quota_unhold(%struct.gfs2_inode*) #1

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_dealloc_indirect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_xattr.c_ea_dealloc_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i32, i32, i32, i32 }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_rgrp_list = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.gfs2_rgrpd* }
%struct.gfs2_rgrpd = type { i64 }
%struct.buffer_head = type { i64 }

@DIO_WAIT = common dso_local global i32 0, align 4
@GFS2_METATYPE_IN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i64 0, align 8
@RES_INDIRECT = common dso_local global i64 0, align 8
@RES_STATFS = common dso_local global i64 0, align 8
@RES_QUOTA = common dso_local global i64 0, align 8
@GFS2_DIF_EA_INDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*)* @ea_dealloc_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ea_dealloc_indirect(%struct.gfs2_inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfs2_inode*, align 8
  %4 = alloca %struct.gfs2_sbd*, align 8
  %5 = alloca %struct.gfs2_rgrp_list, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.gfs2_rgrpd*, align 8
  %18 = alloca i64, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %3, align 8
  %19 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %20 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %19, i32 0, i32 2
  %21 = call %struct.gfs2_sbd* @GFS2_SB(i32* %20)
  store %struct.gfs2_sbd* %21, %struct.gfs2_sbd** %4, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %23 = call i32 @gfs2_rindex_update(%struct.gfs2_sbd* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %15, align 4
  store i32 %27, i32* %2, align 4
  br label %260

28:                                               ; preds = %1
  %29 = call i32 @memset(%struct.gfs2_rgrp_list* %5, i32 0, i32 16)
  %30 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %31 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %34 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DIO_WAIT, align 4
  %37 = call i32 @gfs2_meta_read(i32 %32, i32 %35, i32 %36, %struct.buffer_head** %6)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %2, align 4
  br label %260

42:                                               ; preds = %28
  %43 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %44 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %45 = load i32, i32* @GFS2_METATYPE_IN, align 4
  %46 = call i64 @gfs2_metatype_check(%struct.gfs2_sbd* %43, %struct.buffer_head* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %15, align 4
  br label %256

51:                                               ; preds = %42
  %52 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 4
  %56 = inttoptr i64 %55 to i64*
  store i64* %56, i64** %8, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %59 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %57, i64 %61
  store i64* %62, i64** %9, align 8
  br label %63

63:                                               ; preds = %97, %51
  %64 = load i64*, i64** %8, align 8
  %65 = load i64*, i64** %9, align 8
  %66 = icmp ult i64* %64, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %63
  %68 = load i64*, i64** %8, align 8
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %100

72:                                               ; preds = %67
  %73 = load i64*, i64** %8, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @be64_to_cpu(i64 %74)
  store i64 %75, i64* %16, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = zext i32 %77 to i64
  %79 = add nsw i64 %76, %78
  %80 = load i64, i64* %16, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %72
  %83 = load i32, i32* %12, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %94

85:                                               ; preds = %72
  %86 = load i64, i64* %11, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %90 = load i64, i64* %11, align 8
  %91 = call i32 @gfs2_rlist_add(%struct.gfs2_inode* %89, %struct.gfs2_rgrp_list* %5, i64 %90)
  br label %92

92:                                               ; preds = %88, %85
  %93 = load i64, i64* %16, align 8
  store i64 %93, i64* %11, align 8
  store i32 1, i32* %12, align 4
  br label %94

94:                                               ; preds = %92, %82
  %95 = load i32, i32* %13, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %94
  %98 = load i64*, i64** %8, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %8, align 8
  br label %63

100:                                              ; preds = %71, %63
  %101 = load i64, i64* %11, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %105 = load i64, i64* %11, align 8
  %106 = call i32 @gfs2_rlist_add(%struct.gfs2_inode* %104, %struct.gfs2_rgrp_list* %5, i64 %105)
  br label %108

107:                                              ; preds = %100
  br label %256

108:                                              ; preds = %103
  %109 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %110 = call i32 @gfs2_rlist_alloc(%struct.gfs2_rgrp_list* %5, i32 %109)
  store i32 0, i32* %14, align 4
  br label %111

111:                                              ; preds = %133, %108
  %112 = load i32, i32* %14, align 4
  %113 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %5, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ult i32 %112, %114
  br i1 %115, label %116, label %136

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %5, i32 0, i32 1
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %124, align 8
  store %struct.gfs2_rgrpd* %125, %struct.gfs2_rgrpd** %17, align 8
  %126 = load %struct.gfs2_rgrpd*, %struct.gfs2_rgrpd** %17, align 8
  %127 = getelementptr inbounds %struct.gfs2_rgrpd, %struct.gfs2_rgrpd* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = zext i32 %129 to i64
  %131 = add nsw i64 %130, %128
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %10, align 4
  br label %133

133:                                              ; preds = %116
  %134 = load i32, i32* %14, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %14, align 4
  br label %111

136:                                              ; preds = %111
  %137 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %5, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %5, i32 0, i32 1
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %139, align 8
  %141 = call i32 @gfs2_glock_nq_m(i32 %138, %struct.TYPE_5__* %140)
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  br label %254

145:                                              ; preds = %136
  %146 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %147 = load i32, i32* %10, align 4
  %148 = zext i32 %147 to i64
  %149 = load i64, i64* @RES_DINODE, align 8
  %150 = add nsw i64 %148, %149
  %151 = load i64, i64* @RES_INDIRECT, align 8
  %152 = add nsw i64 %150, %151
  %153 = load i64, i64* @RES_STATFS, align 8
  %154 = add nsw i64 %152, %153
  %155 = load i64, i64* @RES_QUOTA, align 8
  %156 = add nsw i64 %154, %155
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %146, i64 %156, i32 %157)
  store i32 %158, i32* %15, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %145
  br label %248

162:                                              ; preds = %145
  %163 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %164 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %167 = call i32 @gfs2_trans_add_meta(i32 %165, %struct.buffer_head* %166)
  %168 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %169 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %170, 4
  %172 = inttoptr i64 %171 to i64*
  store i64* %172, i64** %8, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  br label %173

173:                                              ; preds = %210, %162
  %174 = load i64*, i64** %8, align 8
  %175 = load i64*, i64** %9, align 8
  %176 = icmp ult i64* %174, %175
  br i1 %176, label %177, label %213

177:                                              ; preds = %173
  %178 = load i64*, i64** %8, align 8
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %177
  br label %213

182:                                              ; preds = %177
  %183 = load i64*, i64** %8, align 8
  %184 = load i64, i64* %183, align 8
  %185 = call i64 @be64_to_cpu(i64 %184)
  store i64 %185, i64* %18, align 8
  %186 = load i64, i64* %11, align 8
  %187 = load i32, i32* %12, align 4
  %188 = zext i32 %187 to i64
  %189 = add nsw i64 %186, %188
  %190 = load i64, i64* %18, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %182
  %193 = load i32, i32* %12, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %12, align 4
  br label %205

195:                                              ; preds = %182
  %196 = load i64, i64* %11, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %200 = load i64, i64* %11, align 8
  %201 = load i32, i32* %12, align 4
  %202 = call i32 @gfs2_free_meta(%struct.gfs2_inode* %199, i64 %200, i32 %201)
  br label %203

203:                                              ; preds = %198, %195
  %204 = load i64, i64* %18, align 8
  store i64 %204, i64* %11, align 8
  store i32 1, i32* %12, align 4
  br label %205

205:                                              ; preds = %203, %192
  %206 = load i64*, i64** %8, align 8
  store i64 0, i64* %206, align 8
  %207 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %208 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %207, i32 0, i32 2
  %209 = call i32 @gfs2_add_inode_blocks(i32* %208, i32 -1)
  br label %210

210:                                              ; preds = %205
  %211 = load i64*, i64** %8, align 8
  %212 = getelementptr inbounds i64, i64* %211, i32 1
  store i64* %212, i64** %8, align 8
  br label %173

213:                                              ; preds = %181, %173
  %214 = load i64, i64* %11, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %218 = load i64, i64* %11, align 8
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @gfs2_free_meta(%struct.gfs2_inode* %217, i64 %218, i32 %219)
  br label %221

221:                                              ; preds = %216, %213
  %222 = load i32, i32* @GFS2_DIF_EA_INDIRECT, align 4
  %223 = xor i32 %222, -1
  %224 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %225 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = and i32 %226, %223
  store i32 %227, i32* %225, align 4
  %228 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %229 = call i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode* %228, %struct.buffer_head** %7)
  store i32 %229, i32* %15, align 4
  %230 = load i32, i32* %15, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %245, label %232

232:                                              ; preds = %221
  %233 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %234 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %237 = call i32 @gfs2_trans_add_meta(i32 %235, %struct.buffer_head* %236)
  %238 = load %struct.gfs2_inode*, %struct.gfs2_inode** %3, align 8
  %239 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %240 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = call i32 @gfs2_dinode_out(%struct.gfs2_inode* %238, i64 %241)
  %243 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %244 = call i32 @brelse(%struct.buffer_head* %243)
  br label %245

245:                                              ; preds = %232, %221
  %246 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %4, align 8
  %247 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %246)
  br label %248

248:                                              ; preds = %245, %161
  %249 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %5, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = getelementptr inbounds %struct.gfs2_rgrp_list, %struct.gfs2_rgrp_list* %5, i32 0, i32 1
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %251, align 8
  %253 = call i32 @gfs2_glock_dq_m(i32 %250, %struct.TYPE_5__* %252)
  br label %254

254:                                              ; preds = %248, %144
  %255 = call i32 @gfs2_rlist_free(%struct.gfs2_rgrp_list* %5)
  br label %256

256:                                              ; preds = %254, %107, %48
  %257 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %258 = call i32 @brelse(%struct.buffer_head* %257)
  %259 = load i32, i32* %15, align 4
  store i32 %259, i32* %2, align 4
  br label %260

260:                                              ; preds = %256, %40, %26
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local %struct.gfs2_sbd* @GFS2_SB(i32*) #1

declare dso_local i32 @gfs2_rindex_update(%struct.gfs2_sbd*) #1

declare dso_local i32 @memset(%struct.gfs2_rgrp_list*, i32, i32) #1

declare dso_local i32 @gfs2_meta_read(i32, i32, i32, %struct.buffer_head**) #1

declare dso_local i64 @gfs2_metatype_check(%struct.gfs2_sbd*, %struct.buffer_head*, i32) #1

declare dso_local i64 @be64_to_cpu(i64) #1

declare dso_local i32 @gfs2_rlist_add(%struct.gfs2_inode*, %struct.gfs2_rgrp_list*, i64) #1

declare dso_local i32 @gfs2_rlist_alloc(%struct.gfs2_rgrp_list*, i32) #1

declare dso_local i32 @gfs2_glock_nq_m(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i64, i32) #1

declare dso_local i32 @gfs2_trans_add_meta(i32, %struct.buffer_head*) #1

declare dso_local i32 @gfs2_free_meta(%struct.gfs2_inode*, i64, i32) #1

declare dso_local i32 @gfs2_add_inode_blocks(i32*, i32) #1

declare dso_local i32 @gfs2_meta_inode_buffer(%struct.gfs2_inode*, %struct.buffer_head**) #1

declare dso_local i32 @gfs2_dinode_out(%struct.gfs2_inode*, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_glock_dq_m(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @gfs2_rlist_free(%struct.gfs2_rgrp_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

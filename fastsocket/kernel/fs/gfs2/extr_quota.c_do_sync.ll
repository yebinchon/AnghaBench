; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_do_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_quota.c_do_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_quota_data = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32 }
%struct.gfs2_inode = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.gfs2_alloc_parms = type { i32, i32 }
%struct.gfs2_holder = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sort_qd = common dso_local global i32 0, align 4
@I_MUTEX_QUOTA = common dso_local global i32 0, align 4
@LM_ST_EXCLUSIVE = common dso_local global i32 0, align 4
@GL_NOCACHE = common dso_local global i32 0, align 4
@RES_DINODE = common dso_local global i32 0, align 4
@RES_STATFS = common dso_local global i64 0, align 8
@QDF_REFRESH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.gfs2_quota_data**)* @do_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sync(i32 %0, %struct.gfs2_quota_data** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.gfs2_quota_data**, align 8
  %6 = alloca %struct.gfs2_sbd*, align 8
  %7 = alloca %struct.gfs2_inode*, align 8
  %8 = alloca %struct.gfs2_alloc_parms, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gfs2_holder*, align 8
  %12 = alloca %struct.gfs2_holder, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.gfs2_quota_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.gfs2_quota_data** %1, %struct.gfs2_quota_data*** %5, align 8
  %22 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %5, align 8
  %23 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %22, align 8
  %24 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %26, align 8
  store %struct.gfs2_sbd* %27, %struct.gfs2_sbd** %6, align 8
  %28 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %29 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.gfs2_inode* @GFS2_I(i32 %30)
  store %struct.gfs2_inode* %31, %struct.gfs2_inode** %7, align 8
  %32 = bitcast %struct.gfs2_alloc_parms* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %32, i8 0, i64 8, i1 false)
  store i32 0, i32* %18, align 4
  %33 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %34 = call i32 @gfs2_rs_alloc(%struct.gfs2_inode* %33)
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %20, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* %20, align 4
  store i32 %38, i32* %3, align 4
  br label %244

39:                                               ; preds = %2
  %40 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %41 = call i32 @gfs2_write_calc_reserv(%struct.gfs2_inode* %40, i32 4, i32* %9, i32* %10)
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @GFP_NOFS, align 4
  %44 = call %struct.gfs2_holder* @kcalloc(i32 %42, i32 4, i32 %43)
  store %struct.gfs2_holder* %44, %struct.gfs2_holder** %11, align 8
  %45 = load %struct.gfs2_holder*, %struct.gfs2_holder** %11, align 8
  %46 = icmp ne %struct.gfs2_holder* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %39
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %244

50:                                               ; preds = %39
  %51 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %5, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @sort_qd, align 4
  %54 = call i32 @sort(%struct.gfs2_quota_data** %51, i32 %52, i32 8, i32 %53, i32* null)
  %55 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %56 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* @I_MUTEX_QUOTA, align 4
  %59 = call i32 @mutex_lock_nested(i32* %57, i32 %58)
  store i32 0, i32* %13, align 4
  br label %60

60:                                               ; preds = %83, %50
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %60
  %65 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %5, align 8
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %65, i64 %67
  %69 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %68, align 8
  %70 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %69, i32 0, i32 2
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %73 = load i32, i32* @GL_NOCACHE, align 4
  %74 = load %struct.gfs2_holder*, %struct.gfs2_holder** %11, align 8
  %75 = load i32, i32* %13, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %74, i64 %76
  %78 = call i32 @gfs2_glock_nq_init(%struct.TYPE_5__* %71, i32 %72, i32 %73, %struct.gfs2_holder* %77)
  store i32 %78, i32* %20, align 4
  %79 = load i32, i32* %20, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %64
  br label %216

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %60

86:                                               ; preds = %60
  %87 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %88 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* @LM_ST_EXCLUSIVE, align 4
  %91 = call i32 @gfs2_glock_nq_init(%struct.TYPE_5__* %89, i32 %90, i32 0, %struct.gfs2_holder* %12)
  store i32 %91, i32* %20, align 4
  %92 = load i32, i32* %20, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %86
  br label %216

95:                                               ; preds = %86
  store i32 0, i32* %14, align 4
  br label %96

96:                                               ; preds = %120, %95
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* %4, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %123

100:                                              ; preds = %96
  %101 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %5, align 8
  %102 = load i32, i32* %14, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %101, i64 %103
  %105 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %104, align 8
  %106 = call i32 @qd2offset(%struct.gfs2_quota_data* %105)
  store i32 %106, i32* %17, align 4
  %107 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @gfs2_write_alloc_required(%struct.gfs2_inode* %107, i32 %108, i32 4, i32* %21)
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* %20, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %214

113:                                              ; preds = %100
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %18, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %18, align 4
  br label %119

119:                                              ; preds = %116, %113
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %14, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %14, align 4
  br label %96

123:                                              ; preds = %96
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* %9, align 4
  %126 = mul i32 %124, %125
  %127 = load i32, i32* @RES_DINODE, align 4
  %128 = add i32 %126, %127
  %129 = load i32, i32* %4, align 4
  %130 = add i32 %128, %129
  %131 = add i32 %130, 3
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* %18, align 4
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %10, align 4
  %135 = add i32 %133, %134
  %136 = mul i32 %132, %135
  %137 = add i32 1, %136
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = getelementptr inbounds %struct.gfs2_alloc_parms, %struct.gfs2_alloc_parms* %8, i32 0, i32 0
  store i32 %138, i32* %139, align 4
  %140 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %141 = call i32 @gfs2_inplace_reserve(%struct.gfs2_inode* %140, %struct.gfs2_alloc_parms* %8)
  store i32 %141, i32* %20, align 4
  %142 = load i32, i32* %20, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %123
  br label %214

145:                                              ; preds = %123
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %145
  %149 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %150 = load i32, i32* %16, align 4
  %151 = call i64 @gfs2_rg_blocks(%struct.gfs2_inode* %149, i32 %150)
  %152 = load i32, i32* %18, align 4
  %153 = load i32, i32* %10, align 4
  %154 = mul i32 %152, %153
  %155 = zext i32 %154 to i64
  %156 = add nsw i64 %151, %155
  %157 = load i64, i64* @RES_STATFS, align 8
  %158 = add nsw i64 %156, %157
  %159 = load i32, i32* %19, align 4
  %160 = zext i32 %159 to i64
  %161 = add nsw i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %19, align 4
  br label %163

163:                                              ; preds = %148, %145
  %164 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @gfs2_trans_begin(%struct.gfs2_sbd* %164, i32 %165, i32 0)
  store i32 %166, i32* %20, align 4
  %167 = load i32, i32* %20, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %211

170:                                              ; preds = %163
  store i32 0, i32* %14, align 4
  br label %171

171:                                              ; preds = %204, %170
  %172 = load i32, i32* %14, align 4
  %173 = load i32, i32* %4, align 4
  %174 = icmp ult i32 %172, %173
  br i1 %174, label %175, label %207

175:                                              ; preds = %171
  %176 = load %struct.gfs2_quota_data**, %struct.gfs2_quota_data*** %5, align 8
  %177 = load i32, i32* %14, align 4
  %178 = zext i32 %177 to i64
  %179 = getelementptr inbounds %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %176, i64 %178
  %180 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %179, align 8
  store %struct.gfs2_quota_data* %180, %struct.gfs2_quota_data** %15, align 8
  %181 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %15, align 8
  %182 = call i32 @qd2offset(%struct.gfs2_quota_data* %181)
  store i32 %182, i32* %17, align 4
  %183 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %184 = load i32, i32* %17, align 4
  %185 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %15, align 8
  %186 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %15, align 8
  %189 = call i32 @gfs2_adjust_quota(%struct.gfs2_inode* %183, i32 %184, i32 %187, %struct.gfs2_quota_data* %188, i32* null)
  store i32 %189, i32* %20, align 4
  %190 = load i32, i32* %20, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %175
  br label %208

193:                                              ; preds = %175
  %194 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %15, align 8
  %195 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %15, align 8
  %196 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 0, %197
  %199 = call i32 @do_qc(%struct.gfs2_quota_data* %194, i32 %198)
  %200 = load i32, i32* @QDF_REFRESH, align 4
  %201 = load %struct.gfs2_quota_data*, %struct.gfs2_quota_data** %15, align 8
  %202 = getelementptr inbounds %struct.gfs2_quota_data, %struct.gfs2_quota_data* %201, i32 0, i32 0
  %203 = call i32 @set_bit(i32 %200, i32* %202)
  br label %204

204:                                              ; preds = %193
  %205 = load i32, i32* %14, align 4
  %206 = add i32 %205, 1
  store i32 %206, i32* %14, align 4
  br label %171

207:                                              ; preds = %171
  store i32 0, i32* %20, align 4
  br label %208

208:                                              ; preds = %207, %192
  %209 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %6, align 8
  %210 = call i32 @gfs2_trans_end(%struct.gfs2_sbd* %209)
  br label %211

211:                                              ; preds = %208, %169
  %212 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %213 = call i32 @gfs2_inplace_release(%struct.gfs2_inode* %212)
  br label %214

214:                                              ; preds = %211, %144, %112
  %215 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %12)
  br label %216

216:                                              ; preds = %214, %94, %81
  br label %217

217:                                              ; preds = %221, %216
  %218 = load i32, i32* %13, align 4
  %219 = add i32 %218, -1
  store i32 %219, i32* %13, align 4
  %220 = icmp ne i32 %218, 0
  br i1 %220, label %221, label %227

221:                                              ; preds = %217
  %222 = load %struct.gfs2_holder*, %struct.gfs2_holder** %11, align 8
  %223 = load i32, i32* %13, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds %struct.gfs2_holder, %struct.gfs2_holder* %222, i64 %224
  %226 = call i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder* %225)
  br label %217

227:                                              ; preds = %217
  %228 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %229 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = call i32 @mutex_unlock(i32* %230)
  %232 = load %struct.gfs2_holder*, %struct.gfs2_holder** %11, align 8
  %233 = call i32 @kfree(%struct.gfs2_holder* %232)
  %234 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %235 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %234, i32 0, i32 0
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %237, align 8
  %239 = load %struct.gfs2_inode*, %struct.gfs2_inode** %7, align 8
  %240 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %239, i32 0, i32 0
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %240, align 8
  %242 = call i32 @gfs2_log_flush(%struct.gfs2_sbd* %238, %struct.TYPE_5__* %241)
  %243 = load i32, i32* %20, align 4
  store i32 %243, i32* %3, align 4
  br label %244

244:                                              ; preds = %227, %47, %37
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local %struct.gfs2_inode* @GFS2_I(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @gfs2_rs_alloc(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_write_calc_reserv(%struct.gfs2_inode*, i32, i32*, i32*) #1

declare dso_local %struct.gfs2_holder* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @sort(%struct.gfs2_quota_data**, i32, i32, i32, i32*) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @gfs2_glock_nq_init(%struct.TYPE_5__*, i32, i32, %struct.gfs2_holder*) #1

declare dso_local i32 @qd2offset(%struct.gfs2_quota_data*) #1

declare dso_local i32 @gfs2_write_alloc_required(%struct.gfs2_inode*, i32, i32, i32*) #1

declare dso_local i32 @gfs2_inplace_reserve(%struct.gfs2_inode*, %struct.gfs2_alloc_parms*) #1

declare dso_local i64 @gfs2_rg_blocks(%struct.gfs2_inode*, i32) #1

declare dso_local i32 @gfs2_trans_begin(%struct.gfs2_sbd*, i32, i32) #1

declare dso_local i32 @gfs2_adjust_quota(%struct.gfs2_inode*, i32, i32, %struct.gfs2_quota_data*, i32*) #1

declare dso_local i32 @do_qc(%struct.gfs2_quota_data*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @gfs2_trans_end(%struct.gfs2_sbd*) #1

declare dso_local i32 @gfs2_inplace_release(%struct.gfs2_inode*) #1

declare dso_local i32 @gfs2_glock_dq_uninit(%struct.gfs2_holder*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.gfs2_holder*) #1

declare dso_local i32 @gfs2_log_flush(%struct.gfs2_sbd*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

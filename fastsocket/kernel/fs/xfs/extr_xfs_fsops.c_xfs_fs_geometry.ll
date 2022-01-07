; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_fsops.c_xfs_fs_geometry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/xfs/extr_xfs_fsops.c_xfs_fs_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@XFS_FSOP_GEOM_VERSION = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_ATTR = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_NLINK = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_QUOTA = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_IALIGN = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_DALIGN = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_SHARED = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_EXTFLG = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_DIRV2 = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_SECTOR = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_DIRV2CI = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_LAZYSB = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_ATTR2 = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_PROJID32 = common dso_local global i32 0, align 4
@BBSIZE = common dso_local global i32 0, align 4
@XFS_FSOP_GEOM_FLAGS_LOGV2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_fs_geometry(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %8 = call i32 @memset(%struct.TYPE_21__* %7, i32 0, i32 84)
  %9 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 20
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 19
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 15
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 18
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 17
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 16
  store i32 %36, i32* %38, align 4
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %43, i32 0, i32 15
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 14
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 13
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 12
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 11
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 10
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 9
  store i32 %78, i32* %80, align 4
  %81 = call i32 @ASSERT(i32 1)
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 5
  %88 = call i32 @memcpy(i32 %84, i32* %87, i32 4)
  %89 = load i32, i32* %6, align 4
  %90 = icmp sge i32 %89, 2
  br i1 %90, label %91, label %104

91:                                               ; preds = %3
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %91, %3
  %105 = load i32, i32* %6, align 4
  %106 = icmp sge i32 %105, 3
  br i1 %106, label %107, label %268

107:                                              ; preds = %104
  %108 = load i32, i32* @XFS_FSOP_GEOM_VERSION, align 4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 0
  %113 = call i64 @xfs_sb_version_hasattr(%struct.TYPE_22__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107
  %116 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_ATTR, align 4
  br label %118

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117, %115
  %119 = phi i32 [ %116, %115 ], [ 0, %117 ]
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = call i64 @xfs_sb_version_hasnlink(%struct.TYPE_22__* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_NLINK, align 4
  br label %127

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i32 [ %125, %124 ], [ 0, %126 ]
  %129 = or i32 %119, %128
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = call i64 @xfs_sb_version_hasquota(%struct.TYPE_22__* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_QUOTA, align 4
  br label %137

136:                                              ; preds = %127
  br label %137

137:                                              ; preds = %136, %134
  %138 = phi i32 [ %135, %134 ], [ 0, %136 ]
  %139 = or i32 %129, %138
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 0
  %142 = call i64 @xfs_sb_version_hasalign(%struct.TYPE_22__* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_IALIGN, align 4
  br label %147

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146, %144
  %148 = phi i32 [ %145, %144 ], [ 0, %146 ]
  %149 = or i32 %139, %148
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %150, i32 0, i32 0
  %152 = call i64 @xfs_sb_version_hasdalign(%struct.TYPE_22__* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_DALIGN, align 4
  br label %157

156:                                              ; preds = %147
  br label %157

157:                                              ; preds = %156, %154
  %158 = phi i32 [ %155, %154 ], [ 0, %156 ]
  %159 = or i32 %149, %158
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = call i64 @xfs_sb_version_hasshared(%struct.TYPE_22__* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_SHARED, align 4
  br label %167

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166, %164
  %168 = phi i32 [ %165, %164 ], [ 0, %166 ]
  %169 = or i32 %159, %168
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = call i64 @xfs_sb_version_hasextflgbit(%struct.TYPE_22__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %167
  %175 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_EXTFLG, align 4
  br label %177

176:                                              ; preds = %167
  br label %177

177:                                              ; preds = %176, %174
  %178 = phi i32 [ %175, %174 ], [ 0, %176 ]
  %179 = or i32 %169, %178
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = call i64 @xfs_sb_version_hasdirv2(%struct.TYPE_22__* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_DIRV2, align 4
  br label %187

186:                                              ; preds = %177
  br label %187

187:                                              ; preds = %186, %184
  %188 = phi i32 [ %185, %184 ], [ 0, %186 ]
  %189 = or i32 %179, %188
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 0
  %192 = call i64 @xfs_sb_version_hassector(%struct.TYPE_22__* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_SECTOR, align 4
  br label %197

196:                                              ; preds = %187
  br label %197

197:                                              ; preds = %196, %194
  %198 = phi i32 [ %195, %194 ], [ 0, %196 ]
  %199 = or i32 %189, %198
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 0
  %202 = call i64 @xfs_sb_version_hasasciici(%struct.TYPE_22__* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_DIRV2CI, align 4
  br label %207

206:                                              ; preds = %197
  br label %207

207:                                              ; preds = %206, %204
  %208 = phi i32 [ %205, %204 ], [ 0, %206 ]
  %209 = or i32 %199, %208
  %210 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 0
  %212 = call i64 @xfs_sb_version_haslazysbcount(%struct.TYPE_22__* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %207
  %215 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_LAZYSB, align 4
  br label %217

216:                                              ; preds = %207
  br label %217

217:                                              ; preds = %216, %214
  %218 = phi i32 [ %215, %214 ], [ 0, %216 ]
  %219 = or i32 %209, %218
  %220 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = call i64 @xfs_sb_version_hasattr2(%struct.TYPE_22__* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %217
  %225 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_ATTR2, align 4
  br label %227

226:                                              ; preds = %217
  br label %227

227:                                              ; preds = %226, %224
  %228 = phi i32 [ %225, %224 ], [ 0, %226 ]
  %229 = or i32 %219, %228
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 0
  %232 = call i64 @xfs_sb_version_hasprojid32bit(%struct.TYPE_22__* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %227
  %235 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_PROJID32, align 4
  br label %237

236:                                              ; preds = %227
  br label %237

237:                                              ; preds = %236, %234
  %238 = phi i32 [ %235, %234 ], [ 0, %236 ]
  %239 = or i32 %229, %238
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %241 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 4
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 0
  %244 = call i64 @xfs_sb_version_hassector(%struct.TYPE_22__* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %237
  %247 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  br label %253

251:                                              ; preds = %237
  %252 = load i32, i32* @BBSIZE, align 4
  br label %253

253:                                              ; preds = %251, %246
  %254 = phi i32 [ %250, %246 ], [ %252, %251 ]
  %255 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 4
  store i32 %254, i32* %256, align 4
  %257 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %261, i32 0, i32 3
  store i32 %260, i32* %262, align 4
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 2
  store i32 %265, i32* %267, align 4
  br label %268

268:                                              ; preds = %253, %104
  %269 = load i32, i32* %6, align 4
  %270 = icmp sge i32 %269, 4
  br i1 %270, label %271, label %291

271:                                              ; preds = %268
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %272, i32 0, i32 0
  %274 = call i64 @xfs_sb_version_haslogv2(%struct.TYPE_22__* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %271
  %277 = load i32, i32* @XFS_FSOP_GEOM_FLAGS_LOGV2, align 4
  br label %279

278:                                              ; preds = %271
  br label %279

279:                                              ; preds = %278, %276
  %280 = phi i32 [ %277, %276 ], [ 0, %278 ]
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 4
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 1
  store i32 %288, i32* %290, align 4
  br label %291

291:                                              ; preds = %279, %268
  ret i32 0
}

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @xfs_sb_version_hasattr(%struct.TYPE_22__*) #1

declare dso_local i64 @xfs_sb_version_hasnlink(%struct.TYPE_22__*) #1

declare dso_local i64 @xfs_sb_version_hasquota(%struct.TYPE_22__*) #1

declare dso_local i64 @xfs_sb_version_hasalign(%struct.TYPE_22__*) #1

declare dso_local i64 @xfs_sb_version_hasdalign(%struct.TYPE_22__*) #1

declare dso_local i64 @xfs_sb_version_hasshared(%struct.TYPE_22__*) #1

declare dso_local i64 @xfs_sb_version_hasextflgbit(%struct.TYPE_22__*) #1

declare dso_local i64 @xfs_sb_version_hasdirv2(%struct.TYPE_22__*) #1

declare dso_local i64 @xfs_sb_version_hassector(%struct.TYPE_22__*) #1

declare dso_local i64 @xfs_sb_version_hasasciici(%struct.TYPE_22__*) #1

declare dso_local i64 @xfs_sb_version_haslazysbcount(%struct.TYPE_22__*) #1

declare dso_local i64 @xfs_sb_version_hasattr2(%struct.TYPE_22__*) #1

declare dso_local i64 @xfs_sb_version_hasprojid32bit(%struct.TYPE_22__*) #1

declare dso_local i64 @xfs_sb_version_haslogv2(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

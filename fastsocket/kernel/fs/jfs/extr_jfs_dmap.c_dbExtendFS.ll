; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbExtendFS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_dmap.c_dbExtendFS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.jfs_sb_info = type { i32, i32, %struct.bmap* }
%struct.bmap = type { i32, i32, i32, i32, i32*, i32, i32, i8*, i32 }
%struct.metapage = type { i64 }
%struct.dmapctl = type { i8** }
%struct.dmap = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"dbExtendFS: blkno:%Ld nblocks:%Ld newsize:%Ld\00", align 1
@MAXAG = common dso_local global i32 0, align 4
@BMAPBLKNO = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"dbExtendFS: L2 page could not be read\00", align 1
@EIO = common dso_local global i32 0, align 4
@L2MAXL1SIZE = common dso_local global i32 0, align 4
@CTLLEAFIND = common dso_local global i32 0, align 4
@LPERCTL = common dso_local global i32 0, align 4
@MAXL1SIZE = common dso_local global i32 0, align 4
@L2MAXL0SIZE = common dso_local global i32 0, align 4
@MAXL0SIZE = common dso_local global i32 0, align 4
@L2BPERDMAP = common dso_local global i32 0, align 4
@BPERDMAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"dbExtendFS: function has not returned as expected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbExtendFS(%struct.inode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jfs_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.metapage*, align 8
  %19 = alloca %struct.metapage*, align 8
  %20 = alloca %struct.metapage*, align 8
  %21 = alloca %struct.metapage*, align 8
  %22 = alloca %struct.dmapctl*, align 8
  %23 = alloca %struct.dmapctl*, align 8
  %24 = alloca %struct.dmapctl*, align 8
  %25 = alloca %struct.dmap*, align 8
  %26 = alloca i8**, align 8
  %27 = alloca i8**, align 8
  %28 = alloca i8**, align 8
  %29 = alloca %struct.bmap*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.jfs_sb_info* @JFS_SBI(i32 %36)
  store %struct.jfs_sb_info* %37, %struct.jfs_sb_info** %8, align 8
  %38 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %39 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %13, align 4
  store %struct.metapage* null, %struct.metapage** %20, align 8
  store %struct.metapage* null, %struct.metapage** %21, align 8
  %41 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %42 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %41, i32 0, i32 2
  %43 = load %struct.bmap*, %struct.bmap** %42, align 8
  store %struct.bmap* %43, %struct.bmap** %29, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* %16, align 4
  %52 = sext i32 %51 to i64
  %53 = call i32 @jfs_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %48, i64 %50, i64 %52)
  %54 = load i32, i32* %16, align 4
  %55 = load %struct.bmap*, %struct.bmap** %29, align 8
  %56 = getelementptr inbounds %struct.bmap, %struct.bmap* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.bmap*, %struct.bmap** %29, align 8
  %58 = getelementptr inbounds %struct.bmap, %struct.bmap* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @BMAPSZTOLEV(i32 %59)
  %61 = load %struct.bmap*, %struct.bmap** %29, align 8
  %62 = getelementptr inbounds %struct.bmap, %struct.bmap* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @dbGetL2AGSize(i32 %63)
  store i32 %64, i32* %31, align 4
  %65 = load %struct.bmap*, %struct.bmap** %29, align 8
  %66 = getelementptr inbounds %struct.bmap, %struct.bmap* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %32, align 4
  %68 = load i32, i32* %31, align 4
  %69 = load %struct.bmap*, %struct.bmap** %29, align 8
  %70 = getelementptr inbounds %struct.bmap, %struct.bmap* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* %31, align 4
  %72 = shl i32 1, %71
  %73 = load %struct.bmap*, %struct.bmap** %29, align 8
  %74 = getelementptr inbounds %struct.bmap, %struct.bmap* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.bmap*, %struct.bmap** %29, align 8
  %76 = getelementptr inbounds %struct.bmap, %struct.bmap* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %30, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %31, align 4
  %80 = ashr i32 %78, %79
  %81 = load %struct.bmap*, %struct.bmap** %29, align 8
  %82 = getelementptr inbounds %struct.bmap, %struct.bmap* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %16, align 4
  %84 = load %struct.bmap*, %struct.bmap** %29, align 8
  %85 = getelementptr inbounds %struct.bmap, %struct.bmap* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = srem i32 %83, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  %91 = load %struct.bmap*, %struct.bmap** %29, align 8
  %92 = getelementptr inbounds %struct.bmap, %struct.bmap* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* %31, align 4
  %96 = load i32, i32* %32, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %3
  br label %185

99:                                               ; preds = %3
  %100 = load i32, i32* %31, align 4
  %101 = load i32, i32* %32, align 4
  %102 = sub nsw i32 %100, %101
  %103 = shl i32 1, %102
  store i32 %103, i32* %14, align 4
  %104 = load %struct.bmap*, %struct.bmap** %29, align 8
  %105 = getelementptr inbounds %struct.bmap, %struct.bmap* %104, i32 0, i32 4
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %33, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %15, align 4
  br label %109

109:                                              ; preds = %152, %99
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %30, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %155

113:                                              ; preds = %109
  %114 = load %struct.bmap*, %struct.bmap** %29, align 8
  %115 = getelementptr inbounds %struct.bmap, %struct.bmap* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 0, i32* %119, align 4
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %146, %113
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %30, align 4
  %127 = icmp slt i32 %125, %126
  br label %128

128:                                              ; preds = %124, %120
  %129 = phi i1 [ false, %120 ], [ %127, %124 ]
  br i1 %129, label %130, label %151

130:                                              ; preds = %128
  %131 = load %struct.bmap*, %struct.bmap** %29, align 8
  %132 = getelementptr inbounds %struct.bmap, %struct.bmap* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.bmap*, %struct.bmap** %29, align 8
  %139 = getelementptr inbounds %struct.bmap, %struct.bmap* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %137
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %130
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  br label %120

151:                                              ; preds = %128
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %15, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %15, align 4
  br label %109

155:                                              ; preds = %109
  %156 = load i32, i32* %33, align 4
  %157 = load %struct.bmap*, %struct.bmap** %29, align 8
  %158 = getelementptr inbounds %struct.bmap, %struct.bmap* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %156
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %174, %155
  %164 = load i32, i32* %15, align 4
  %165 = load i32, i32* @MAXAG, align 4
  %166 = icmp slt i32 %164, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = load %struct.bmap*, %struct.bmap** %29, align 8
  %169 = getelementptr inbounds %struct.bmap, %struct.bmap* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 0, i32* %173, align 4
  br label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %15, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %15, align 4
  br label %163

177:                                              ; preds = %163
  %178 = load %struct.bmap*, %struct.bmap** %29, align 8
  %179 = getelementptr inbounds %struct.bmap, %struct.bmap* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = sdiv i32 %180, %181
  %183 = load %struct.bmap*, %struct.bmap** %29, align 8
  %184 = getelementptr inbounds %struct.bmap, %struct.bmap* %183, i32 0, i32 5
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %177, %98
  %186 = load i32, i32* @BMAPBLKNO, align 4
  %187 = load i32, i32* %9, align 4
  %188 = add nsw i32 %186, %187
  store i32 %188, i32* %17, align 4
  %189 = load %struct.inode*, %struct.inode** %5, align 8
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* @PSIZE, align 4
  %192 = call %struct.metapage* @read_metapage(%struct.inode* %189, i32 %190, i32 %191, i32 0)
  store %struct.metapage* %192, %struct.metapage** %19, align 8
  %193 = load %struct.metapage*, %struct.metapage** %19, align 8
  %194 = icmp ne %struct.metapage* %193, null
  br i1 %194, label %202, label %195

195:                                              ; preds = %185
  %196 = load %struct.inode*, %struct.inode** %5, align 8
  %197 = getelementptr inbounds %struct.inode, %struct.inode* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @jfs_error(i32 %198, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %200 = load i32, i32* @EIO, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %4, align 4
  br label %520

202:                                              ; preds = %185
  %203 = load %struct.metapage*, %struct.metapage** %19, align 8
  %204 = getelementptr inbounds %struct.metapage, %struct.metapage* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to %struct.dmapctl*
  store %struct.dmapctl* %206, %struct.dmapctl** %22, align 8
  %207 = load i32, i32* %6, align 4
  %208 = load i32, i32* @L2MAXL1SIZE, align 4
  %209 = ashr i32 %207, %208
  store i32 %209, i32* %14, align 4
  %210 = load %struct.dmapctl*, %struct.dmapctl** %22, align 8
  %211 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %210, i32 0, i32 0
  %212 = load i8**, i8*** %211, align 8
  %213 = load i32, i32* @CTLLEAFIND, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8*, i8** %212, i64 %214
  %216 = load i32, i32* %14, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  store i8** %218, i8*** %28, align 8
  %219 = load i32, i32* %6, align 4
  %220 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %221 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @BLKTOL1(i32 %219, i32 %222)
  store i32 %223, i32* %17, align 4
  br label %224

224:                                              ; preds = %491, %202
  %225 = load i32, i32* %14, align 4
  %226 = load i32, i32* @LPERCTL, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %228, label %497

228:                                              ; preds = %224
  %229 = load i32, i32* %13, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %264

231:                                              ; preds = %228
  %232 = load %struct.inode*, %struct.inode** %5, align 8
  %233 = load i32, i32* %17, align 4
  %234 = load i32, i32* @PSIZE, align 4
  %235 = call %struct.metapage* @read_metapage(%struct.inode* %232, i32 %233, i32 %234, i32 0)
  store %struct.metapage* %235, %struct.metapage** %20, align 8
  %236 = load %struct.metapage*, %struct.metapage** %20, align 8
  %237 = icmp eq %struct.metapage* %236, null
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  br label %502

239:                                              ; preds = %231
  %240 = load %struct.metapage*, %struct.metapage** %20, align 8
  %241 = getelementptr inbounds %struct.metapage, %struct.metapage* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = inttoptr i64 %242 to %struct.dmapctl*
  store %struct.dmapctl* %243, %struct.dmapctl** %23, align 8
  %244 = load i32, i32* %6, align 4
  %245 = load i32, i32* @MAXL1SIZE, align 4
  %246 = sub nsw i32 %245, 1
  %247 = and i32 %244, %246
  %248 = load i32, i32* @L2MAXL0SIZE, align 4
  %249 = ashr i32 %247, %248
  store i32 %249, i32* %12, align 4
  %250 = load %struct.dmapctl*, %struct.dmapctl** %23, align 8
  %251 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %250, i32 0, i32 0
  %252 = load i8**, i8*** %251, align 8
  %253 = load i32, i32* @CTLLEAFIND, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8*, i8** %255, i64 %257
  store i8** %258, i8*** %27, align 8
  %259 = load i32, i32* %6, align 4
  %260 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %261 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @BLKTOL0(i32 %259, i32 %262)
  store i32 %263, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %286

264:                                              ; preds = %228
  %265 = load %struct.inode*, %struct.inode** %5, align 8
  %266 = load i32, i32* %17, align 4
  %267 = load i32, i32* @PSIZE, align 4
  %268 = call %struct.metapage* @get_metapage(%struct.inode* %265, i32 %266, i32 %267, i32 0)
  store %struct.metapage* %268, %struct.metapage** %20, align 8
  %269 = load %struct.metapage*, %struct.metapage** %20, align 8
  %270 = icmp eq %struct.metapage* %269, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %264
  br label %502

272:                                              ; preds = %264
  %273 = load %struct.metapage*, %struct.metapage** %20, align 8
  %274 = getelementptr inbounds %struct.metapage, %struct.metapage* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = inttoptr i64 %275 to %struct.dmapctl*
  store %struct.dmapctl* %276, %struct.dmapctl** %23, align 8
  store i32 0, i32* %12, align 4
  %277 = load %struct.dmapctl*, %struct.dmapctl** %23, align 8
  %278 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %277, i32 0, i32 0
  %279 = load i8**, i8*** %278, align 8
  %280 = load i32, i32* @CTLLEAFIND, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8*, i8** %279, i64 %281
  store i8** %282, i8*** %27, align 8
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* %17, align 4
  %285 = add nsw i32 %284, %283
  store i32 %285, i32* %17, align 4
  br label %286

286:                                              ; preds = %272, %239
  br label %287

287:                                              ; preds = %463, %286
  %288 = load i32, i32* %12, align 4
  %289 = load i32, i32* @LPERCTL, align 4
  %290 = icmp slt i32 %288, %289
  br i1 %290, label %291, label %466

291:                                              ; preds = %287
  %292 = load i32, i32* %11, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %327

294:                                              ; preds = %291
  %295 = load %struct.inode*, %struct.inode** %5, align 8
  %296 = load i32, i32* %17, align 4
  %297 = load i32, i32* @PSIZE, align 4
  %298 = call %struct.metapage* @read_metapage(%struct.inode* %295, i32 %296, i32 %297, i32 0)
  store %struct.metapage* %298, %struct.metapage** %21, align 8
  %299 = load %struct.metapage*, %struct.metapage** %21, align 8
  %300 = icmp eq %struct.metapage* %299, null
  br i1 %300, label %301, label %302

301:                                              ; preds = %294
  br label %502

302:                                              ; preds = %294
  %303 = load %struct.metapage*, %struct.metapage** %21, align 8
  %304 = getelementptr inbounds %struct.metapage, %struct.metapage* %303, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = inttoptr i64 %305 to %struct.dmapctl*
  store %struct.dmapctl* %306, %struct.dmapctl** %24, align 8
  %307 = load i32, i32* %6, align 4
  %308 = load i32, i32* @MAXL0SIZE, align 4
  %309 = sub nsw i32 %308, 1
  %310 = and i32 %307, %309
  %311 = load i32, i32* @L2BPERDMAP, align 4
  %312 = ashr i32 %310, %311
  store i32 %312, i32* %10, align 4
  %313 = load %struct.dmapctl*, %struct.dmapctl** %24, align 8
  %314 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %313, i32 0, i32 0
  %315 = load i8**, i8*** %314, align 8
  %316 = load i32, i32* @CTLLEAFIND, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8*, i8** %315, i64 %317
  %319 = load i32, i32* %10, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8*, i8** %318, i64 %320
  store i8** %321, i8*** %26, align 8
  %322 = load i32, i32* %6, align 4
  %323 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %8, align 8
  %324 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @BLKTODMAP(i32 %322, i32 %325)
  store i32 %326, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %349

327:                                              ; preds = %291
  %328 = load %struct.inode*, %struct.inode** %5, align 8
  %329 = load i32, i32* %17, align 4
  %330 = load i32, i32* @PSIZE, align 4
  %331 = call %struct.metapage* @get_metapage(%struct.inode* %328, i32 %329, i32 %330, i32 0)
  store %struct.metapage* %331, %struct.metapage** %21, align 8
  %332 = load %struct.metapage*, %struct.metapage** %21, align 8
  %333 = icmp eq %struct.metapage* %332, null
  br i1 %333, label %334, label %335

334:                                              ; preds = %327
  br label %502

335:                                              ; preds = %327
  %336 = load %struct.metapage*, %struct.metapage** %21, align 8
  %337 = getelementptr inbounds %struct.metapage, %struct.metapage* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = inttoptr i64 %338 to %struct.dmapctl*
  store %struct.dmapctl* %339, %struct.dmapctl** %24, align 8
  store i32 0, i32* %10, align 4
  %340 = load %struct.dmapctl*, %struct.dmapctl** %24, align 8
  %341 = getelementptr inbounds %struct.dmapctl, %struct.dmapctl* %340, i32 0, i32 0
  %342 = load i8**, i8*** %341, align 8
  %343 = load i32, i32* @CTLLEAFIND, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8*, i8** %342, i64 %344
  store i8** %345, i8*** %26, align 8
  %346 = load i32, i32* %9, align 4
  %347 = load i32, i32* %17, align 4
  %348 = add nsw i32 %347, %346
  store i32 %348, i32* %17, align 4
  br label %349

349:                                              ; preds = %335, %302
  br label %350

350:                                              ; preds = %433, %349
  %351 = load i32, i32* %10, align 4
  %352 = load i32, i32* @LPERCTL, align 4
  %353 = icmp slt i32 %351, %352
  br i1 %353, label %354, label %436

354:                                              ; preds = %350
  %355 = load i32, i32* %6, align 4
  %356 = load i32, i32* @BPERDMAP, align 4
  %357 = sub nsw i32 %356, 1
  %358 = and i32 %355, %357
  store i32 %358, i32* %15, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %374

360:                                              ; preds = %354
  %361 = load %struct.inode*, %struct.inode** %5, align 8
  %362 = load i32, i32* %17, align 4
  %363 = load i32, i32* @PSIZE, align 4
  %364 = call %struct.metapage* @read_metapage(%struct.inode* %361, i32 %362, i32 %363, i32 0)
  store %struct.metapage* %364, %struct.metapage** %18, align 8
  %365 = load %struct.metapage*, %struct.metapage** %18, align 8
  %366 = icmp eq %struct.metapage* %365, null
  br i1 %366, label %367, label %368

367:                                              ; preds = %360
  br label %502

368:                                              ; preds = %360
  %369 = load i32, i32* %7, align 4
  %370 = load i32, i32* @BPERDMAP, align 4
  %371 = load i32, i32* %15, align 4
  %372 = sub nsw i32 %370, %371
  %373 = call i32 @min(i32 %369, i32 %372)
  store i32 %373, i32* %15, align 4
  br label %386

374:                                              ; preds = %354
  %375 = load %struct.inode*, %struct.inode** %5, align 8
  %376 = load i32, i32* %17, align 4
  %377 = load i32, i32* @PSIZE, align 4
  %378 = call %struct.metapage* @read_metapage(%struct.inode* %375, i32 %376, i32 %377, i32 0)
  store %struct.metapage* %378, %struct.metapage** %18, align 8
  %379 = load %struct.metapage*, %struct.metapage** %18, align 8
  %380 = icmp eq %struct.metapage* %379, null
  br i1 %380, label %381, label %382

381:                                              ; preds = %374
  br label %502

382:                                              ; preds = %374
  %383 = load i32, i32* %7, align 4
  %384 = load i32, i32* @BPERDMAP, align 4
  %385 = call i32 @min(i32 %383, i32 %384)
  store i32 %385, i32* %15, align 4
  br label %386

386:                                              ; preds = %382, %368
  %387 = load %struct.metapage*, %struct.metapage** %18, align 8
  %388 = getelementptr inbounds %struct.metapage, %struct.metapage* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = inttoptr i64 %389 to %struct.dmap*
  store %struct.dmap* %390, %struct.dmap** %25, align 8
  %391 = load %struct.dmap*, %struct.dmap** %25, align 8
  %392 = load i32, i32* %6, align 4
  %393 = load i32, i32* %15, align 4
  %394 = call i8* @dbInitDmap(%struct.dmap* %391, i32 %392, i32 %393)
  %395 = load i8**, i8*** %26, align 8
  store i8* %394, i8** %395, align 8
  %396 = load i32, i32* %15, align 4
  %397 = load %struct.bmap*, %struct.bmap** %29, align 8
  %398 = getelementptr inbounds %struct.bmap, %struct.bmap* %397, i32 0, i32 6
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %399, %396
  store i32 %400, i32* %398, align 4
  %401 = load %struct.dmap*, %struct.dmap** %25, align 8
  %402 = getelementptr inbounds %struct.dmap, %struct.dmap* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @le64_to_cpu(i32 %403)
  %405 = load i32, i32* %31, align 4
  %406 = ashr i32 %404, %405
  store i32 %406, i32* %30, align 4
  %407 = load i32, i32* %15, align 4
  %408 = load %struct.bmap*, %struct.bmap** %29, align 8
  %409 = getelementptr inbounds %struct.bmap, %struct.bmap* %408, i32 0, i32 4
  %410 = load i32*, i32** %409, align 8
  %411 = load i32, i32* %30, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = add nsw i32 %414, %407
  store i32 %415, i32* %413, align 4
  %416 = load %struct.metapage*, %struct.metapage** %18, align 8
  %417 = call i32 @write_metapage(%struct.metapage* %416)
  %418 = load i8**, i8*** %26, align 8
  %419 = getelementptr inbounds i8*, i8** %418, i32 1
  store i8** %419, i8*** %26, align 8
  %420 = load i32, i32* %9, align 4
  %421 = load i32, i32* %17, align 4
  %422 = add nsw i32 %421, %420
  store i32 %422, i32* %17, align 4
  %423 = load i32, i32* %15, align 4
  %424 = load i32, i32* %6, align 4
  %425 = add nsw i32 %424, %423
  store i32 %425, i32* %6, align 4
  %426 = load i32, i32* %15, align 4
  %427 = load i32, i32* %7, align 4
  %428 = sub nsw i32 %427, %426
  store i32 %428, i32* %7, align 4
  %429 = load i32, i32* %7, align 4
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %386
  br label %436

432:                                              ; preds = %386
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %10, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %10, align 4
  br label %350

436:                                              ; preds = %431, %350
  %437 = load %struct.dmapctl*, %struct.dmapctl** %24, align 8
  %438 = load i32, i32* %10, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %10, align 4
  %440 = call i8* @dbInitDmapCtl(%struct.dmapctl* %437, i32 0, i32 %439)
  %441 = load i8**, i8*** %27, align 8
  store i8* %440, i8** %441, align 8
  %442 = load %struct.metapage*, %struct.metapage** %21, align 8
  %443 = call i32 @write_metapage(%struct.metapage* %442)
  store %struct.metapage* null, %struct.metapage** %21, align 8
  %444 = load i32, i32* %7, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %436
  %447 = load i8**, i8*** %27, align 8
  %448 = getelementptr inbounds i8*, i8** %447, i32 1
  store i8** %448, i8*** %27, align 8
  br label %462

449:                                              ; preds = %436
  %450 = load i32, i32* %12, align 4
  %451 = icmp sgt i32 %450, 0
  br i1 %451, label %452, label %453

452:                                              ; preds = %449
  br label %466

453:                                              ; preds = %449
  %454 = load i8**, i8*** %27, align 8
  %455 = load i8*, i8** %454, align 8
  %456 = load %struct.bmap*, %struct.bmap** %29, align 8
  %457 = getelementptr inbounds %struct.bmap, %struct.bmap* %456, i32 0, i32 7
  store i8* %455, i8** %457, align 8
  %458 = load %struct.metapage*, %struct.metapage** %20, align 8
  %459 = call i32 @release_metapage(%struct.metapage* %458)
  %460 = load %struct.metapage*, %struct.metapage** %19, align 8
  %461 = call i32 @release_metapage(%struct.metapage* %460)
  br label %519

462:                                              ; preds = %446
  br label %463

463:                                              ; preds = %462
  %464 = load i32, i32* %12, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %12, align 4
  br label %287

466:                                              ; preds = %452, %287
  %467 = load %struct.dmapctl*, %struct.dmapctl** %23, align 8
  %468 = load i32, i32* %12, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %12, align 4
  %470 = call i8* @dbInitDmapCtl(%struct.dmapctl* %467, i32 1, i32 %469)
  %471 = load i8**, i8*** %28, align 8
  store i8* %470, i8** %471, align 8
  %472 = load %struct.metapage*, %struct.metapage** %20, align 8
  %473 = call i32 @write_metapage(%struct.metapage* %472)
  store %struct.metapage* null, %struct.metapage** %20, align 8
  %474 = load i32, i32* %7, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %479

476:                                              ; preds = %466
  %477 = load i8**, i8*** %28, align 8
  %478 = getelementptr inbounds i8*, i8** %477, i32 1
  store i8** %478, i8*** %28, align 8
  br label %490

479:                                              ; preds = %466
  %480 = load i32, i32* %14, align 4
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %479
  br label %497

483:                                              ; preds = %479
  %484 = load i8**, i8*** %28, align 8
  %485 = load i8*, i8** %484, align 8
  %486 = load %struct.bmap*, %struct.bmap** %29, align 8
  %487 = getelementptr inbounds %struct.bmap, %struct.bmap* %486, i32 0, i32 7
  store i8* %485, i8** %487, align 8
  %488 = load %struct.metapage*, %struct.metapage** %19, align 8
  %489 = call i32 @release_metapage(%struct.metapage* %488)
  br label %519

490:                                              ; preds = %476
  br label %491

491:                                              ; preds = %490
  %492 = load i32, i32* %14, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %14, align 4
  %494 = load i32, i32* %9, align 4
  %495 = load i32, i32* %17, align 4
  %496 = add nsw i32 %495, %494
  store i32 %496, i32* %17, align 4
  br label %224

497:                                              ; preds = %482, %224
  %498 = load %struct.inode*, %struct.inode** %5, align 8
  %499 = getelementptr inbounds %struct.inode, %struct.inode* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 4
  %501 = call i32 @jfs_error(i32 %500, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %502

502:                                              ; preds = %497, %381, %367, %334, %301, %271, %238
  %503 = load %struct.metapage*, %struct.metapage** %21, align 8
  %504 = icmp ne %struct.metapage* %503, null
  br i1 %504, label %505, label %508

505:                                              ; preds = %502
  %506 = load %struct.metapage*, %struct.metapage** %21, align 8
  %507 = call i32 @release_metapage(%struct.metapage* %506)
  br label %508

508:                                              ; preds = %505, %502
  %509 = load %struct.metapage*, %struct.metapage** %20, align 8
  %510 = icmp ne %struct.metapage* %509, null
  br i1 %510, label %511, label %514

511:                                              ; preds = %508
  %512 = load %struct.metapage*, %struct.metapage** %20, align 8
  %513 = call i32 @release_metapage(%struct.metapage* %512)
  br label %514

514:                                              ; preds = %511, %508
  %515 = load %struct.metapage*, %struct.metapage** %19, align 8
  %516 = call i32 @release_metapage(%struct.metapage* %515)
  %517 = load i32, i32* @EIO, align 4
  %518 = sub nsw i32 0, %517
  store i32 %518, i32* %4, align 4
  br label %520

519:                                              ; preds = %483, %453
  store i32 0, i32* %4, align 4
  br label %520

520:                                              ; preds = %519, %514, %195
  %521 = load i32, i32* %4, align 4
  ret i32 %521
}

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local i32 @jfs_info(i8*, i64, i64, i64) #1

declare dso_local i32 @BMAPSZTOLEV(i32) #1

declare dso_local i32 @dbGetL2AGSize(i32) #1

declare dso_local %struct.metapage* @read_metapage(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i32 @BLKTOL1(i32, i32) #1

declare dso_local i32 @BLKTOL0(i32, i32) #1

declare dso_local %struct.metapage* @get_metapage(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @BLKTODMAP(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @dbInitDmap(%struct.dmap*, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

declare dso_local i8* @dbInitDmapCtl(%struct.dmapctl*, i32, i32) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

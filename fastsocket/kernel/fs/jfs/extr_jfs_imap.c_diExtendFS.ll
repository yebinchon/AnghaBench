; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diExtendFS.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_jfs_imap.c_diExtendFS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.inomap = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.iag = type { i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.bmap = type { i32 }
%struct.metapage = type { i64 }
%struct.TYPE_6__ = type { %struct.inomap* }
%struct.TYPE_5__ = type { %struct.bmap* }

@.str = private unnamed_addr constant [45 x i8] c"diExtendFS: nextiag:%d numinos:%d numfree:%d\00", align 1
@MAXAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"diExtendFs: unexpected value of iagnum\00", align 1
@EIO = common dso_local global i32 0, align 4
@EXTSPERIAG = common dso_local global i32 0, align 4
@L2INOSPEREXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"diExtendFs: numinos or numfree incorrect\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diExtendFS(%struct.inode* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inomap*, align 8
  %9 = alloca %struct.iag*, align 8
  %10 = alloca %struct.iag*, align 8
  %11 = alloca %struct.bmap*, align 8
  %12 = alloca %struct.metapage*, align 8
  %13 = alloca %struct.metapage*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 0, i32* %7, align 4
  %21 = load %struct.inode*, %struct.inode** %4, align 8
  %22 = call %struct.TYPE_6__* @JFS_IP(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load %struct.inomap*, %struct.inomap** %23, align 8
  store %struct.inomap* %24, %struct.inomap** %8, align 8
  store %struct.iag* null, %struct.iag** %9, align 8
  store %struct.iag* null, %struct.iag** %10, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_5__* @JFS_SBI(i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.bmap*, %struct.bmap** %29, align 8
  store %struct.bmap* %30, %struct.bmap** %11, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %31 = load %struct.inomap*, %struct.inomap** %8, align 8
  %32 = getelementptr inbounds %struct.inomap, %struct.inomap* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.inomap*, %struct.inomap** %8, align 8
  %35 = getelementptr inbounds %struct.inomap, %struct.inomap* %34, i32 0, i32 2
  %36 = call i32 @atomic_read(i32* %35)
  %37 = load %struct.inomap*, %struct.inomap** %8, align 8
  %38 = getelementptr inbounds %struct.inomap, %struct.inomap* %37, i32 0, i32 1
  %39 = call i32 @atomic_read(i32* %38)
  %40 = call i32 @jfs_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36, i32 %39)
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %74, %2
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* @MAXAG, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %41
  %46 = load %struct.inomap*, %struct.inomap** %8, align 8
  %47 = getelementptr inbounds %struct.inomap, %struct.inomap* %46, i32 0, i32 3
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 -1, i32* %52, align 8
  %53 = load %struct.inomap*, %struct.inomap** %8, align 8
  %54 = getelementptr inbounds %struct.inomap, %struct.inomap* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 -1, i32* %59, align 4
  %60 = load %struct.inomap*, %struct.inomap** %8, align 8
  %61 = getelementptr inbounds %struct.inomap, %struct.inomap* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.inomap*, %struct.inomap** %8, align 8
  %68 = getelementptr inbounds %struct.inomap, %struct.inomap* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %45
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %14, align 4
  br label %41

77:                                               ; preds = %41
  store i32 0, i32* %14, align 4
  br label %78

78:                                               ; preds = %302, %77
  %79 = load i32, i32* %14, align 4
  %80 = load %struct.inomap*, %struct.inomap** %8, align 8
  %81 = getelementptr inbounds %struct.inomap, %struct.inomap* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %305

84:                                               ; preds = %78
  %85 = load %struct.inomap*, %struct.inomap** %8, align 8
  %86 = load i32, i32* %14, align 4
  %87 = call i32 @diIAGRead(%struct.inomap* %85, i32 %86, %struct.metapage** %12)
  store i32 %87, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %7, align 4
  br label %302

91:                                               ; preds = %84
  %92 = load %struct.metapage*, %struct.metapage** %12, align 8
  %93 = getelementptr inbounds %struct.metapage, %struct.metapage* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.iag*
  store %struct.iag* %95, %struct.iag** %9, align 8
  %96 = load %struct.iag*, %struct.iag** %9, align 8
  %97 = getelementptr inbounds %struct.iag, %struct.iag* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @le32_to_cpu(i64 %98)
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %91
  %103 = load %struct.metapage*, %struct.metapage** %12, align 8
  %104 = call i32 @release_metapage(%struct.metapage* %103)
  %105 = load %struct.inode*, %struct.inode** %4, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @jfs_error(i32 %107, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %326

111:                                              ; preds = %91
  %112 = load %struct.iag*, %struct.iag** %9, align 8
  %113 = getelementptr inbounds %struct.iag, %struct.iag* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @EXTSPERIAG, align 4
  %116 = call i64 @cpu_to_le32(i32 %115)
  %117 = icmp eq i64 %114, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load %struct.metapage*, %struct.metapage** %12, align 8
  %120 = call i32 @release_metapage(%struct.metapage* %119)
  br label %302

121:                                              ; preds = %111
  %122 = load %struct.iag*, %struct.iag** %9, align 8
  %123 = getelementptr inbounds %struct.iag, %struct.iag* %122, i32 0, i32 7
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @le64_to_cpu(i32 %124)
  store i32 %125, i32* %20, align 4
  %126 = load i32, i32* %20, align 4
  %127 = load %struct.bmap*, %struct.bmap** %11, align 8
  %128 = getelementptr inbounds %struct.bmap, %struct.bmap* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = ashr i32 %126, %129
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* @EXTSPERIAG, align 4
  %132 = load %struct.iag*, %struct.iag** %9, align 8
  %133 = getelementptr inbounds %struct.iag, %struct.iag* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @le32_to_cpu(i64 %134)
  %136 = sub nsw i32 %131, %135
  %137 = load i32, i32* @L2INOSPEREXT, align 4
  %138 = shl i32 %136, %137
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %17, align 4
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %156

141:                                              ; preds = %121
  %142 = load i32, i32* %17, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct.inomap*, %struct.inomap** %8, align 8
  %145 = getelementptr inbounds %struct.inomap, %struct.inomap* %144, i32 0, i32 3
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %145, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %151, %143
  store i64 %152, i64* %150, align 8
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %18, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %18, align 4
  br label %156

156:                                              ; preds = %141, %121
  %157 = load %struct.iag*, %struct.iag** %9, align 8
  %158 = getelementptr inbounds %struct.iag, %struct.iag* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @le32_to_cpu(i64 %159)
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %237

162:                                              ; preds = %156
  %163 = load %struct.inomap*, %struct.inomap** %8, align 8
  %164 = getelementptr inbounds %struct.inomap, %struct.inomap* %163, i32 0, i32 3
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  store i32 %170, i32* %16, align 4
  %171 = icmp eq i32 %170, -1
  br i1 %171, label %172, label %179

172:                                              ; preds = %162
  %173 = call i64 @cpu_to_le32(i32 -1)
  %174 = load %struct.iag*, %struct.iag** %9, align 8
  %175 = getelementptr inbounds %struct.iag, %struct.iag* %174, i32 0, i32 6
  store i64 %173, i64* %175, align 8
  %176 = call i64 @cpu_to_le32(i32 -1)
  %177 = load %struct.iag*, %struct.iag** %9, align 8
  %178 = getelementptr inbounds %struct.iag, %struct.iag* %177, i32 0, i32 3
  store i64 %176, i64* %178, align 8
  br label %205

179:                                              ; preds = %162
  %180 = load %struct.inomap*, %struct.inomap** %8, align 8
  %181 = load i32, i32* %16, align 4
  %182 = call i32 @diIAGRead(%struct.inomap* %180, i32 %181, %struct.metapage** %13)
  store i32 %182, i32* %6, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %179
  %185 = load i32, i32* %6, align 4
  store i32 %185, i32* %7, align 4
  br label %299

186:                                              ; preds = %179
  %187 = load %struct.metapage*, %struct.metapage** %13, align 8
  %188 = getelementptr inbounds %struct.metapage, %struct.metapage* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = inttoptr i64 %189 to %struct.iag*
  store %struct.iag* %190, %struct.iag** %10, align 8
  %191 = load %struct.iag*, %struct.iag** %9, align 8
  %192 = getelementptr inbounds %struct.iag, %struct.iag* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.iag*, %struct.iag** %10, align 8
  %195 = getelementptr inbounds %struct.iag, %struct.iag* %194, i32 0, i32 3
  store i64 %193, i64* %195, align 8
  %196 = load i32, i32* %16, align 4
  %197 = call i64 @cpu_to_le32(i32 %196)
  %198 = load %struct.iag*, %struct.iag** %9, align 8
  %199 = getelementptr inbounds %struct.iag, %struct.iag* %198, i32 0, i32 6
  store i64 %197, i64* %199, align 8
  %200 = call i64 @cpu_to_le32(i32 -1)
  %201 = load %struct.iag*, %struct.iag** %9, align 8
  %202 = getelementptr inbounds %struct.iag, %struct.iag* %201, i32 0, i32 3
  store i64 %200, i64* %202, align 8
  %203 = load %struct.metapage*, %struct.metapage** %13, align 8
  %204 = call i32 @write_metapage(%struct.metapage* %203)
  br label %205

205:                                              ; preds = %186, %172
  %206 = load %struct.iag*, %struct.iag** %9, align 8
  %207 = getelementptr inbounds %struct.iag, %struct.iag* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @le32_to_cpu(i64 %208)
  %210 = load %struct.inomap*, %struct.inomap** %8, align 8
  %211 = getelementptr inbounds %struct.inomap, %struct.inomap* %210, i32 0, i32 3
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %211, align 8
  %213 = load i32, i32* %15, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  store i32 %209, i32* %216, align 8
  %217 = load %struct.iag*, %struct.iag** %9, align 8
  %218 = getelementptr inbounds %struct.iag, %struct.iag* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = call i32 @le32_to_cpu(i64 %219)
  %221 = sext i32 %220 to i64
  %222 = load %struct.inomap*, %struct.inomap** %8, align 8
  %223 = getelementptr inbounds %struct.inomap, %struct.inomap* %222, i32 0, i32 3
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = load i32, i32* %15, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %229, %221
  store i64 %230, i64* %228, align 8
  %231 = load %struct.iag*, %struct.iag** %9, align 8
  %232 = getelementptr inbounds %struct.iag, %struct.iag* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = call i32 @le32_to_cpu(i64 %233)
  %235 = load i32, i32* %19, align 4
  %236 = add nsw i32 %235, %234
  store i32 %236, i32* %19, align 4
  br label %237

237:                                              ; preds = %205, %156
  %238 = load %struct.iag*, %struct.iag** %9, align 8
  %239 = getelementptr inbounds %struct.iag, %struct.iag* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @le32_to_cpu(i64 %240)
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %298

243:                                              ; preds = %237
  %244 = load %struct.inomap*, %struct.inomap** %8, align 8
  %245 = getelementptr inbounds %struct.inomap, %struct.inomap* %244, i32 0, i32 3
  %246 = load %struct.TYPE_4__*, %struct.TYPE_4__** %245, align 8
  %247 = load i32, i32* %15, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  store i32 %251, i32* %16, align 4
  %252 = icmp eq i32 %251, -1
  br i1 %252, label %253, label %260

253:                                              ; preds = %243
  %254 = call i64 @cpu_to_le32(i32 -1)
  %255 = load %struct.iag*, %struct.iag** %9, align 8
  %256 = getelementptr inbounds %struct.iag, %struct.iag* %255, i32 0, i32 5
  store i64 %254, i64* %256, align 8
  %257 = call i64 @cpu_to_le32(i32 -1)
  %258 = load %struct.iag*, %struct.iag** %9, align 8
  %259 = getelementptr inbounds %struct.iag, %struct.iag* %258, i32 0, i32 4
  store i64 %257, i64* %259, align 8
  br label %286

260:                                              ; preds = %243
  %261 = load %struct.inomap*, %struct.inomap** %8, align 8
  %262 = load i32, i32* %16, align 4
  %263 = call i32 @diIAGRead(%struct.inomap* %261, i32 %262, %struct.metapage** %13)
  store i32 %263, i32* %6, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = load i32, i32* %6, align 4
  store i32 %266, i32* %7, align 4
  br label %299

267:                                              ; preds = %260
  %268 = load %struct.metapage*, %struct.metapage** %13, align 8
  %269 = getelementptr inbounds %struct.metapage, %struct.metapage* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = inttoptr i64 %270 to %struct.iag*
  store %struct.iag* %271, %struct.iag** %10, align 8
  %272 = load %struct.iag*, %struct.iag** %9, align 8
  %273 = getelementptr inbounds %struct.iag, %struct.iag* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = load %struct.iag*, %struct.iag** %10, align 8
  %276 = getelementptr inbounds %struct.iag, %struct.iag* %275, i32 0, i32 4
  store i64 %274, i64* %276, align 8
  %277 = load i32, i32* %16, align 4
  %278 = call i64 @cpu_to_le32(i32 %277)
  %279 = load %struct.iag*, %struct.iag** %9, align 8
  %280 = getelementptr inbounds %struct.iag, %struct.iag* %279, i32 0, i32 5
  store i64 %278, i64* %280, align 8
  %281 = call i64 @cpu_to_le32(i32 -1)
  %282 = load %struct.iag*, %struct.iag** %9, align 8
  %283 = getelementptr inbounds %struct.iag, %struct.iag* %282, i32 0, i32 4
  store i64 %281, i64* %283, align 8
  %284 = load %struct.metapage*, %struct.metapage** %13, align 8
  %285 = call i32 @write_metapage(%struct.metapage* %284)
  br label %286

286:                                              ; preds = %267, %253
  %287 = load %struct.iag*, %struct.iag** %9, align 8
  %288 = getelementptr inbounds %struct.iag, %struct.iag* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = call i32 @le32_to_cpu(i64 %289)
  %291 = load %struct.inomap*, %struct.inomap** %8, align 8
  %292 = getelementptr inbounds %struct.inomap, %struct.inomap* %291, i32 0, i32 3
  %293 = load %struct.TYPE_4__*, %struct.TYPE_4__** %292, align 8
  %294 = load i32, i32* %15, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i32 0, i32 1
  store i32 %290, i32* %297, align 4
  br label %298

298:                                              ; preds = %286, %237
  br label %299

299:                                              ; preds = %298, %265, %184
  %300 = load %struct.metapage*, %struct.metapage** %12, align 8
  %301 = call i32 @write_metapage(%struct.metapage* %300)
  br label %302

302:                                              ; preds = %299, %118, %89
  %303 = load i32, i32* %14, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %14, align 4
  br label %78

305:                                              ; preds = %78
  %306 = load i32, i32* %18, align 4
  %307 = load %struct.inomap*, %struct.inomap** %8, align 8
  %308 = getelementptr inbounds %struct.inomap, %struct.inomap* %307, i32 0, i32 2
  %309 = call i32 @atomic_read(i32* %308)
  %310 = icmp ne i32 %306, %309
  br i1 %310, label %317, label %311

311:                                              ; preds = %305
  %312 = load i32, i32* %19, align 4
  %313 = load %struct.inomap*, %struct.inomap** %8, align 8
  %314 = getelementptr inbounds %struct.inomap, %struct.inomap* %313, i32 0, i32 1
  %315 = call i32 @atomic_read(i32* %314)
  %316 = icmp ne i32 %312, %315
  br i1 %316, label %317, label %324

317:                                              ; preds = %311, %305
  %318 = load %struct.inode*, %struct.inode** %4, align 8
  %319 = getelementptr inbounds %struct.inode, %struct.inode* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @jfs_error(i32 %320, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %322 = load i32, i32* @EIO, align 4
  %323 = sub nsw i32 0, %322
  store i32 %323, i32* %3, align 4
  br label %326

324:                                              ; preds = %311
  %325 = load i32, i32* %7, align 4
  store i32 %325, i32* %3, align 4
  br label %326

326:                                              ; preds = %324, %317, %102
  %327 = load i32, i32* %3, align 4
  ret i32 %327
}

declare dso_local %struct.TYPE_6__* @JFS_IP(%struct.inode*) #1

declare dso_local %struct.TYPE_5__* @JFS_SBI(i32) #1

declare dso_local i32 @jfs_info(i8*, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @diIAGRead(%struct.inomap*, i32, %struct.metapage**) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @release_metapage(%struct.metapage*) #1

declare dso_local i32 @jfs_error(i32, i8*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @write_metapage(%struct.metapage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_zdb_read_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_zdb_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32 }
%struct.TYPE_30__ = type { i32* }
%struct.TYPE_28__ = type { i8*, %struct.TYPE_28__*, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i8* }

@.str = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"size must not be zero\00", align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"size must be a multiple of sector size\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"offset must be a multiple of sector size\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Invalid block specifier: %s  - %s\0A\00", align 1
@flagbits = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"***Invalid flag: %c\0A\00", align 1
@ZDB_FLAG_CHECKSUM = common dso_local global i32 0, align 4
@ZDB_FLAG_PRINT_BLKPTR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"***Invalid flag arg: '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"***Invalid vdev: %s\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"Found vdev: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Found vdev type: %s\0A\00", align 1
@SPA_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@ZDB_FLAG_GBH = common dso_local global i32 0, align 4
@TXG_INITIAL = common dso_local global i32 0, align 4
@ZIO_COMPRESS_OFF = common dso_local global i32 0, align 4
@ZIO_CHECKSUM_OFF = common dso_local global i32 0, align 4
@DMU_OT_NONE = common dso_local global i32 0, align 4
@ZFS_HOST_BYTEORDER = common dso_local global i32 0, align 4
@SCL_STATE = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SYNC_READ = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_RAW = common dso_local global i32 0, align 4
@ZIO_TYPE_READ = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_CACHE = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_QUEUE = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_PROPAGATE = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_RETRY = common dso_local global i32 0, align 4
@ZIO_FLAG_OPTIONAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [30 x i8] c"Read of %s failed, error: %d\0A\00", align 1
@ZDB_FLAG_DECOMPRESS = common dso_local global i32 0, align 4
@random_get_pseudo_bytes_cb = common dso_local global i32 0, align 4
@ZIO_COMPRESS_FUNCTIONS = common dso_local global i32 0, align 4
@SPA_MINBLOCKSIZE = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [25 x i8] c"Decompress of %s failed\0A\00", align 1
@ZDB_FLAG_RAW = common dso_local global i32 0, align 4
@ZDB_FLAG_INDIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_29__*)* @zdb_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zdb_read_block(i8* %0, %struct.TYPE_29__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_29__*, align 8
  %5 = alloca %struct.TYPE_30__, align 8
  %6 = alloca %struct.TYPE_30__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %4, align 8
  store %struct.TYPE_30__* %5, %struct.TYPE_30__** %6, align 8
  %30 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %33 = load i8*, i8** %3, align 8
  %34 = call i8* @strdup(i8* %33)
  store i8* %34, i8** %22, align 8
  %35 = load i8*, i8** %22, align 8
  %36 = call i8* @strtok(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %36, i8** %19, align 8
  %37 = load i8*, i8** %19, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i8*, i8** %19, align 8
  br label %42

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i8* [ %40, %39 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %41 ]
  store i8* %43, i8** %20, align 8
  %44 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %44, i8** %19, align 8
  %45 = load i8*, i8** %19, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i8*, i8** %19, align 8
  br label %50

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i8* [ %48, %47 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %49 ]
  %52 = call i32 @strtoull(i8* %51, i8** null, i32 16)
  store i32 %52, i32* %9, align 4
  %53 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %53, i8** %19, align 8
  %54 = load i8*, i8** %19, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i8*, i8** %19, align 8
  br label %59

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i8* [ %57, %56 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %58 ]
  %61 = call i32 @strtoull(i8* %60, i8** null, i32 16)
  store i32 %61, i32* %10, align 4
  %62 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %62, i8** %19, align 8
  %63 = load i8*, i8** %19, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i8*, i8** %19, align 8
  %67 = call i8* @strdup(i8* %66)
  store i8* %67, i8** %23, align 8
  br label %70

68:                                               ; preds = %59
  %69 = call i8* @strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %69, i8** %23, align 8
  br label %70

70:                                               ; preds = %68, %65
  store i8* null, i8** %19, align 8
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 8
  br label %74

74:                                               ; preds = %73, %70
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @DEV_BSIZE, align 4
  %77 = call i32 @IS_P2ALIGNED(i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8** %19, align 8
  br label %80

80:                                               ; preds = %79, %74
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @DEV_BSIZE, align 4
  %83 = call i32 @IS_P2ALIGNED(i32 %81, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %19, align 8
  br label %86

86:                                               ; preds = %85, %80
  %87 = load i8*, i8** %19, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %86
  %90 = load i8*, i8** %3, align 8
  %91 = load i8*, i8** %19, align 8
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i8* %90, i8* %91)
  %93 = load i8*, i8** %23, align 8
  %94 = call i32 @free(i8* %93)
  %95 = load i8*, i8** %22, align 8
  %96 = call i32 @free(i8* %95)
  br label %524

97:                                               ; preds = %86
  %98 = load i8*, i8** %23, align 8
  %99 = call i8* @strtok(i8* %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %99, i8** %19, align 8
  br label %100

100:                                              ; preds = %189, %97
  %101 = load i8*, i8** %19, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %191

103:                                              ; preds = %100
  store i32 0, i32* %24, align 4
  br label %104

104:                                              ; preds = %185, %103
  %105 = load i8*, i8** %23, align 8
  %106 = load i32, i32* %24, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = icmp ne i8 %109, 0
  br i1 %110, label %111, label %188

111:                                              ; preds = %104
  %112 = load i32*, i32** @flagbits, align 8
  %113 = load i8*, i8** %23, align 8
  %114 = load i32, i32* %24, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i64
  %119 = getelementptr inbounds i32, i32* %112, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %26, align 4
  %121 = load i32, i32* %26, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %111
  %124 = load i8*, i8** %23, align 8
  %125 = load i32, i32* %24, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %129)
  br label %185

131:                                              ; preds = %111
  %132 = load i32, i32* %26, align 4
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %26, align 4
  %136 = load i32, i32* @ZDB_FLAG_CHECKSUM, align 4
  %137 = load i32, i32* @ZDB_FLAG_PRINT_BLKPTR, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %135, %138
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  br label %185

142:                                              ; preds = %131
  %143 = load i8*, i8** %23, align 8
  %144 = load i32, i32* %24, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %143, i64 %146
  store i8* %147, i8** %21, align 8
  %148 = load i32, i32* %26, align 4
  %149 = load i32, i32* @ZDB_FLAG_PRINT_BLKPTR, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %142
  %152 = load i8*, i8** %21, align 8
  %153 = call i32 @strtoull(i8* %152, i8** %21, i32 16)
  store i32 %153, i32* %13, align 4
  br label %154

154:                                              ; preds = %151, %142
  %155 = load i8*, i8** %21, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 58
  br i1 %158, label %159, label %171

159:                                              ; preds = %154
  %160 = load i8*, i8** %21, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %159
  %165 = load i8*, i8** %19, align 8
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %165)
  %167 = load i8*, i8** %23, align 8
  %168 = call i32 @free(i8* %167)
  %169 = load i8*, i8** %22, align 8
  %170 = call i32 @free(i8* %169)
  br label %524

171:                                              ; preds = %159, %154
  %172 = load i8*, i8** %21, align 8
  %173 = load i8*, i8** %23, align 8
  %174 = load i32, i32* %24, align 4
  %175 = add nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  %178 = ptrtoint i8* %172 to i64
  %179 = ptrtoint i8* %177 to i64
  %180 = sub i64 %178, %179
  %181 = load i32, i32* %24, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %24, align 4
  br label %185

185:                                              ; preds = %171, %141, %123
  %186 = load i32, i32* %24, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %24, align 4
  br label %104

188:                                              ; preds = %104
  br label %189

189:                                              ; preds = %188
  %190 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %190, i8** %19, align 8
  br label %100

191:                                              ; preds = %100
  %192 = load i8*, i8** %23, align 8
  %193 = call i32 @free(i8* %192)
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i8*, i8** %20, align 8
  %198 = call %struct.TYPE_28__* @zdb_vdev_lookup(i32 %196, i8* %197)
  store %struct.TYPE_28__* %198, %struct.TYPE_28__** %15, align 8
  %199 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %200 = icmp eq %struct.TYPE_28__* %199, null
  br i1 %200, label %201, label %206

201:                                              ; preds = %191
  %202 = load i8*, i8** %20, align 8
  %203 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %202)
  %204 = load i8*, i8** %22, align 8
  %205 = call i32 @free(i8* %204)
  br label %524

206:                                              ; preds = %191
  %207 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load i32, i32* @stderr, align 4
  %213 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %213, i32 0, i32 0
  %215 = load i8*, i8** %214, align 8
  %216 = call i32 @fprintf(i32 %212, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %215)
  br label %225

217:                                              ; preds = %206
  %218 = load i32, i32* @stderr, align 4
  %219 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %220 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %219, i32 0, i32 3
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 0
  %223 = load i8*, i8** %222, align 8
  %224 = call i32 @fprintf(i32 %218, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i8* %223)
  br label %225

225:                                              ; preds = %217, %211
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %10, align 4
  store i32 %228, i32* %12, align 4
  %229 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %230 = load i32, i32* @B_FALSE, align 4
  %231 = call i32* @abd_alloc_linear(i32 %229, i32 %230)
  store i32* %231, i32** %16, align 8
  %232 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %233 = load i32, i32* @UMEM_NOFAIL, align 4
  %234 = call i8* @umem_alloc(i32 %232, i32 %233)
  store i8* %234, i8** %17, align 8
  %235 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %236 = call i32 @BP_ZERO(%struct.TYPE_30__* %235)
  %237 = load i32*, i32** %7, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = call i32 @DVA_SET_VDEV(i32* %238, i32 %241)
  %243 = load i32*, i32** %7, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %9, align 4
  %246 = call i32 @DVA_SET_OFFSET(i32* %244, i32 %245)
  %247 = load i32*, i32** %7, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %8, align 4
  %250 = load i32, i32* @ZDB_FLAG_GBH, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = call i32 @DVA_SET_GANG(i32* %248, i32 %255)
  %257 = load i32*, i32** %7, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %260 = load i32, i32* %11, align 4
  %261 = call i32 @vdev_psize_to_asize(%struct.TYPE_28__* %259, i32 %260)
  %262 = call i32 @DVA_SET_ASIZE(i32* %258, i32 %261)
  %263 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %264 = load i32, i32* @TXG_INITIAL, align 4
  %265 = load i32, i32* @TXG_INITIAL, align 4
  %266 = call i32 @BP_SET_BIRTH(%struct.TYPE_30__* %263, i32 %264, i32 %265)
  %267 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %268 = load i32, i32* %12, align 4
  %269 = call i32 @BP_SET_LSIZE(%struct.TYPE_30__* %267, i32 %268)
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %271 = load i32, i32* %11, align 4
  %272 = call i32 @BP_SET_PSIZE(%struct.TYPE_30__* %270, i32 %271)
  %273 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %274 = load i32, i32* @ZIO_COMPRESS_OFF, align 4
  %275 = call i32 @BP_SET_COMPRESS(%struct.TYPE_30__* %273, i32 %274)
  %276 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %277 = load i32, i32* @ZIO_CHECKSUM_OFF, align 4
  %278 = call i32 @BP_SET_CHECKSUM(%struct.TYPE_30__* %276, i32 %277)
  %279 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %280 = load i32, i32* @DMU_OT_NONE, align 4
  %281 = call i32 @BP_SET_TYPE(%struct.TYPE_30__* %279, i32 %280)
  %282 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %283 = call i32 @BP_SET_LEVEL(%struct.TYPE_30__* %282, i32 0)
  %284 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %285 = call i32 @BP_SET_DEDUP(%struct.TYPE_30__* %284, i32 0)
  %286 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %287 = load i32, i32* @ZFS_HOST_BYTEORDER, align 4
  %288 = call i32 @BP_SET_BYTEORDER(%struct.TYPE_30__* %286, i32 %287)
  %289 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %290 = load i32, i32* @SCL_STATE, align 4
  %291 = load i32, i32* @FTAG, align 4
  %292 = load i32, i32* @RW_READER, align 4
  %293 = call i32 @spa_config_enter(%struct.TYPE_29__* %289, i32 %290, i32 %291, i32 %292)
  %294 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %295 = call i32* @zio_root(%struct.TYPE_29__* %294, i32* null, i32* null, i32 0)
  store i32* %295, i32** %14, align 8
  %296 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %298 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %297, i32 0, i32 1
  %299 = load %struct.TYPE_28__*, %struct.TYPE_28__** %298, align 8
  %300 = icmp eq %struct.TYPE_28__* %296, %299
  br i1 %300, label %301, label %313

301:                                              ; preds = %226
  %302 = load i32*, i32** %14, align 8
  %303 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %304 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %305 = load i32*, i32** %16, align 8
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* @ZIO_PRIORITY_SYNC_READ, align 4
  %308 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %309 = load i32, i32* @ZIO_FLAG_RAW, align 4
  %310 = or i32 %308, %309
  %311 = call i32 @zio_read(i32* %302, %struct.TYPE_29__* %303, %struct.TYPE_30__* %304, i32* %305, i32 %306, i32* null, i32* null, i32 %307, i32 %310, i32* null)
  %312 = call i32 @zio_nowait(i32 %311)
  br label %337

313:                                              ; preds = %226
  %314 = load i32*, i32** %14, align 8
  %315 = load %struct.TYPE_30__*, %struct.TYPE_30__** %6, align 8
  %316 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %317 = load i32, i32* %9, align 4
  %318 = load i32*, i32** %16, align 8
  %319 = load i32, i32* %11, align 4
  %320 = load i32, i32* @ZIO_TYPE_READ, align 4
  %321 = load i32, i32* @ZIO_PRIORITY_SYNC_READ, align 4
  %322 = load i32, i32* @ZIO_FLAG_DONT_CACHE, align 4
  %323 = load i32, i32* @ZIO_FLAG_DONT_QUEUE, align 4
  %324 = or i32 %322, %323
  %325 = load i32, i32* @ZIO_FLAG_DONT_PROPAGATE, align 4
  %326 = or i32 %324, %325
  %327 = load i32, i32* @ZIO_FLAG_DONT_RETRY, align 4
  %328 = or i32 %326, %327
  %329 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %330 = or i32 %328, %329
  %331 = load i32, i32* @ZIO_FLAG_RAW, align 4
  %332 = or i32 %330, %331
  %333 = load i32, i32* @ZIO_FLAG_OPTIONAL, align 4
  %334 = or i32 %332, %333
  %335 = call i32 @zio_vdev_child_io(i32* %314, %struct.TYPE_30__* %315, %struct.TYPE_28__* %316, i32 %317, i32* %318, i32 %319, i32 %320, i32 %321, i32 %334, i32* null, i32* null)
  %336 = call i32 @zio_nowait(i32 %335)
  br label %337

337:                                              ; preds = %313, %301
  %338 = load i32*, i32** %14, align 8
  %339 = call i32 @zio_wait(i32* %338)
  store i32 %339, i32* %25, align 4
  %340 = load %struct.TYPE_29__*, %struct.TYPE_29__** %4, align 8
  %341 = load i32, i32* @SCL_STATE, align 4
  %342 = load i32, i32* @FTAG, align 4
  %343 = call i32 @spa_config_exit(%struct.TYPE_29__* %340, i32 %341, i32 %342)
  %344 = load i32, i32* %25, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %350

346:                                              ; preds = %337
  %347 = load i8*, i8** %3, align 8
  %348 = load i32, i32* %25, align 4
  %349 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* %347, i32 %348)
  br label %516

350:                                              ; preds = %337
  %351 = load i32, i32* %8, align 4
  %352 = load i32, i32* @ZDB_FLAG_DECOMPRESS, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %454

355:                                              ; preds = %350
  %356 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %357 = load i32, i32* @UMEM_NOFAIL, align 4
  %358 = call i8* @umem_alloc(i32 %356, i32 %357)
  store i8* %358, i8** %28, align 8
  %359 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %360 = load i32, i32* @UMEM_NOFAIL, align 4
  %361 = call i8* @umem_alloc(i32 %359, i32 %360)
  store i8* %361, i8** %29, align 8
  %362 = load i8*, i8** %28, align 8
  %363 = load i32*, i32** %16, align 8
  %364 = load i32, i32* %11, align 4
  %365 = call i32 @abd_copy_to_buf(i8* %362, i32* %363, i32 %364)
  %366 = load i32*, i32** %16, align 8
  %367 = load i32, i32* %11, align 4
  %368 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %369 = load i32, i32* %11, align 4
  %370 = sub nsw i32 %368, %369
  %371 = load i32, i32* @random_get_pseudo_bytes_cb, align 4
  %372 = call i32 @abd_iterate_func(i32* %366, i32 %367, i32 %370, i32 %371, i32* null)
  %373 = call i32 @VERIFY0(i32 %372)
  %374 = load i8*, i8** %28, align 8
  %375 = bitcast i8* %374 to i32*
  %376 = load i32, i32* %11, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  %379 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %380 = load i32, i32* %11, align 4
  %381 = sub nsw i32 %379, %380
  %382 = call i32 @random_get_pseudo_bytes(i32* %378, i32 %381)
  %383 = call i32 @VERIFY0(i32 %382)
  %384 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  store i32 %384, i32* %12, align 4
  br label %385

385:                                              ; preds = %432, %355
  %386 = load i32, i32* %12, align 4
  %387 = load i32, i32* %11, align 4
  %388 = icmp sgt i32 %386, %387
  br i1 %388, label %389, label %438

389:                                              ; preds = %385
  store i32 0, i32* %27, align 4
  br label %390

390:                                              ; preds = %418, %389
  %391 = load i32, i32* %27, align 4
  %392 = load i32, i32* @ZIO_COMPRESS_FUNCTIONS, align 4
  %393 = icmp ult i32 %391, %392
  br i1 %393, label %394, label %421

394:                                              ; preds = %390
  %395 = load i32, i32* %27, align 4
  %396 = load i32*, i32** %16, align 8
  %397 = load i8*, i8** %17, align 8
  %398 = load i32, i32* %11, align 4
  %399 = load i32, i32* %12, align 4
  %400 = call i64 @zio_decompress_data(i32 %395, i32* %396, i8* %397, i32 %398, i32 %399)
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %402, label %417

402:                                              ; preds = %394
  %403 = load i32, i32* %27, align 4
  %404 = load i8*, i8** %28, align 8
  %405 = load i8*, i8** %29, align 8
  %406 = load i32, i32* %11, align 4
  %407 = load i32, i32* %12, align 4
  %408 = call i64 @zio_decompress_data_buf(i32 %403, i8* %404, i8* %405, i32 %406, i32 %407)
  %409 = icmp eq i64 %408, 0
  br i1 %409, label %410, label %417

410:                                              ; preds = %402
  %411 = load i8*, i8** %17, align 8
  %412 = load i8*, i8** %29, align 8
  %413 = load i32, i32* %12, align 4
  %414 = call i64 @bcmp(i8* %411, i8* %412, i32 %413)
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %410
  br label %421

417:                                              ; preds = %410, %402, %394
  br label %418

418:                                              ; preds = %417
  %419 = load i32, i32* %27, align 4
  %420 = add i32 %419, 1
  store i32 %420, i32* %27, align 4
  br label %390

421:                                              ; preds = %416, %390
  %422 = load i32, i32* %27, align 4
  %423 = load i32, i32* @ZIO_COMPRESS_FUNCTIONS, align 4
  %424 = icmp ne i32 %422, %423
  br i1 %424, label %425, label %426

425:                                              ; preds = %421
  br label %438

426:                                              ; preds = %421
  %427 = load i64, i64* @SPA_MINBLOCKSIZE, align 8
  %428 = load i32, i32* %12, align 4
  %429 = sext i32 %428 to i64
  %430 = sub nsw i64 %429, %427
  %431 = trunc i64 %430 to i32
  store i32 %431, i32* %12, align 4
  br label %432

432:                                              ; preds = %426
  %433 = load i64, i64* @SPA_MINBLOCKSIZE, align 8
  %434 = load i32, i32* %12, align 4
  %435 = sext i32 %434 to i64
  %436 = sub nsw i64 %435, %433
  %437 = trunc i64 %436 to i32
  store i32 %437, i32* %12, align 4
  br label %385

438:                                              ; preds = %425, %385
  %439 = load i8*, i8** %28, align 8
  %440 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %441 = call i32 @umem_free(i8* %439, i32 %440)
  %442 = load i8*, i8** %29, align 8
  %443 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %444 = call i32 @umem_free(i8* %442, i32 %443)
  %445 = load i32, i32* %12, align 4
  %446 = load i32, i32* %11, align 4
  %447 = icmp sle i32 %445, %446
  br i1 %447, label %448, label %451

448:                                              ; preds = %438
  %449 = load i8*, i8** %3, align 8
  %450 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i8* %449)
  br label %516

451:                                              ; preds = %438
  %452 = load i8*, i8** %17, align 8
  store i8* %452, i8** %18, align 8
  %453 = load i32, i32* %12, align 4
  store i32 %453, i32* %10, align 4
  br label %458

454:                                              ; preds = %350
  %455 = load i32*, i32** %16, align 8
  %456 = call i8* @abd_to_buf(i32* %455)
  store i8* %456, i8** %18, align 8
  %457 = load i32, i32* %11, align 4
  store i32 %457, i32* %10, align 4
  br label %458

458:                                              ; preds = %454, %451
  %459 = load i32, i32* %8, align 4
  %460 = load i32, i32* @ZDB_FLAG_PRINT_BLKPTR, align 4
  %461 = and i32 %459, %460
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %463, label %473

463:                                              ; preds = %458
  %464 = load i8*, i8** %18, align 8
  %465 = ptrtoint i8* %464 to i64
  %466 = load i32, i32* %13, align 4
  %467 = sext i32 %466 to i64
  %468 = add i64 %465, %467
  %469 = inttoptr i64 %468 to i8*
  %470 = bitcast i8* %469 to %struct.TYPE_30__*
  %471 = load i32, i32* %8, align 4
  %472 = call i32 @zdb_print_blkptr(%struct.TYPE_30__* %470, i32 %471)
  br label %515

473:                                              ; preds = %458
  %474 = load i32, i32* %8, align 4
  %475 = load i32, i32* @ZDB_FLAG_RAW, align 4
  %476 = and i32 %474, %475
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %483

478:                                              ; preds = %473
  %479 = load i8*, i8** %18, align 8
  %480 = load i32, i32* %10, align 4
  %481 = load i32, i32* %8, align 4
  %482 = call i32 @zdb_dump_block_raw(i8* %479, i32 %480, i32 %481)
  br label %514

483:                                              ; preds = %473
  %484 = load i32, i32* %8, align 4
  %485 = load i32, i32* @ZDB_FLAG_INDIRECT, align 4
  %486 = and i32 %484, %485
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %497

488:                                              ; preds = %483
  %489 = load i8*, i8** %18, align 8
  %490 = bitcast i8* %489 to %struct.TYPE_30__*
  %491 = load i32, i32* %10, align 4
  %492 = sext i32 %491 to i64
  %493 = udiv i64 %492, 8
  %494 = trunc i64 %493 to i32
  %495 = load i32, i32* %8, align 4
  %496 = call i32 @zdb_dump_indirect(%struct.TYPE_30__* %490, i32 %494, i32 %495)
  br label %513

497:                                              ; preds = %483
  %498 = load i32, i32* %8, align 4
  %499 = load i32, i32* @ZDB_FLAG_GBH, align 4
  %500 = and i32 %498, %499
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %506

502:                                              ; preds = %497
  %503 = load i8*, i8** %18, align 8
  %504 = load i32, i32* %8, align 4
  %505 = call i32 @zdb_dump_gbh(i8* %503, i32 %504)
  br label %512

506:                                              ; preds = %497
  %507 = load i8*, i8** %3, align 8
  %508 = load i8*, i8** %18, align 8
  %509 = load i32, i32* %10, align 4
  %510 = load i32, i32* %8, align 4
  %511 = call i32 @zdb_dump_block(i8* %507, i8* %508, i32 %509, i32 %510)
  br label %512

512:                                              ; preds = %506, %502
  br label %513

513:                                              ; preds = %512, %488
  br label %514

514:                                              ; preds = %513, %478
  br label %515

515:                                              ; preds = %514, %463
  br label %516

516:                                              ; preds = %515, %448, %346
  %517 = load i32*, i32** %16, align 8
  %518 = call i32 @abd_free(i32* %517)
  %519 = load i8*, i8** %17, align 8
  %520 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %521 = call i32 @umem_free(i8* %519, i32 %520)
  %522 = load i8*, i8** %22, align 8
  %523 = call i32 @free(i8* %522)
  br label %524

524:                                              ; preds = %516, %201, %164, %89
  ret void
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok(i8*, i8*) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

declare dso_local i32 @IS_P2ALIGNED(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_28__* @zdb_vdev_lookup(i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32* @abd_alloc_linear(i32, i32) #1

declare dso_local i8* @umem_alloc(i32, i32) #1

declare dso_local i32 @BP_ZERO(%struct.TYPE_30__*) #1

declare dso_local i32 @DVA_SET_VDEV(i32*, i32) #1

declare dso_local i32 @DVA_SET_OFFSET(i32*, i32) #1

declare dso_local i32 @DVA_SET_GANG(i32*, i32) #1

declare dso_local i32 @DVA_SET_ASIZE(i32*, i32) #1

declare dso_local i32 @vdev_psize_to_asize(%struct.TYPE_28__*, i32) #1

declare dso_local i32 @BP_SET_BIRTH(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @BP_SET_LSIZE(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @BP_SET_PSIZE(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @BP_SET_COMPRESS(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @BP_SET_CHECKSUM(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @BP_SET_TYPE(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @BP_SET_LEVEL(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @BP_SET_DEDUP(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @BP_SET_BYTEORDER(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_29__*, i32, i32, i32) #1

declare dso_local i32* @zio_root(%struct.TYPE_29__*, i32*, i32*, i32) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @zio_read(i32*, %struct.TYPE_29__*, %struct.TYPE_30__*, i32*, i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @zio_vdev_child_io(i32*, %struct.TYPE_30__*, %struct.TYPE_28__*, i32, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @zio_wait(i32*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @abd_copy_to_buf(i8*, i32*, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @abd_iterate_func(i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @random_get_pseudo_bytes(i32*, i32) #1

declare dso_local i64 @zio_decompress_data(i32, i32*, i8*, i32, i32) #1

declare dso_local i64 @zio_decompress_data_buf(i32, i8*, i8*, i32, i32) #1

declare dso_local i64 @bcmp(i8*, i8*, i32) #1

declare dso_local i32 @umem_free(i8*, i32) #1

declare dso_local i8* @abd_to_buf(i32*) #1

declare dso_local i32 @zdb_print_blkptr(%struct.TYPE_30__*, i32) #1

declare dso_local i32 @zdb_dump_block_raw(i8*, i32, i32) #1

declare dso_local i32 @zdb_dump_indirect(%struct.TYPE_30__*, i32, i32) #1

declare dso_local i32 @zdb_dump_gbh(i8*, i32) #1

declare dso_local i32 @zdb_dump_block(i8*, i8*, i32, i32) #1

declare dso_local i32 @abd_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

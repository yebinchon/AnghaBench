; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zdb/extr_zdb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rlimit = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i32* }

@__const.main.rl = private unnamed_addr constant %struct.rlimit { i32 1024, i32 1024 }, align 4
@UINT64_MAX = common dso_local global i8* null, align 8
@ZFS_IMPORT_MISSING_LOG = common dso_local global i32 0, align 4
@ZPOOL_NEVER_REWIND = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@RLIMIT_NOFILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"SPA_CONFIG_PATH\00", align 1
@spa_config_path = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"AbcCdDeEFGhiI:klLmMo:Op:PqRsSt:uU:vVx:X\00", align 1
@dump_opt = common dso_local global i32* null, align 8
@optarg = common dso_local global i8* null, align 8
@max_inflight = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"maximum number of inflight I/Os must be greater than 0\0A\00", align 1
@UMEM_NOFAIL = common dso_local global i32 0, align 4
@TXG_INITIAL = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"incorrect txg specified: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"cachefile must be an absolute path (i.e. start with a slash)\0A\00", align 1
@ZFS_IMPORT_VERBATIM = common dso_local global i32 0, align 4
@vn_dumpdir = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"-p option requires use of -e\0A\00", align 1
@zfs_arc_meta_limit = common dso_local global i32 0, align 4
@zfs_arc_max = common dso_local global i32 0, align 4
@zfs_vdev_async_read_max_active = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@reference_tracking_enable = common dso_local global i8* null, align 8
@spa_load_verify_dryrun = common dso_local global i8* null, align 8
@FREAD = common dso_local global i32 0, align 4
@g_zfs = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"Fail to initialize zfs\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"AeEFklLOPRSX\00", align 1
@aok = common dso_local global i32 0, align 4
@zfs_recover = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@ZPOOL_DO_REWIND = common dso_local global i32 0, align 4
@ZPOOL_EXTREME_REWIND = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME_TYPE = common dso_local global i32 0, align 4
@ZPOOL_LOAD_REQUEST_TXG = common dso_local global i32 0, align 4
@ZPOOL_LOAD_REWIND_POLICY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [19 x i8] c"internal error: %s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"\0AConfiguration for import:\0A\00", align 1
@ZPOOL_LOAD_POLICY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"can't open '%s': %s\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"/@\00", align 1
@FTAG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [61 x i8] c"Tried to open pool \22%s\22 but spa_open() failed with error %d\0A\00", align 1
@spa_namespace_lock = common dso_local global i32 0, align 4
@SPA_LOG_MISSING = common dso_local global i64 0, align 8
@SPA_LOG_CLEAR = common dso_local global i64 0, align 8
@DMU_OST_ANY = common dso_local global i32 0, align 4
@zopt_objects = common dso_local global i32 0, align 4
@zopt_object = common dso_local global i64* null, align 8
@errno = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"bad number %s: %s\00", align 1
@ZDB_FLAG_PRINT_BLKPTR = common dso_local global i32 0, align 4
@flagbits = common dso_local global i32* null, align 8
@ZDB_FLAG_CHECKSUM = common dso_local global i32 0, align 4
@ZDB_FLAG_DECOMPRESS = common dso_local global i32 0, align 4
@ZDB_FLAG_BSWAP = common dso_local global i32 0, align 4
@ZDB_FLAG_GBH = common dso_local global i32 0, align 4
@ZDB_FLAG_INDIRECT = common dso_local global i32 0, align 4
@ZDB_FLAG_PHYS = common dso_local global i32 0, align 4
@ZDB_FLAG_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rlimit, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %30 = bitcast %struct.rlimit* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast (%struct.rlimit* @__const.main.rl to i8*), i64 8, i1 false)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %8, align 8
  store i32* null, i32** %9, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i8** null, i8*** %13, align 8
  store i32 0, i32* %14, align 4
  store i32* null, i32** %16, align 8
  %31 = load i8*, i8** @UINT64_MAX, align 8
  store i8* %31, i8** %17, align 8
  %32 = load i32, i32* @ZFS_IMPORT_MISSING_LOG, align 4
  store i32 %32, i32* %18, align 4
  %33 = load i32, i32* @ZPOOL_NEVER_REWIND, align 4
  store i32 %33, i32* %19, align 4
  %34 = load i8*, i8** @B_TRUE, align 8
  store i8* %34, i8** %21, align 8
  store i32* null, i32** %22, align 8
  %35 = load i32, i32* @RLIMIT_NOFILE, align 4
  %36 = call i32 @setrlimit(i32 %35, %struct.rlimit* %7)
  %37 = call i32 @enable_extended_FILE_stdio(i32 -1, i32 -1)
  %38 = load i8**, i8*** %5, align 8
  %39 = call i32 @dprintf_setup(i32* %4, i8** %38)
  %40 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %40, i8** %20, align 8
  %41 = load i8*, i8** %20, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i8*, i8** %20, align 8
  store i8* %44, i8** @spa_config_path, align 8
  br label %45

45:                                               ; preds = %43, %2
  br label %46

46:                                               ; preds = %153, %45
  %47 = load i32, i32* %4, align 4
  %48 = load i8**, i8*** %5, align 8
  %49 = call i32 @getopt(i32 %47, i8** %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 %49, i32* %6, align 4
  %50 = icmp ne i32 %49, -1
  br i1 %50, label %51, label %154

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  switch i32 %52, label %151 [
    i32 98, label %53
    i32 99, label %53
    i32 67, label %53
    i32 100, label %53
    i32 68, label %53
    i32 69, label %53
    i32 71, label %53
    i32 104, label %53
    i32 105, label %53
    i32 108, label %53
    i32 109, label %53
    i32 77, label %53
    i32 79, label %53
    i32 82, label %53
    i32 115, label %53
    i32 83, label %53
    i32 117, label %53
    i32 65, label %60
    i32 101, label %60
    i32 70, label %60
    i32 107, label %60
    i32 76, label %60
    i32 80, label %60
    i32 113, label %60
    i32 88, label %60
    i32 73, label %67
    i32 111, label %77
    i32 112, label %85
    i32 116, label %120
    i32 85, label %132
    i32 118, label %144
    i32 86, label %147
    i32 120, label %149
  ]

53:                                               ; preds = %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51, %51
  %54 = load i32*, i32** @dump_opt, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  store i32 0, i32* %10, align 4
  br label %153

60:                                               ; preds = %51, %51, %51, %51, %51, %51, %51, %51
  %61 = load i32*, i32** @dump_opt, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %153

67:                                               ; preds = %51
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i8* @strtoull(i8* %68, i32* null, i32 0)
  store i8* %69, i8** @max_inflight, align 8
  %70 = load i8*, i8** @max_inflight, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 (...) @usage()
  br label %76

76:                                               ; preds = %72, %67
  br label %153

77:                                               ; preds = %51
  %78 = load i8*, i8** @optarg, align 8
  %79 = call i32 @set_global_var(i8* %78)
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 (...) @usage()
  br label %84

84:                                               ; preds = %82, %77
  br label %153

85:                                               ; preds = %51
  %86 = load i8**, i8*** %13, align 8
  %87 = icmp eq i8** %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32, i32* @UMEM_NOFAIL, align 4
  %90 = call i8** @umem_alloc(i32 8, i32 %89)
  store i8** %90, i8*** %13, align 8
  br label %113

91:                                               ; preds = %85
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 8
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* @UMEM_NOFAIL, align 4
  %98 = call i8** @umem_alloc(i32 %96, i32 %97)
  store i8** %98, i8*** %23, align 8
  %99 = load i8**, i8*** %13, align 8
  %100 = load i8**, i8*** %23, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @bcopy(i8** %99, i8** %100, i32 %104)
  %106 = load i8**, i8*** %13, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = mul i64 %108, 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @umem_free(i8** %106, i32 %110)
  %112 = load i8**, i8*** %23, align 8
  store i8** %112, i8*** %13, align 8
  br label %113

113:                                              ; preds = %91, %88
  %114 = load i8*, i8** @optarg, align 8
  %115 = load i8**, i8*** %13, align 8
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8*, i8** %115, i64 %118
  store i8* %114, i8** %119, align 8
  br label %153

120:                                              ; preds = %51
  %121 = load i8*, i8** @optarg, align 8
  %122 = call i8* @strtoull(i8* %121, i32* null, i32 0)
  store i8* %122, i8** %17, align 8
  %123 = load i8*, i8** %17, align 8
  %124 = load i8*, i8** @TXG_INITIAL, align 8
  %125 = icmp ult i8* %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load i32, i32* @stderr, align 4
  %128 = load i8*, i8** @optarg, align 8
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %128)
  %130 = call i32 (...) @usage()
  br label %131

131:                                              ; preds = %126, %120
  br label %153

132:                                              ; preds = %51
  %133 = load i8*, i8** @optarg, align 8
  store i8* %133, i8** @spa_config_path, align 8
  %134 = load i8*, i8** @spa_config_path, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 0
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 47
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i32, i32* @stderr, align 4
  %141 = call i32 (i32, i8*, ...) @fprintf(i32 %140, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  %142 = call i32 (...) @usage()
  br label %143

143:                                              ; preds = %139, %132
  br label %153

144:                                              ; preds = %51
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %153

147:                                              ; preds = %51
  %148 = load i32, i32* @ZFS_IMPORT_VERBATIM, align 4
  store i32 %148, i32* %18, align 4
  br label %153

149:                                              ; preds = %51
  %150 = load i8*, i8** @optarg, align 8
  store i8* %150, i8** @vn_dumpdir, align 8
  br label %153

151:                                              ; preds = %51
  %152 = call i32 (...) @usage()
  br label %153

153:                                              ; preds = %151, %149, %147, %144, %143, %131, %113, %84, %76, %60, %53
  br label %46

154:                                              ; preds = %46
  %155 = load i32*, i32** @dump_opt, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 101
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %154
  %160 = load i8**, i8*** %13, align 8
  %161 = icmp ne i8** %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %159
  %163 = load i32, i32* @stderr, align 4
  %164 = call i32 (i32, i8*, ...) @fprintf(i32 %163, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %165 = call i32 (...) @usage()
  br label %166

166:                                              ; preds = %162, %159, %154
  store i32 268435456, i32* @zfs_arc_meta_limit, align 4
  store i32 268435456, i32* @zfs_arc_max, align 4
  store i32 10, i32* @zfs_vdev_async_read_max_active, align 4
  %167 = load i8*, i8** @B_FALSE, align 8
  store i8* %167, i8** @reference_tracking_enable, align 8
  %168 = load i8*, i8** @B_TRUE, align 8
  store i8* %168, i8** @spa_load_verify_dryrun, align 8
  %169 = load i32, i32* @FREAD, align 4
  %170 = call i32 @kernel_init(i32 %169)
  %171 = call i32* (...) @libzfs_init()
  store i32* %171, i32** @g_zfs, align 8
  %172 = load i32*, i32** @g_zfs, align 8
  %173 = icmp eq i32* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %166
  %175 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %166
  %177 = load i32, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32, i32* %11, align 4
  %181 = call i32 @MAX(i32 %180, i32 1)
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %179, %176
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %214, %182
  %184 = load i32, i32* %6, align 4
  %185 = icmp slt i32 %184, 256
  br i1 %185, label %186, label %217

186:                                              ; preds = %183
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %186
  %190 = load i32, i32* %6, align 4
  %191 = call i32* @strchr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %190)
  %192 = icmp eq i32* %191, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load i32*, i32** @dump_opt, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  store i32 1, i32* %197, align 4
  br label %198

198:                                              ; preds = %193, %189, %186
  %199 = load i32*, i32** @dump_opt, align 8
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %198
  %206 = load i32, i32* %11, align 4
  %207 = load i32*, i32** @dump_opt, align 8
  %208 = load i32, i32* %6, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, %206
  store i32 %212, i32* %210, align 4
  br label %213

213:                                              ; preds = %205, %198
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %6, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %6, align 4
  br label %183

217:                                              ; preds = %183
  %218 = load i32*, i32** @dump_opt, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 65
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %227, label %222

222:                                              ; preds = %217
  %223 = load i32*, i32** @dump_opt, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 65
  %225 = load i32, i32* %224, align 4
  %226 = icmp sgt i32 %225, 2
  br label %227

227:                                              ; preds = %222, %217
  %228 = phi i1 [ true, %217 ], [ %226, %222 ]
  %229 = zext i1 %228 to i32
  store i32 %229, i32* @aok, align 4
  %230 = load i32*, i32** @dump_opt, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 65
  %232 = load i32, i32* %231, align 4
  %233 = icmp sgt i32 %232, 1
  %234 = zext i1 %233 to i32
  store i32 %234, i32* @zfs_recover, align 4
  %235 = load i64, i64* @optind, align 8
  %236 = load i32, i32* %4, align 4
  %237 = sext i32 %236 to i64
  %238 = sub nsw i64 %237, %235
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %4, align 4
  %240 = load i64, i64* @optind, align 8
  %241 = load i8**, i8*** %5, align 8
  %242 = getelementptr inbounds i8*, i8** %241, i64 %240
  store i8** %242, i8*** %5, align 8
  %243 = load i32, i32* %4, align 4
  %244 = icmp slt i32 %243, 2
  br i1 %244, label %245, label %252

245:                                              ; preds = %227
  %246 = load i32*, i32** @dump_opt, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 82
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = call i32 (...) @usage()
  br label %252

252:                                              ; preds = %250, %245, %227
  %253 = load i32*, i32** @dump_opt, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 69
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %267

257:                                              ; preds = %252
  %258 = load i32, i32* %4, align 4
  %259 = icmp ne i32 %258, 1
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = call i32 (...) @usage()
  br label %262

262:                                              ; preds = %260, %257
  %263 = load i8**, i8*** %5, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 0
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @zdb_embedded_block(i8* %265)
  store i32 0, i32* %3, align 4
  br label %683

267:                                              ; preds = %252
  %268 = load i32, i32* %4, align 4
  %269 = icmp slt i32 %268, 1
  br i1 %269, label %270, label %285

270:                                              ; preds = %267
  %271 = load i32*, i32** @dump_opt, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 101
  %273 = load i32, i32* %272, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %283, label %275

275:                                              ; preds = %270
  %276 = load i32*, i32** @dump_opt, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 67
  %278 = load i32, i32* %277, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = load i8*, i8** @spa_config_path, align 8
  %282 = call i32 @dump_cachefile(i8* %281)
  store i32 0, i32* %3, align 4
  br label %683

283:                                              ; preds = %275, %270
  %284 = call i32 (...) @usage()
  br label %285

285:                                              ; preds = %283, %267
  %286 = load i32*, i32** @dump_opt, align 8
  %287 = getelementptr inbounds i32, i32* %286, i64 108
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %285
  %291 = load i8**, i8*** %5, align 8
  %292 = getelementptr inbounds i8*, i8** %291, i64 0
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 @dump_label(i8* %293)
  store i32 %294, i32* %3, align 4
  br label %683

295:                                              ; preds = %285
  %296 = load i32*, i32** @dump_opt, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 79
  %298 = load i32, i32* %297, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %317

300:                                              ; preds = %295
  %301 = load i32, i32* %4, align 4
  %302 = icmp ne i32 %301, 2
  br i1 %302, label %303, label %305

303:                                              ; preds = %300
  %304 = call i32 (...) @usage()
  br label %305

305:                                              ; preds = %303, %300
  %306 = load i32, i32* %11, align 4
  %307 = add nsw i32 %306, 3
  %308 = load i32*, i32** @dump_opt, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 118
  store i32 %307, i32* %309, align 4
  %310 = load i8**, i8*** %5, align 8
  %311 = getelementptr inbounds i8*, i8** %310, i64 0
  %312 = load i8*, i8** %311, align 8
  %313 = load i8**, i8*** %5, align 8
  %314 = getelementptr inbounds i8*, i8** %313, i64 1
  %315 = load i8*, i8** %314, align 8
  %316 = call i32 @dump_path(i8* %312, i8* %315)
  store i32 %316, i32* %3, align 4
  br label %683

317:                                              ; preds = %295
  %318 = load i32*, i32** @dump_opt, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 88
  %320 = load i32, i32* %319, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %327, label %322

322:                                              ; preds = %317
  %323 = load i32*, i32** @dump_opt, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 70
  %325 = load i32, i32* %324, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %339

327:                                              ; preds = %322, %317
  %328 = load i32, i32* @ZPOOL_DO_REWIND, align 4
  %329 = load i32*, i32** @dump_opt, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 88
  %331 = load i32, i32* %330, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %327
  %334 = load i32, i32* @ZPOOL_EXTREME_REWIND, align 4
  br label %336

335:                                              ; preds = %327
  br label %336

336:                                              ; preds = %335, %333
  %337 = phi i32 [ %334, %333 ], [ 0, %335 ]
  %338 = or i32 %328, %337
  store i32 %338, i32* %19, align 4
  br label %339

339:                                              ; preds = %336, %322
  %340 = load i32, i32* @NV_UNIQUE_NAME_TYPE, align 4
  %341 = call i64 @nvlist_alloc(i32** %16, i32 %340, i32 0)
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %355, label %343

343:                                              ; preds = %339
  %344 = load i32*, i32** %16, align 8
  %345 = load i32, i32* @ZPOOL_LOAD_REQUEST_TXG, align 4
  %346 = load i8*, i8** %17, align 8
  %347 = call i64 @nvlist_add_uint64(i32* %344, i32 %345, i8* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %355, label %349

349:                                              ; preds = %343
  %350 = load i32*, i32** %16, align 8
  %351 = load i32, i32* @ZPOOL_LOAD_REWIND_POLICY, align 4
  %352 = load i32, i32* %19, align 4
  %353 = call i64 @nvlist_add_uint32(i32* %350, i32 %351, i32 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %349, %343, %339
  %356 = load i32, i32* @ENOMEM, align 4
  %357 = call i32 @strerror(i32 %356)
  %358 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i32 %357)
  br label %359

359:                                              ; preds = %355, %349
  store i32 0, i32* %12, align 4
  %360 = load i8**, i8*** %5, align 8
  %361 = getelementptr inbounds i8*, i8** %360, i64 0
  %362 = load i8*, i8** %361, align 8
  store i8* %362, i8** %15, align 8
  %363 = load i32*, i32** @dump_opt, align 8
  %364 = getelementptr inbounds i32, i32* %363, i64 101
  %365 = load i32, i32* %364, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %400

367:                                              ; preds = %359
  %368 = load i32, i32* %14, align 4
  %369 = load i8**, i8*** %13, align 8
  %370 = call i8* @find_zpool(i8** %15, i32** %22, i32 %368, i8** %369)
  store i8* %370, i8** %24, align 8
  %371 = load i32, i32* @ENOENT, align 4
  store i32 %371, i32* %12, align 4
  %372 = load i8*, i8** %24, align 8
  %373 = icmp ne i8* %372, null
  br i1 %373, label %374, label %399

374:                                              ; preds = %367
  %375 = load i32*, i32** @dump_opt, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 67
  %377 = load i32, i32* %376, align 4
  %378 = icmp sgt i32 %377, 1
  br i1 %378, label %379, label %383

379:                                              ; preds = %374
  %380 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %381 = load i32*, i32** %22, align 8
  %382 = call i32 @dump_nvlist(i32* %381, i32 8)
  br label %383

383:                                              ; preds = %379, %374
  %384 = load i32*, i32** %22, align 8
  %385 = load i32, i32* @ZPOOL_LOAD_POLICY, align 4
  %386 = load i32*, i32** %16, align 8
  %387 = call i64 @nvlist_add_nvlist(i32* %384, i32 %385, i32* %386)
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %394

389:                                              ; preds = %383
  %390 = load i8*, i8** %15, align 8
  %391 = load i32, i32* @ENOMEM, align 4
  %392 = call i32 @strerror(i32 %391)
  %393 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %390, i32 %392)
  br label %394

394:                                              ; preds = %389, %383
  %395 = load i8*, i8** %24, align 8
  %396 = load i32*, i32** %22, align 8
  %397 = load i32, i32* %18, align 4
  %398 = call i32 @spa_import(i8* %395, i32* %396, i32* null, i32 %397)
  store i32 %398, i32* %12, align 4
  br label %399

399:                                              ; preds = %394, %367
  br label %400

400:                                              ; preds = %399, %359
  store i8* null, i8** %25, align 8
  store i8* null, i8** %26, align 8
  %401 = load i32*, i32** @dump_opt, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 107
  %403 = load i32, i32* %402, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %414

405:                                              ; preds = %400
  %406 = load i8*, i8** %15, align 8
  %407 = load i32*, i32** %22, align 8
  %408 = call i8* @import_checkpointed_state(i8* %406, i32* %407, i8** %26)
  store i8* %408, i8** %25, align 8
  %409 = load i8*, i8** %26, align 8
  %410 = icmp ne i8* %409, null
  br i1 %410, label %411, label %413

411:                                              ; preds = %405
  %412 = load i8*, i8** %26, align 8
  store i8* %412, i8** %15, align 8
  br label %413

413:                                              ; preds = %411, %405
  br label %414

414:                                              ; preds = %413, %400
  %415 = load i8*, i8** %15, align 8
  %416 = call i32* @strpbrk(i8* %415, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %417 = icmp ne i32* %416, null
  br i1 %417, label %418, label %438

418:                                              ; preds = %414
  %419 = load i8*, i8** @B_FALSE, align 8
  store i8* %419, i8** %21, align 8
  %420 = load i8*, i8** %15, align 8
  %421 = call i64 @strlen(i8* %420)
  store i64 %421, i64* %27, align 8
  %422 = load i64, i64* %27, align 8
  %423 = icmp ne i64 %422, 0
  br i1 %423, label %424, label %437

424:                                              ; preds = %418
  %425 = load i8*, i8** %15, align 8
  %426 = load i64, i64* %27, align 8
  %427 = sub i64 %426, 1
  %428 = getelementptr inbounds i8, i8* %425, i64 %427
  %429 = load i8, i8* %428, align 1
  %430 = sext i8 %429 to i32
  %431 = icmp eq i32 %430, 47
  br i1 %431, label %432, label %437

432:                                              ; preds = %424
  %433 = load i8*, i8** %15, align 8
  %434 = load i64, i64* %27, align 8
  %435 = sub i64 %434, 1
  %436 = getelementptr inbounds i8, i8* %433, i64 %435
  store i8 0, i8* %436, align 1
  br label %437

437:                                              ; preds = %432, %424, %418
  br label %438

438:                                              ; preds = %437, %414
  %439 = load i32, i32* %12, align 4
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %441, label %521

441:                                              ; preds = %438
  %442 = load i32*, i32** @dump_opt, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 107
  %444 = load i32, i32* %443, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %473

446:                                              ; preds = %441
  %447 = load i8*, i8** %21, align 8
  %448 = icmp ne i8* %447, null
  br i1 %448, label %454, label %449

449:                                              ; preds = %446
  %450 = load i32*, i32** @dump_opt, align 8
  %451 = getelementptr inbounds i32, i32* %450, i64 82
  %452 = load i32, i32* %451, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %473

454:                                              ; preds = %449, %446
  %455 = load i8*, i8** %25, align 8
  %456 = icmp ne i8* %455, null
  %457 = zext i1 %456 to i32
  %458 = call i32 @ASSERT(i32 %457)
  %459 = load i8*, i8** %26, align 8
  %460 = icmp eq i8* %459, null
  %461 = zext i1 %460 to i32
  %462 = call i32 @ASSERT(i32 %461)
  %463 = load i8*, i8** %25, align 8
  %464 = load i32, i32* @FTAG, align 4
  %465 = call i32 @spa_open(i8* %463, %struct.TYPE_8__** %8, i32 %464)
  store i32 %465, i32* %12, align 4
  %466 = load i32, i32* %12, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %472

468:                                              ; preds = %454
  %469 = load i8*, i8** %25, align 8
  %470 = load i32, i32* %12, align 4
  %471 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0), i8* %469, i32 %470)
  br label %472

472:                                              ; preds = %468, %454
  br label %520

473:                                              ; preds = %449, %441
  %474 = load i8*, i8** %21, align 8
  %475 = icmp ne i8* %474, null
  br i1 %475, label %481, label %476

476:                                              ; preds = %473
  %477 = load i32*, i32** @dump_opt, align 8
  %478 = getelementptr inbounds i32, i32* %477, i64 82
  %479 = load i32, i32* %478, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %514

481:                                              ; preds = %476, %473
  %482 = load i8*, i8** %15, align 8
  %483 = load i32, i32* @FTAG, align 4
  %484 = load i32*, i32** %16, align 8
  %485 = call i32 @spa_open_rewind(i8* %482, %struct.TYPE_8__** %8, i32 %483, i32* %484, i32* null)
  store i32 %485, i32* %12, align 4
  %486 = load i32, i32* %12, align 4
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %513

488:                                              ; preds = %481
  %489 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %490 = load i8*, i8** %15, align 8
  %491 = call %struct.TYPE_8__* @spa_lookup(i8* %490)
  store %struct.TYPE_8__* %491, %struct.TYPE_8__** %8, align 8
  %492 = icmp ne %struct.TYPE_8__* %491, null
  br i1 %492, label %493, label %503

493:                                              ; preds = %488
  %494 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %495 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %494, i32 0, i32 0
  %496 = load i64, i64* %495, align 8
  %497 = load i64, i64* @SPA_LOG_MISSING, align 8
  %498 = icmp eq i64 %496, %497
  br i1 %498, label %499, label %503

499:                                              ; preds = %493
  %500 = load i64, i64* @SPA_LOG_CLEAR, align 8
  %501 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %502 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %501, i32 0, i32 0
  store i64 %500, i64* %502, align 8
  store i32 0, i32* %12, align 4
  br label %503

503:                                              ; preds = %499, %493, %488
  %504 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %505 = load i32, i32* %12, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %512, label %507

507:                                              ; preds = %503
  %508 = load i8*, i8** %15, align 8
  %509 = load i32, i32* @FTAG, align 4
  %510 = load i32*, i32** %16, align 8
  %511 = call i32 @spa_open_rewind(i8* %508, %struct.TYPE_8__** %8, i32 %509, i32* %510, i32* null)
  store i32 %511, i32* %12, align 4
  br label %512

512:                                              ; preds = %507, %503
  br label %513

513:                                              ; preds = %512, %481
  br label %519

514:                                              ; preds = %476
  %515 = load i8*, i8** %15, align 8
  %516 = load i32, i32* @DMU_OST_ANY, align 4
  %517 = load i32, i32* @FTAG, align 4
  %518 = call i32 @open_objset(i8* %515, i32 %516, i32 %517, i32** %9)
  store i32 %518, i32* %12, align 4
  br label %519

519:                                              ; preds = %514, %513
  br label %520

520:                                              ; preds = %519, %472
  br label %521

521:                                              ; preds = %520, %438
  %522 = load i32*, i32** %16, align 8
  %523 = call i32 @nvlist_free(i32* %522)
  %524 = load i32, i32* %12, align 4
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %531

526:                                              ; preds = %521
  %527 = load i8*, i8** %15, align 8
  %528 = load i32, i32* %12, align 4
  %529 = call i32 @strerror(i32 %528)
  %530 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %527, i32 %529)
  br label %531

531:                                              ; preds = %526, %521
  %532 = load i8**, i8*** %5, align 8
  %533 = getelementptr inbounds i8*, i8** %532, i32 1
  store i8** %533, i8*** %5, align 8
  %534 = load i32, i32* %4, align 4
  %535 = add nsw i32 %534, -1
  store i32 %535, i32* %4, align 4
  %536 = load i32*, i32** @dump_opt, align 8
  %537 = getelementptr inbounds i32, i32* %536, i64 82
  %538 = load i32, i32* %537, align 4
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %610, label %540

540:                                              ; preds = %531
  %541 = load i32, i32* %4, align 4
  %542 = icmp sgt i32 %541, 0
  br i1 %542, label %543, label %586

543:                                              ; preds = %540
  %544 = load i32, i32* %4, align 4
  store i32 %544, i32* @zopt_objects, align 4
  %545 = load i32, i32* @zopt_objects, align 4
  %546 = call i64* @calloc(i32 %545, i32 8)
  store i64* %546, i64** @zopt_object, align 8
  store i32 0, i32* %28, align 4
  br label %547

547:                                              ; preds = %582, %543
  %548 = load i32, i32* %28, align 4
  %549 = load i32, i32* @zopt_objects, align 4
  %550 = icmp ult i32 %548, %549
  br i1 %550, label %551, label %585

551:                                              ; preds = %547
  store i32 0, i32* @errno, align 4
  %552 = load i8**, i8*** %5, align 8
  %553 = load i32, i32* %28, align 4
  %554 = zext i32 %553 to i64
  %555 = getelementptr inbounds i8*, i8** %552, i64 %554
  %556 = load i8*, i8** %555, align 8
  %557 = call i8* @strtoull(i8* %556, i32* null, i32 0)
  %558 = ptrtoint i8* %557 to i64
  %559 = load i64*, i64** @zopt_object, align 8
  %560 = load i32, i32* %28, align 4
  %561 = zext i32 %560 to i64
  %562 = getelementptr inbounds i64, i64* %559, i64 %561
  store i64 %558, i64* %562, align 8
  %563 = load i64*, i64** @zopt_object, align 8
  %564 = load i32, i32* %28, align 4
  %565 = zext i32 %564 to i64
  %566 = getelementptr inbounds i64, i64* %563, i64 %565
  %567 = load i64, i64* %566, align 8
  %568 = icmp eq i64 %567, 0
  br i1 %568, label %569, label %581

569:                                              ; preds = %551
  %570 = load i32, i32* @errno, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %581

572:                                              ; preds = %569
  %573 = load i8**, i8*** %5, align 8
  %574 = load i32, i32* %28, align 4
  %575 = zext i32 %574 to i64
  %576 = getelementptr inbounds i8*, i8** %573, i64 %575
  %577 = load i8*, i8** %576, align 8
  %578 = load i32, i32* @errno, align 4
  %579 = call i32 @strerror(i32 %578)
  %580 = call i32 (i8*, ...) @fatal(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i8* %577, i32 %579)
  br label %581

581:                                              ; preds = %572, %569, %551
  br label %582

582:                                              ; preds = %581
  %583 = load i32, i32* %28, align 4
  %584 = add i32 %583, 1
  store i32 %584, i32* %28, align 4
  br label %547

585:                                              ; preds = %547
  br label %586

586:                                              ; preds = %585, %540
  %587 = load i32*, i32** %9, align 8
  %588 = icmp ne i32* %587, null
  br i1 %588, label %589, label %592

589:                                              ; preds = %586
  %590 = load i32*, i32** %9, align 8
  %591 = call i32 @dump_dir(i32* %590)
  br label %609

592:                                              ; preds = %586
  %593 = load i32, i32* @zopt_objects, align 4
  %594 = icmp ugt i32 %593, 0
  br i1 %594, label %595, label %605

595:                                              ; preds = %592
  %596 = load i32*, i32** @dump_opt, align 8
  %597 = getelementptr inbounds i32, i32* %596, i64 109
  %598 = load i32, i32* %597, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %605, label %600

600:                                              ; preds = %595
  %601 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %602 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %601, i32 0, i32 1
  %603 = load i32*, i32** %602, align 8
  %604 = call i32 @dump_dir(i32* %603)
  br label %608

605:                                              ; preds = %595, %592
  %606 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %607 = call i32 @dump_zpool(%struct.TYPE_8__* %606)
  br label %608

608:                                              ; preds = %605, %600
  br label %609

609:                                              ; preds = %608, %589
  br label %651

610:                                              ; preds = %531
  %611 = load i32, i32* @ZDB_FLAG_PRINT_BLKPTR, align 4
  %612 = load i32*, i32** @flagbits, align 8
  %613 = getelementptr inbounds i32, i32* %612, i64 98
  store i32 %611, i32* %613, align 4
  %614 = load i32, i32* @ZDB_FLAG_CHECKSUM, align 4
  %615 = load i32*, i32** @flagbits, align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 99
  store i32 %614, i32* %616, align 4
  %617 = load i32, i32* @ZDB_FLAG_DECOMPRESS, align 4
  %618 = load i32*, i32** @flagbits, align 8
  %619 = getelementptr inbounds i32, i32* %618, i64 100
  store i32 %617, i32* %619, align 4
  %620 = load i32, i32* @ZDB_FLAG_BSWAP, align 4
  %621 = load i32*, i32** @flagbits, align 8
  %622 = getelementptr inbounds i32, i32* %621, i64 101
  store i32 %620, i32* %622, align 4
  %623 = load i32, i32* @ZDB_FLAG_GBH, align 4
  %624 = load i32*, i32** @flagbits, align 8
  %625 = getelementptr inbounds i32, i32* %624, i64 103
  store i32 %623, i32* %625, align 4
  %626 = load i32, i32* @ZDB_FLAG_INDIRECT, align 4
  %627 = load i32*, i32** @flagbits, align 8
  %628 = getelementptr inbounds i32, i32* %627, i64 105
  store i32 %626, i32* %628, align 4
  %629 = load i32, i32* @ZDB_FLAG_PHYS, align 4
  %630 = load i32*, i32** @flagbits, align 8
  %631 = getelementptr inbounds i32, i32* %630, i64 112
  store i32 %629, i32* %631, align 4
  %632 = load i32, i32* @ZDB_FLAG_RAW, align 4
  %633 = load i32*, i32** @flagbits, align 8
  %634 = getelementptr inbounds i32, i32* %633, i64 114
  store i32 %632, i32* %634, align 4
  store i32 0, i32* %29, align 4
  br label %635

635:                                              ; preds = %647, %610
  %636 = load i32, i32* %29, align 4
  %637 = load i32, i32* %4, align 4
  %638 = icmp slt i32 %636, %637
  br i1 %638, label %639, label %650

639:                                              ; preds = %635
  %640 = load i8**, i8*** %5, align 8
  %641 = load i32, i32* %29, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i8*, i8** %640, i64 %642
  %644 = load i8*, i8** %643, align 8
  %645 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %646 = call i32 @zdb_read_block(i8* %644, %struct.TYPE_8__* %645)
  br label %647

647:                                              ; preds = %639
  %648 = load i32, i32* %29, align 4
  %649 = add nsw i32 %648, 1
  store i32 %649, i32* %29, align 4
  br label %635

650:                                              ; preds = %635
  br label %651

651:                                              ; preds = %650, %609
  %652 = load i32*, i32** @dump_opt, align 8
  %653 = getelementptr inbounds i32, i32* %652, i64 107
  %654 = load i32, i32* %653, align 4
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %665

656:                                              ; preds = %651
  %657 = load i8*, i8** %25, align 8
  %658 = call i32 @free(i8* %657)
  %659 = load i8*, i8** %21, align 8
  %660 = icmp ne i8* %659, null
  br i1 %660, label %664, label %661

661:                                              ; preds = %656
  %662 = load i8*, i8** %26, align 8
  %663 = call i32 @free(i8* %662)
  br label %664

664:                                              ; preds = %661, %656
  br label %665

665:                                              ; preds = %664, %651
  %666 = load i32*, i32** %9, align 8
  %667 = icmp ne i32* %666, null
  br i1 %667, label %668, label %672

668:                                              ; preds = %665
  %669 = load i32*, i32** %9, align 8
  %670 = load i32, i32* @FTAG, align 4
  %671 = call i32 @close_objset(i32* %669, i32 %670)
  br label %676

672:                                              ; preds = %665
  %673 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %674 = load i32, i32* @FTAG, align 4
  %675 = call i32 @spa_close(%struct.TYPE_8__* %673, i32 %674)
  br label %676

676:                                              ; preds = %672, %668
  %677 = call i32 (...) @fuid_table_destroy()
  %678 = call i32 (...) @dump_debug_buffer()
  %679 = load i32*, i32** @g_zfs, align 8
  %680 = call i32 @libzfs_fini(i32* %679)
  %681 = call i32 (...) @kernel_fini()
  %682 = load i32, i32* %12, align 4
  store i32 %682, i32* %3, align 4
  br label %683

683:                                              ; preds = %676, %305, %290, %280, %262
  %684 = load i32, i32* %3, align 4
  ret i32 %684
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @setrlimit(i32, %struct.rlimit*) #2

declare dso_local i32 @enable_extended_FILE_stdio(i32, i32) #2

declare dso_local i32 @dprintf_setup(i32*, i8**) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i8* @strtoull(i8*, i32*, i32) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @set_global_var(i8*) #2

declare dso_local i8** @umem_alloc(i32, i32) #2

declare dso_local i32 @bcopy(i8**, i8**, i32) #2

declare dso_local i32 @umem_free(i8**, i32) #2

declare dso_local i32 @kernel_init(i32) #2

declare dso_local i32* @libzfs_init(...) #2

declare dso_local i32 @fatal(i8*, ...) #2

declare dso_local i32 @MAX(i32, i32) #2

declare dso_local i32* @strchr(i8*, i32) #2

declare dso_local i32 @zdb_embedded_block(i8*) #2

declare dso_local i32 @dump_cachefile(i8*) #2

declare dso_local i32 @dump_label(i8*) #2

declare dso_local i32 @dump_path(i8*, i8*) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i8*) #2

declare dso_local i64 @nvlist_add_uint32(i32*, i32, i32) #2

declare dso_local i32 @strerror(i32) #2

declare dso_local i8* @find_zpool(i8**, i32**, i32, i8**) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @dump_nvlist(i32*, i32) #2

declare dso_local i64 @nvlist_add_nvlist(i32*, i32, i32*) #2

declare dso_local i32 @spa_import(i8*, i32*, i32*, i32) #2

declare dso_local i8* @import_checkpointed_state(i8*, i32*, i8**) #2

declare dso_local i32* @strpbrk(i8*, i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @spa_open(i8*, %struct.TYPE_8__**, i32) #2

declare dso_local i32 @spa_open_rewind(i8*, %struct.TYPE_8__**, i32, i32*, i32*) #2

declare dso_local i32 @mutex_enter(i32*) #2

declare dso_local %struct.TYPE_8__* @spa_lookup(i8*) #2

declare dso_local i32 @mutex_exit(i32*) #2

declare dso_local i32 @open_objset(i8*, i32, i32, i32**) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i64* @calloc(i32, i32) #2

declare dso_local i32 @dump_dir(i32*) #2

declare dso_local i32 @dump_zpool(%struct.TYPE_8__*) #2

declare dso_local i32 @zdb_read_block(i8*, %struct.TYPE_8__*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @close_objset(i32*, i32) #2

declare dso_local i32 @spa_close(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @fuid_table_destroy(...) #2

declare dso_local i32 @dump_debug_buffer(...) #2

declare dso_local i32 @libzfs_fini(i32*) #2

declare dso_local i32 @kernel_fini(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

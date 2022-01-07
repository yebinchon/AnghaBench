; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_zfs_do_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i8*, i8*, i8*, i8*, i64, i8*, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i32 }

@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"vpndfrR\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"invalid option '%c'\0A\00", align 1
@optopt = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@optind = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"missing dataset argument\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@g_zfs = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"could not find any snapshots to destroy; check snapshot names.\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"reclaim\09%llu\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"would reclaim %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"will reclaim %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"dryrun is not supported with bookmark\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"defer destroy is not supported with bookmark\0A\00", align 1
@.str.10 = private unnamed_addr constant [42 x i8] c"recursive is not supported with bookmark\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"bookmark '%s' does not exist.\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"cannot destroy bookmark\00", align 1
@.str.13 = private unnamed_addr constant [56 x i8] c"cannot destroy '%s': operation does not apply to pools\0A\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"use 'zfs destroy -r %s' to destroy all datasets in the pool\0A\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"use 'zpool destroy %s' to destroy the pool itself\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @zfs_do_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_do_destroy(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca [16 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = bitcast %struct.TYPE_8__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 120, i1 false)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32* null, i32** %10, align 8
  %18 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  store i32 %18, i32* %13, align 4
  br label %19

19:                                               ; preds = %60, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @getopt(i32 %20, i8** %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %9, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %61

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  switch i32 %25, label %53 [
    i32 118, label %26
    i32 112, label %29
    i32 110, label %34
    i32 100, label %37
    i32 102, label %41
    i32 114, label %44
    i32 82, label %47
    i32 63, label %52
  ]

26:                                               ; preds = %24
  %27 = load i8*, i8** @B_TRUE, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 12
  store i8* %27, i8** %28, align 8
  br label %60

29:                                               ; preds = %24
  %30 = load i8*, i8** @B_TRUE, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 12
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** @B_TRUE, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 11
  store i8* %32, i8** %33, align 8
  br label %60

34:                                               ; preds = %24
  %35 = load i8*, i8** @B_TRUE, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 10
  store i8* %35, i8** %36, align 8
  br label %60

37:                                               ; preds = %24
  %38 = load i8*, i8** @B_TRUE, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  store i32 %40, i32* %13, align 4
  br label %60

41:                                               ; preds = %24
  %42 = load i8*, i8** @B_TRUE, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 13
  store i8* %42, i8** %43, align 8
  br label %60

44:                                               ; preds = %24
  %45 = load i8*, i8** @B_TRUE, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 8
  store i8* %45, i8** %46, align 8
  br label %60

47:                                               ; preds = %24
  %48 = load i8*, i8** @B_TRUE, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 8
  store i8* %48, i8** %49, align 8
  %50 = load i8*, i8** @B_TRUE, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  store i8* %50, i8** %51, align 8
  br label %60

52:                                               ; preds = %24
  br label %53

53:                                               ; preds = %24, %52
  %54 = load i32, i32* @stderr, align 4
  %55 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @optopt, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* %55, i32 %56)
  %58 = load i8*, i8** @B_FALSE, align 8
  %59 = call i32 @usage(i8* %58)
  br label %60

60:                                               ; preds = %53, %47, %44, %41, %37, %34, %29, %26
  br label %19

61:                                               ; preds = %19
  %62 = load i64, i64* @optind, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %4, align 4
  %67 = load i64, i64* @optind, align 8
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 %67
  store i8** %69, i8*** %5, align 8
  %70 = load i32, i32* %4, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %61
  %73 = load i32, i32* @stderr, align 4
  %74 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %75 = call i32 (i32, i8*, ...) @fprintf(i32 %73, i8* %74)
  %76 = load i8*, i8** @B_FALSE, align 8
  %77 = call i32 @usage(i8* %76)
  br label %78

78:                                               ; preds = %72, %61
  %79 = load i32, i32* %4, align 4
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* @stderr, align 4
  %83 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %84 = call i32 (i32, i8*, ...) @fprintf(i32 %82, i8* %83)
  %85 = load i8*, i8** @B_FALSE, align 8
  %86 = call i32 @usage(i8* %85)
  br label %87

87:                                               ; preds = %81, %78
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i8* @strchr(i8* %90, i8 signext 64)
  store i8* %91, i8** %11, align 8
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i8* @strchr(i8* %94, i8 signext 35)
  store i8* %95, i8** %12, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %206

98:                                               ; preds = %87
  %99 = call i8* (...) @fnvlist_alloc()
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  store i8* %99, i8** %100, align 8
  %101 = load i8*, i8** %11, align 8
  store i8 0, i8* %101, align 1
  %102 = load i32, i32* @g_zfs, align 4
  %103 = load i8**, i8*** %5, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %107 = load i32, i32* @ZFS_TYPE_VOLUME, align 4
  %108 = or i32 %106, %107
  %109 = call i32* @zfs_open(i32 %102, i8* %105, i32 %108)
  store i32* %109, i32** %10, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  store i32 1, i32* %3, align 4
  br label %363

113:                                              ; preds = %98
  %114 = load i8*, i8** %11, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i8* %115, i8** %116, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = call i32 @zfs_handle_dup(i32* %117)
  %119 = call i64 @gather_snapshots(i32 %118, %struct.TYPE_8__* %6)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121, %113
  store i32 1, i32* %7, align 4
  br label %349

126:                                              ; preds = %121
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %128 = load i8*, i8** %127, align 8
  %129 = call i64 @nvlist_empty(i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @stderr, align 4
  %133 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i64 0, i64 0))
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %132, i8* %133)
  store i32 1, i32* %7, align 4
  br label %349

135:                                              ; preds = %126
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 12
  %137 = load i8*, i8** %136, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %165

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %143 = call i32 @zfs_nicenum(i8* %141, i8* %142, i32 16)
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 11
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %149)
  br label %164

151:                                              ; preds = %139
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 10
  %153 = load i8*, i8** %152, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %157 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %158 = call i32 @printf(i8* %156, i8* %157)
  br label %163

159:                                              ; preds = %151
  %160 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %161 = getelementptr inbounds [16 x i8], [16 x i8]* %14, i64 0, i64 0
  %162 = call i32 @printf(i8* %160, i8* %161)
  br label %163

163:                                              ; preds = %159, %155
  br label %164

164:                                              ; preds = %163, %147
  br label %165

165:                                              ; preds = %164, %135
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 10
  %167 = load i8*, i8** %166, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %201, label %169

169:                                              ; preds = %165
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  %171 = load i8*, i8** %170, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %190

173:                                              ; preds = %169
  %174 = call i8* (...) @fnvlist_alloc()
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  store i8* %174, i8** %175, align 8
  %176 = call i32 @destroy_clones(%struct.TYPE_8__* %6)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = load i32, i32* @g_zfs, align 4
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %182 = load i8*, i8** %181, align 8
  %183 = load i8*, i8** @B_FALSE, align 8
  %184 = call i32 @zfs_destroy_snaps_nvl(i32 %180, i8* %182, i8* %183)
  store i32 %184, i32* %8, align 4
  br label %185

185:                                              ; preds = %179, %173
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 1, i32* %7, align 4
  br label %349

189:                                              ; preds = %185
  br label %190

190:                                              ; preds = %189, %169
  %191 = load i32, i32* %8, align 4
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %200

193:                                              ; preds = %190
  %194 = load i32, i32* @g_zfs, align 4
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @zfs_destroy_snaps_nvl(i32 %194, i8* %196, i8* %198)
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %193, %190
  br label %201

201:                                              ; preds = %200, %165
  %202 = load i32, i32* %8, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %201
  store i32 1, i32* %7, align 4
  br label %205

205:                                              ; preds = %204, %201
  br label %348

206:                                              ; preds = %87
  %207 = load i8*, i8** %12, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %209, label %264

209:                                              ; preds = %206
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 10
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = load i32, i32* @stderr, align 4
  %215 = call i32 (i32, i8*, ...) @fprintf(i32 %214, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %363

216:                                              ; preds = %209
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load i32, i32* @stderr, align 4
  %222 = call i32 (i32, i8*, ...) @fprintf(i32 %221, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %363

223:                                              ; preds = %216
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 8
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %223
  %228 = load i32, i32* @stderr, align 4
  %229 = call i32 (i32, i8*, ...) @fprintf(i32 %228, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %363

230:                                              ; preds = %223
  %231 = load i8**, i8*** %5, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 0
  %233 = load i8*, i8** %232, align 8
  %234 = call i32 @zfs_bookmark_exists(i8* %233)
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %243, label %236

236:                                              ; preds = %230
  %237 = load i32, i32* @stderr, align 4
  %238 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %239 = load i8**, i8*** %5, align 8
  %240 = getelementptr inbounds i8*, i8** %239, i64 0
  %241 = load i8*, i8** %240, align 8
  %242 = call i32 (i32, i8*, ...) @fprintf(i32 %237, i8* %238, i8* %241)
  store i32 1, i32* %3, align 4
  br label %363

243:                                              ; preds = %230
  %244 = call i8* (...) @fnvlist_alloc()
  %245 = bitcast i8* %244 to i32*
  store i32* %245, i32** %16, align 8
  %246 = load i32*, i32** %16, align 8
  %247 = load i8**, i8*** %5, align 8
  %248 = getelementptr inbounds i8*, i8** %247, i64 0
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @fnvlist_add_boolean(i32* %246, i8* %249)
  %251 = load i32*, i32** %16, align 8
  %252 = call i32 @lzc_destroy_bookmarks(i32* %251, i32* null)
  store i32 %252, i32* %15, align 4
  %253 = load i32, i32* %15, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %243
  %256 = load i32, i32* @g_zfs, align 4
  %257 = load i32, i32* %15, align 4
  %258 = call i32 @zfs_standard_error(i32 %256, i32 %257, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  br label %259

259:                                              ; preds = %255, %243
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @nvlist_free(i8* %261)
  %263 = load i32, i32* %15, align 4
  store i32 %263, i32* %3, align 4
  br label %363

264:                                              ; preds = %206
  %265 = load i32, i32* @g_zfs, align 4
  %266 = load i8**, i8*** %5, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 0
  %268 = load i8*, i8** %267, align 8
  %269 = load i32, i32* %13, align 4
  %270 = call i32* @zfs_open(i32 %265, i8* %268, i32 %269)
  store i32* %270, i32** %10, align 8
  %271 = icmp eq i32* %270, null
  br i1 %271, label %272, label %273

272:                                              ; preds = %264
  store i32 1, i32* %3, align 4
  br label %363

273:                                              ; preds = %264
  %274 = load i32*, i32** %10, align 8
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 9
  store i32* %274, i32** %275, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 8
  %277 = load i8*, i8** %276, align 8
  %278 = icmp ne i8* %277, null
  br i1 %278, label %305, label %279

279:                                              ; preds = %273
  %280 = load i32*, i32** %10, align 8
  %281 = call i8* @zfs_get_name(i32* %280)
  %282 = call i8* @strchr(i8* %281, i8 signext 47)
  %283 = icmp eq i8* %282, null
  br i1 %283, label %284, label %305

284:                                              ; preds = %279
  %285 = load i32*, i32** %10, align 8
  %286 = call i32 @zfs_get_type(i32* %285)
  %287 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %288 = icmp eq i32 %286, %287
  br i1 %288, label %289, label %305

289:                                              ; preds = %284
  %290 = load i32, i32* @stderr, align 4
  %291 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0))
  %292 = load i32*, i32** %10, align 8
  %293 = call i8* @zfs_get_name(i32* %292)
  %294 = call i32 (i32, i8*, ...) @fprintf(i32 %290, i8* %291, i8* %293)
  %295 = load i32, i32* @stderr, align 4
  %296 = call i8* @gettext(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0))
  %297 = load i32*, i32** %10, align 8
  %298 = call i8* @zfs_get_name(i32* %297)
  %299 = call i32 (i32, i8*, ...) @fprintf(i32 %295, i8* %296, i8* %298)
  %300 = load i32, i32* @stderr, align 4
  %301 = call i8* @gettext(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.15, i64 0, i64 0))
  %302 = load i32*, i32** %10, align 8
  %303 = call i8* @zfs_get_name(i32* %302)
  %304 = call i32 (i32, i8*, ...) @fprintf(i32 %300, i8* %301, i8* %303)
  store i32 1, i32* %7, align 4
  br label %349

305:                                              ; preds = %284, %279, %273
  %306 = load i8*, i8** @B_TRUE, align 8
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  store i8* %306, i8** %307, align 8
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  %309 = load i8*, i8** %308, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %317, label %311

311:                                              ; preds = %305
  %312 = load i32*, i32** %10, align 8
  %313 = load i8*, i8** @B_TRUE, align 8
  %314 = call i64 @zfs_iter_dependents(i32* %312, i8* %313, i32 (i32*, %struct.TYPE_8__*)* @destroy_check_dependent, %struct.TYPE_8__* %6)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %311
  store i32 1, i32* %7, align 4
  br label %349

317:                                              ; preds = %311, %305
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %317
  store i32 1, i32* %7, align 4
  br label %349

322:                                              ; preds = %317
  %323 = call i8* (...) @fnvlist_alloc()
  %324 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  store i8* %323, i8** %324, align 8
  %325 = load i32*, i32** %10, align 8
  %326 = load i8*, i8** @B_FALSE, align 8
  %327 = call i64 @zfs_iter_dependents(i32* %325, i8* %326, i32 (i32*, %struct.TYPE_8__*)* @destroy_callback, %struct.TYPE_8__* %6)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %322
  store i32 1, i32* %7, align 4
  br label %349

330:                                              ; preds = %322
  %331 = load i32*, i32** %10, align 8
  %332 = call i32 @destroy_callback(i32* %331, %struct.TYPE_8__* %6)
  store i32 %332, i32* %8, align 4
  store i32* null, i32** %10, align 8
  %333 = load i32, i32* %8, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %342

335:                                              ; preds = %330
  %336 = load i32, i32* @g_zfs, align 4
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %338 = load i8*, i8** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %340 = load i8*, i8** %339, align 8
  %341 = call i32 @zfs_destroy_snaps_nvl(i32 %336, i8* %338, i8* %340)
  store i32 %341, i32* %8, align 4
  br label %342

342:                                              ; preds = %335, %330
  %343 = load i32, i32* %8, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %342
  store i32 1, i32* %7, align 4
  br label %346

346:                                              ; preds = %345, %342
  br label %347

347:                                              ; preds = %346
  br label %348

348:                                              ; preds = %347, %205
  br label %349

349:                                              ; preds = %348, %329, %321, %316, %289, %188, %131, %125
  %350 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %351 = load i8*, i8** %350, align 8
  %352 = call i32 @fnvlist_free(i8* %351)
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %354 = load i8*, i8** %353, align 8
  %355 = call i32 @fnvlist_free(i8* %354)
  %356 = load i32*, i32** %10, align 8
  %357 = icmp ne i32* %356, null
  br i1 %357, label %358, label %361

358:                                              ; preds = %349
  %359 = load i32*, i32** %10, align 8
  %360 = call i32 @zfs_close(i32* %359)
  br label %361

361:                                              ; preds = %358, %349
  %362 = load i32, i32* %7, align 4
  store i32 %362, i32* %3, align 4
  br label %363

363:                                              ; preds = %361, %272, %259, %236, %227, %220, %213, %112
  %364 = load i32, i32* %3, align 4
  ret i32 %364
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i8* @fnvlist_alloc(...) #2

declare dso_local i32* @zfs_open(i32, i8*, i32) #2

declare dso_local i64 @gather_snapshots(i32, %struct.TYPE_8__*) #2

declare dso_local i32 @zfs_handle_dup(i32*) #2

declare dso_local i64 @nvlist_empty(i8*) #2

declare dso_local i32 @zfs_nicenum(i8*, i8*, i32) #2

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @destroy_clones(%struct.TYPE_8__*) #2

declare dso_local i32 @zfs_destroy_snaps_nvl(i32, i8*, i8*) #2

declare dso_local i32 @zfs_bookmark_exists(i8*) #2

declare dso_local i32 @fnvlist_add_boolean(i32*, i8*) #2

declare dso_local i32 @lzc_destroy_bookmarks(i32*, i32*) #2

declare dso_local i32 @zfs_standard_error(i32, i32, i8*) #2

declare dso_local i32 @nvlist_free(i8*) #2

declare dso_local i8* @zfs_get_name(i32*) #2

declare dso_local i32 @zfs_get_type(i32*) #2

declare dso_local i64 @zfs_iter_dependents(i32*, i8*, i32 (i32*, %struct.TYPE_8__*)*, %struct.TYPE_8__*) #2

declare dso_local i32 @destroy_check_dependent(i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @destroy_callback(i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @fnvlist_free(i8*) #2

declare dso_local i32 @zfs_close(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

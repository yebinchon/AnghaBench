; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_get_history_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zpool/extr_zpool_main.c_get_history_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.tm = type { i32 }
%struct.passwd = type { i8* }

@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"History for '%s':\0A\00", align 1
@ZPOOL_HIST_RECORD = common dso_local global i32 0, align 4
@ZPOOL_HIST_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%F.%T\00", align 1
@ZPOOL_HIST_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@ZPOOL_HIST_INT_EVENT = common dso_local global i32 0, align 4
@ZFS_NUM_LEGACY_HISTORY_EVENTS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"%s unrecognized record:\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"%s [internal %s txg:%lld] %s\00", align 1
@zfs_history_event_names = common dso_local global i8** null, align 8
@ZPOOL_HIST_TXG = common dso_local global i32 0, align 4
@ZPOOL_HIST_INT_STR = common dso_local global i32 0, align 4
@ZPOOL_HIST_INT_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"%s [txg:%lld] %s\00", align 1
@ZPOOL_HIST_DSNAME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c" %s (%llu)\00", align 1
@ZPOOL_HIST_DSID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@ZPOOL_HIST_IOCTL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"%s ioctl %s\0A\00", align 1
@ZPOOL_HIST_INPUT_NVL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"    input:\0A\00", align 1
@ZPOOL_HIST_OUTPUT_NVL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"    output:\0A\00", align 1
@ZPOOL_HIST_ERRNO = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [17 x i8] c"    errno: %lld\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c" [\00", align 1
@ZPOOL_HIST_WHO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [9 x i8] c"user %d \00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"(%s) \00", align 1
@ZPOOL_HIST_HOST = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"on %s\00", align 1
@ZPOOL_HIST_ZONE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [4 x i8] c":%s\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @get_history_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_history_one(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca [30 x i8], align 16
  %14 = alloca i8*, align 8
  %15 = alloca %struct.tm, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.passwd*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %11, align 8
  %21 = load i32, i32* @B_FALSE, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %25 = load i32*, i32** %4, align 8
  %26 = call i8* @zpool_get_name(i32* %25)
  %27 = call i32 (i8*, ...) @printf(i8* %24, i8* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @zpool_get_history(i32* %28, i32** %6)
  store i32 %29, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %276

33:                                               ; preds = %2
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* @ZPOOL_HIST_RECORD, align 4
  %36 = call i64 @nvlist_lookup_nvlist_array(i32* %34, i32 %35, i32*** %7, i32* %8)
  %37 = icmp eq i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @verify(i32 %38)
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %268, %33
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %271

44:                                               ; preds = %40
  %45 = load i32**, i32*** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %12, align 8
  %50 = bitcast [30 x i8]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %50, i8 0, i64 30, i1 false)
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* @ZPOOL_HIST_TIME, align 4
  %53 = call i64 @nvlist_exists(i32* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %44
  %56 = load i32**, i32*** %7, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %56, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @ZPOOL_HIST_TIME, align 4
  %62 = call i8* @fnvlist_lookup_uint64(i32* %60, i32 %61)
  store i8* %62, i8** %14, align 8
  %63 = call i32 @localtime_r(i8** %14, %struct.tm* %15)
  %64 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %65 = call i32 @strftime(i8* %64, i32 30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.tm* %15)
  br label %66

66:                                               ; preds = %55, %44
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* @ZPOOL_HIST_CMD, align 4
  %69 = call i64 @nvlist_exists(i32* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* @ZPOOL_HIST_CMD, align 4
  %75 = call i8* @fnvlist_lookup_string(i32* %73, i32 %74)
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %72, i8* %75)
  br label %215

77:                                               ; preds = %66
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* @ZPOOL_HIST_INT_EVENT, align 4
  %80 = call i64 @nvlist_exists(i32* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %115

82:                                               ; preds = %77
  %83 = load i32*, i32** %12, align 8
  %84 = load i32, i32* @ZPOOL_HIST_INT_EVENT, align 4
  %85 = call i8* @fnvlist_lookup_uint64(i32* %83, i32 %84)
  %86 = ptrtoint i8* %85 to i32
  store i32 %86, i32* %16, align 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %82
  br label %268

92:                                               ; preds = %82
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* @ZFS_NUM_LEGACY_HISTORY_EVENTS, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %97)
  %99 = load i32*, i32** %12, align 8
  %100 = call i32 @dump_nvlist(i32* %99, i32 4)
  br label %268

101:                                              ; preds = %92
  %102 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %103 = load i8**, i8*** @zfs_history_event_names, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8*, i8** %103, i64 %105
  %107 = load i8*, i8** %106, align 8
  %108 = load i32*, i32** %12, align 8
  %109 = load i32, i32* @ZPOOL_HIST_TXG, align 4
  %110 = call i8* @fnvlist_lookup_uint64(i32* %108, i32 %109)
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* @ZPOOL_HIST_INT_STR, align 4
  %113 = call i8* @fnvlist_lookup_string(i32* %111, i32 %112)
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %102, i8* %107, i8* %110, i8* %113)
  br label %214

115:                                              ; preds = %77
  %116 = load i32*, i32** %12, align 8
  %117 = load i32, i32* @ZPOOL_HIST_INT_NAME, align 4
  %118 = call i64 @nvlist_exists(i32* %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %152

120:                                              ; preds = %115
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  br label %268

126:                                              ; preds = %120
  %127 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %128 = load i32*, i32** %12, align 8
  %129 = load i32, i32* @ZPOOL_HIST_TXG, align 4
  %130 = call i8* @fnvlist_lookup_uint64(i32* %128, i32 %129)
  %131 = load i32*, i32** %12, align 8
  %132 = load i32, i32* @ZPOOL_HIST_INT_NAME, align 4
  %133 = call i8* @fnvlist_lookup_string(i32* %131, i32 %132)
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %127, i8* %130, i8* %133)
  %135 = load i32*, i32** %12, align 8
  %136 = load i32, i32* @ZPOOL_HIST_DSNAME, align 4
  %137 = call i64 @nvlist_exists(i32* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %126
  %140 = load i32*, i32** %12, align 8
  %141 = load i32, i32* @ZPOOL_HIST_DSNAME, align 4
  %142 = call i8* @fnvlist_lookup_string(i32* %140, i32 %141)
  %143 = load i32*, i32** %12, align 8
  %144 = load i32, i32* @ZPOOL_HIST_DSID, align 4
  %145 = call i8* @fnvlist_lookup_uint64(i32* %143, i32 %144)
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %142, i8* %145)
  br label %147

147:                                              ; preds = %139, %126
  %148 = load i32*, i32** %12, align 8
  %149 = load i32, i32* @ZPOOL_HIST_INT_STR, align 4
  %150 = call i8* @fnvlist_lookup_string(i32* %148, i32 %149)
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %150)
  br label %213

152:                                              ; preds = %115
  %153 = load i32*, i32** %12, align 8
  %154 = load i32, i32* @ZPOOL_HIST_IOCTL, align 4
  %155 = call i64 @nvlist_exists(i32* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %201

157:                                              ; preds = %152
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %157
  br label %268

163:                                              ; preds = %157
  %164 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %165 = load i32*, i32** %12, align 8
  %166 = load i32, i32* @ZPOOL_HIST_IOCTL, align 4
  %167 = call i8* @fnvlist_lookup_string(i32* %165, i32 %166)
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i8* %164, i8* %167)
  %169 = load i32*, i32** %12, align 8
  %170 = load i32, i32* @ZPOOL_HIST_INPUT_NVL, align 4
  %171 = call i64 @nvlist_exists(i32* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %163
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %175 = load i32*, i32** %12, align 8
  %176 = load i32, i32* @ZPOOL_HIST_INPUT_NVL, align 4
  %177 = call i32* @fnvlist_lookup_nvlist(i32* %175, i32 %176)
  %178 = call i32 @dump_nvlist(i32* %177, i32 8)
  br label %179

179:                                              ; preds = %173, %163
  %180 = load i32*, i32** %12, align 8
  %181 = load i32, i32* @ZPOOL_HIST_OUTPUT_NVL, align 4
  %182 = call i64 @nvlist_exists(i32* %180, i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %186 = load i32*, i32** %12, align 8
  %187 = load i32, i32* @ZPOOL_HIST_OUTPUT_NVL, align 4
  %188 = call i32* @fnvlist_lookup_nvlist(i32* %186, i32 %187)
  %189 = call i32 @dump_nvlist(i32* %188, i32 8)
  br label %190

190:                                              ; preds = %184, %179
  %191 = load i32*, i32** %12, align 8
  %192 = load i32, i32* @ZPOOL_HIST_ERRNO, align 4
  %193 = call i64 @nvlist_exists(i32* %191, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %190
  %196 = load i32*, i32** %12, align 8
  %197 = load i32, i32* @ZPOOL_HIST_ERRNO, align 4
  %198 = call i32 @fnvlist_lookup_int64(i32* %196, i32 %197)
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %195, %190
  br label %212

201:                                              ; preds = %152
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %207, label %206

206:                                              ; preds = %201
  br label %268

207:                                              ; preds = %201
  %208 = getelementptr inbounds [30 x i8], [30 x i8]* %13, i64 0, i64 0
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %208)
  %210 = load i32*, i32** %12, align 8
  %211 = call i32 @dump_nvlist(i32* %210, i32 4)
  br label %212

212:                                              ; preds = %207, %200
  br label %213

213:                                              ; preds = %212, %147
  br label %214

214:                                              ; preds = %213, %101
  br label %215

215:                                              ; preds = %214, %71
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %215
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %268

222:                                              ; preds = %215
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  %224 = load i32*, i32** %12, align 8
  %225 = load i32, i32* @ZPOOL_HIST_WHO, align 4
  %226 = call i64 @nvlist_exists(i32* %224, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %245

228:                                              ; preds = %222
  %229 = load i32*, i32** %12, align 8
  %230 = load i32, i32* @ZPOOL_HIST_WHO, align 4
  %231 = call i8* @fnvlist_lookup_uint64(i32* %229, i32 %230)
  store i8* %231, i8** %17, align 8
  %232 = load i8*, i8** %17, align 8
  %233 = call %struct.passwd* @getpwuid(i8* %232)
  store %struct.passwd* %233, %struct.passwd** %18, align 8
  %234 = load i8*, i8** %17, align 8
  %235 = ptrtoint i8* %234 to i32
  %236 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i64 0, i64 0), i32 %235)
  %237 = load %struct.passwd*, %struct.passwd** %18, align 8
  %238 = icmp ne %struct.passwd* %237, null
  br i1 %238, label %239, label %244

239:                                              ; preds = %228
  %240 = load %struct.passwd*, %struct.passwd** %18, align 8
  %241 = getelementptr inbounds %struct.passwd, %struct.passwd* %240, i32 0, i32 0
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %242)
  br label %244

244:                                              ; preds = %239, %228
  br label %245

245:                                              ; preds = %244, %222
  %246 = load i32*, i32** %12, align 8
  %247 = load i32, i32* @ZPOOL_HIST_HOST, align 4
  %248 = call i64 @nvlist_exists(i32* %246, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %245
  %251 = load i32*, i32** %12, align 8
  %252 = load i32, i32* @ZPOOL_HIST_HOST, align 4
  %253 = call i8* @fnvlist_lookup_string(i32* %251, i32 %252)
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8* %253)
  br label %255

255:                                              ; preds = %250, %245
  %256 = load i32*, i32** %12, align 8
  %257 = load i32, i32* @ZPOOL_HIST_ZONE, align 4
  %258 = call i64 @nvlist_exists(i32* %256, i32 %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %255
  %261 = load i32*, i32** %12, align 8
  %262 = load i32, i32* @ZPOOL_HIST_ZONE, align 4
  %263 = call i8* @fnvlist_lookup_string(i32* %261, i32 %262)
  %264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i8* %263)
  br label %265

265:                                              ; preds = %260, %255
  %266 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %268

268:                                              ; preds = %265, %220, %206, %162, %125, %96, %91
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %10, align 4
  br label %40

271:                                              ; preds = %40
  %272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %273 = load i32*, i32** %6, align 8
  %274 = call i32 @nvlist_free(i32* %273)
  %275 = load i32, i32* %9, align 4
  store i32 %275, i32* %3, align 4
  br label %276

276:                                              ; preds = %271, %31
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i8* @zpool_get_name(i32*) #1

declare dso_local i32 @zpool_get_history(i32*, i32**) #1

declare dso_local i32 @verify(i32) #1

declare dso_local i64 @nvlist_lookup_nvlist_array(i32*, i32, i32***, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @nvlist_exists(i32*, i32) #1

declare dso_local i8* @fnvlist_lookup_uint64(i32*, i32) #1

declare dso_local i32 @localtime_r(i8**, %struct.tm*) #1

declare dso_local i32 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i8* @fnvlist_lookup_string(i32*, i32) #1

declare dso_local i32 @dump_nvlist(i32*, i32) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32*, i32) #1

declare dso_local i32 @fnvlist_lookup_int64(i32*, i32) #1

declare dso_local %struct.passwd* @getpwuid(i8*) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

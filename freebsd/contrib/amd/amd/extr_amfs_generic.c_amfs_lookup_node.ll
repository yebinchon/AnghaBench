; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_generic.c_amfs_lookup_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_generic.c_amfs_lookup_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"in amfs_lookup_node\00", align 1
@amd_state = common dso_local global i64 0, align 8
@Finishing = common dso_local global i64 0, align 8
@FS_DIRECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s mount ignored - going down\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"%s/%s mount ignored - going down\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c".. in %s gives %s\00", align 1
@ESTALE = common dso_local global i32 0, align 4
@XLOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Key \22%s\22 contains a disallowed character\00", align 1
@MFF_ERROR = common dso_local global i32 0, align 4
@MFF_MOUNTED = common dso_local global i32 0, align 4
@MFF_UNMOUNTING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"ignoring mount of %s in %s -- %smounting in progress, flags %x\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"will remount later\00", align 1
@AMF_REMOUNT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"matched %s in %s\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Waiting while %d mount(s) in progress\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"Returning error: %s\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"not found - server going down anyway\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (%struct.TYPE_10__*, i8*, i32*)* @amfs_lookup_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @amfs_lookup_node(%struct.TYPE_10__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_9__*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %12, align 8
  %13 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @amd_state, align 8
  %15 = load i64, i64* @Finishing, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %52

17:                                               ; preds = %3
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = icmp eq %struct.TYPE_8__* %20, null
  br i1 %21, label %40, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = icmp eq %struct.TYPE_9__* %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %22
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 3
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FS_DIRECT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %29, %22, %17
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %49

43:                                               ; preds = %29
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %46, i8* %47)
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i32, i32* @ENOENT, align 4
  %51 = call i32 @ereturn(i32 %50)
  br label %52

52:                                               ; preds = %49, %3
  %53 = load i8*, i8** %6, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 0
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 46
  br i1 %57, label %58, label %100

58:                                               ; preds = %52
  %59 = load i8*, i8** %6, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %4, align 8
  br label %263

66:                                               ; preds = %58
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 46
  br i1 %71, label %72, label %99

72:                                               ; preds = %66
  %73 = load i8*, i8** %6, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %99

78:                                               ; preds = %72
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 7
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = icmp ne %struct.TYPE_10__* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %78
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 7
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %86, i32 %91)
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 7
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  store %struct.TYPE_10__* %95, %struct.TYPE_10__** %4, align 8
  br label %263

96:                                               ; preds = %78
  %97 = load i32, i32* @ESTALE, align 4
  %98 = call i32 @ereturn(i32 %97)
  br label %99

99:                                               ; preds = %96, %72, %66
  br label %100

100:                                              ; preds = %99, %52
  %101 = load i8*, i8** %6, align 8
  %102 = call i32 @valid_key(i8* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @XLOG_WARNING, align 4
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @plog(i32 %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @ENOENT, align 4
  %109 = call i32 @ereturn(i32 %108)
  br label %110

110:                                              ; preds = %104, %100
  %111 = load i8*, i8** %6, align 8
  %112 = call i8* @expand_selectors(i8* %111)
  store i8* %112, i8** %12, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 6
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  store %struct.TYPE_10__* %115, %struct.TYPE_10__** %8, align 8
  br label %116

116:                                              ; preds = %215, %110
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = icmp ne %struct.TYPE_10__* %117, null
  br i1 %118, label %119, label %219

119:                                              ; preds = %116
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i8*, i8** %12, align 8
  %124 = call i64 @FSTREQ(i32 %122, i8* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %214

126:                                              ; preds = %119
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %9, align 4
  br label %215

135:                                              ; preds = %126
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  store %struct.TYPE_9__* %140, %struct.TYPE_9__** %11, align 8
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %172

146:                                              ; preds = %135
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @MFF_ERROR, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %146
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %9, align 4
  br label %215

157:                                              ; preds = %146
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @MFF_MOUNTED, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %157
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @MFF_UNMOUNTING, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %205

171:                                              ; preds = %164, %157
  br label %172

172:                                              ; preds = %171, %145
  %173 = load i8*, i8** %12, align 8
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 3
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @MFF_UNMOUNTING, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i8* %173, i32 %176, i8* %184, i32 %187)
  %189 = load i32, i32* %10, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %10, align 4
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @MFF_UNMOUNTING, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %172
  %198 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %199 = load i32, i32* @AMF_REMOUNT, align 4
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = or i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %197, %172
  br label %215

205:                                              ; preds = %164
  %206 = load i8*, i8** %12, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %206, i32 %209)
  %211 = load i8*, i8** %12, align 8
  %212 = call i32 @XFREE(i8* %211)
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %213, %struct.TYPE_10__** %4, align 8
  br label %263

214:                                              ; preds = %119
  br label %215

215:                                              ; preds = %214, %204, %153, %131
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 5
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  store %struct.TYPE_10__* %218, %struct.TYPE_10__** %8, align 8
  br label %116

219:                                              ; preds = %116
  %220 = load i32, i32* %10, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %219
  %223 = load i32, i32* %10, align 4
  %224 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %223)
  %225 = load i8*, i8** %12, align 8
  %226 = call i32 @XFREE(i8* %225)
  %227 = call i32 @ereturn(i32 -1)
  br label %228

228:                                              ; preds = %222, %219
  %229 = load i32, i32* %9, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %228
  %232 = load i32, i32* %9, align 4
  %233 = call i32 @strerror(i32 %232)
  %234 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i32 %233)
  %235 = load i8*, i8** %12, align 8
  %236 = call i32 @XFREE(i8* %235)
  %237 = load i32, i32* %9, align 4
  %238 = call i32 @ereturn(i32 %237)
  br label %239

239:                                              ; preds = %231, %228
  %240 = load i64, i64* @amd_state, align 8
  %241 = trunc i64 %240 to i32
  %242 = load i64, i64* @Finishing, align 8
  %243 = trunc i64 %242 to i32
  %244 = icmp sge i32 %241, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %239
  %246 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  %247 = load i32, i32* @ENOENT, align 4
  %248 = call i32 @ereturn(i32 %247)
  br label %249

249:                                              ; preds = %245, %239
  %250 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %251 = load i8*, i8** %12, align 8
  %252 = call %struct.TYPE_10__* @get_ap_child(%struct.TYPE_10__* %250, i8* %251)
  store %struct.TYPE_10__* %252, %struct.TYPE_10__** %8, align 8
  %253 = load i8*, i8** %12, align 8
  %254 = call i32 @XFREE(i8* %253)
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %256 = icmp eq %struct.TYPE_10__* %255, null
  br i1 %256, label %257, label %260

257:                                              ; preds = %249
  %258 = load i32, i32* @ENOSPC, align 4
  %259 = call i32 @ereturn(i32 %258)
  br label %260

260:                                              ; preds = %257, %249
  %261 = load i32*, i32** %7, align 8
  store i32 -1, i32* %261, align 4
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %262, %struct.TYPE_10__** %4, align 8
  br label %263

263:                                              ; preds = %260, %205, %83, %64
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  ret %struct.TYPE_10__* %264
}

declare dso_local i32 @dlog(i8*, ...) #1

declare dso_local i32 @ereturn(i32) #1

declare dso_local i32 @valid_key(i8*) #1

declare dso_local i32 @plog(i32, i8*, i8*) #1

declare dso_local i8* @expand_selectors(i8*) #1

declare dso_local i64 @FSTREQ(i32, i8*) #1

declare dso_local i32 @XFREE(i8*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local %struct.TYPE_10__* @get_ap_child(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

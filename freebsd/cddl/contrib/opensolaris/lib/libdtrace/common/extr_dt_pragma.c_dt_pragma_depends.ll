; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pragma.c_dt_pragma_depends.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_pragma.c_dt_pragma_depends.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i8*, i32, i32 }
%struct.TYPE_20__ = type { i64, i8*, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32, i32 }

@yypcb = common dso_local global %struct.TYPE_23__* null, align 8
@MAXPATHLEN = common dso_local global i32 0, align 4
@DT_NODE_IDENT = common dso_local global i64 0, align 8
@D_PRAGMA_MALFORM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"malformed #pragma %s <class> <name>\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"debug.dtrace.providers\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"module\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"library\00", align 1
@DTRACE_C_CTL = common dso_local global i32 0, align 4
@D_PRAGMA_DEPEND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"failed to add dependency %s:%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"main program may not explicitly depend on a library\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"program requires library \22%s\22 which failed to load\00", align 1
@D_PRAGMA_INVAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [42 x i8] c"invalid class %s specified by #pragma %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"program requires %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_20__*)* @dt_pragma_depends to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dt_pragma_depends(i8* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %4, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** @yypcb, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %5, align 8
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %20 = icmp ne %struct.TYPE_20__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_20__*, %struct.TYPE_20__** %23, align 8
  br label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi %struct.TYPE_20__* [ %24, %21 ], [ null, %25 ]
  store %struct.TYPE_20__* %27, %struct.TYPE_20__** %6, align 8
  %28 = load i32, i32* @MAXPATHLEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %9, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %10, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %33 = icmp eq %struct.TYPE_20__* %32, null
  br i1 %33, label %49, label %34

34:                                               ; preds = %26
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %36 = icmp eq %struct.TYPE_20__* %35, null
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DT_NODE_IDENT, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DT_NODE_IDENT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43, %37, %34, %26
  %50 = load i32, i32* @D_PRAGMA_MALFORM, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 (i32, i8*, ...) @xyerror(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %116

59:                                               ; preds = %53
  store i8* null, i8** %12, align 8
  %60 = call i64 @sysctlbyname(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* null, i64* %11, i32* null, i32 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %59
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i8* @dt_alloc(%struct.TYPE_19__* %63, i64 %64)
  store i8* %65, i8** %12, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i8*, i8** %12, align 8
  %69 = call i64 @sysctlbyname(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %68, i64* %11, i32* null, i32 0)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67, %62, %59
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = call i32* @dt_provider_lookup(%struct.TYPE_19__* %72, i8* %75)
  %77 = icmp ne i32* %76, null
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %7, align 4
  br label %108

79:                                               ; preds = %67
  %80 = load i32, i32* @B_FALSE, align 4
  store i32 %80, i32* %7, align 4
  %81 = load i8*, i8** %12, align 8
  store i8* %81, i8** %13, align 8
  br label %82

82:                                               ; preds = %94, %79
  %83 = call i8* @strsep(i8** %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %83, i8** %14, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i8*, i8** %14, align 8
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strcmp(i8* %86, i8* %89)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* @B_TRUE, align 4
  store i32 %93, i32* %7, align 4
  br label %95

94:                                               ; preds = %85
  br label %82

95:                                               ; preds = %92, %82
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @B_FALSE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32* @dt_provider_lookup(%struct.TYPE_19__* %100, i8* %103)
  %105 = icmp ne i32* %104, null
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %7, align 4
  br label %107

107:                                              ; preds = %99, %95
  br label %108

108:                                              ; preds = %107, %71
  %109 = load i8*, i8** %12, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %113 = load i8*, i8** %12, align 8
  %114 = call i32 @dt_free(%struct.TYPE_19__* %112, i8* %113)
  br label %115

115:                                              ; preds = %111, %108
  br label %238

116:                                              ; preds = %53
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i64 @strcmp(i8* %119, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %116
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %124 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i32* @dt_module_lookup_by_name(%struct.TYPE_19__* %123, i8* %126)
  store i32* %127, i32** %15, align 8
  %128 = load i32*, i32** %15, align 8
  %129 = icmp ne i32* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %122
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %132 = load i32*, i32** %15, align 8
  %133 = call i32* @dt_module_getctf(%struct.TYPE_19__* %131, i32* %132)
  %134 = icmp ne i32* %133, null
  br label %135

135:                                              ; preds = %130, %122
  %136 = phi i1 [ false, %122 ], [ %134, %130 ]
  %137 = zext i1 %136 to i32
  store i32 %137, i32* %7, align 4
  br label %237

138:                                              ; preds = %116
  %139 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 1
  %141 = load i8*, i8** %140, align 8
  %142 = call i64 @strcmp(i8* %141, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %229

144:                                              ; preds = %138
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** @yypcb, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @DTRACE_C_CTL, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %187

151:                                              ; preds = %144
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  %156 = zext i1 %155 to i32
  %157 = call i32 @assert(i32 %156)
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = trunc i64 %29 to i32
  %163 = call i32 @dt_pragma_depends_finddep(%struct.TYPE_19__* %158, i8* %161, i8* %31, i32 %162)
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call %struct.TYPE_21__* @dt_lib_depend_lookup(i32* %165, i8* %168)
  store %struct.TYPE_21__* %169, %struct.TYPE_21__** %8, align 8
  %170 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %171 = icmp ne %struct.TYPE_21__* %170, null
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %175, i32 0, i32 1
  %177 = call i64 @dt_lib_depend_add(%struct.TYPE_19__* %174, i32* %176, i8* %31)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %151
  %180 = load i32, i32* @D_PRAGMA_DEPEND, align 4
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %183 = call i32 @dtrace_errno(%struct.TYPE_19__* %182)
  %184 = call i8* @dtrace_errmsg(%struct.TYPE_19__* %181, i32 %183)
  %185 = call i32 (i32, i8*, ...) @xyerror(i32 %180, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %31, i8* %184)
  br label %186

186:                                              ; preds = %179, %151
  br label %227

187:                                              ; preds = %144
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = icmp eq i8* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %187
  %193 = load i32, i32* @D_PRAGMA_DEPEND, align 4
  %194 = call i32 (i32, i8*, ...) @xyerror(i32 %193, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %195

195:                                              ; preds = %192, %187
  %196 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call %struct.TYPE_21__* @dt_lib_depend_lookup(i32* %197, i8* %200)
  store %struct.TYPE_21__* %201, %struct.TYPE_21__** %8, align 8
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %203 = icmp ne %struct.TYPE_21__* %202, null
  %204 = zext i1 %203 to i32
  %205 = call i32 @assert(i32 %204)
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = trunc i64 %29 to i32
  %211 = call i32 @dt_pragma_depends_finddep(%struct.TYPE_19__* %206, i8* %209, i8* %31, i32 %210)
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 1
  %214 = call %struct.TYPE_21__* @dt_lib_depend_lookup(i32* %213, i8* %31)
  store %struct.TYPE_21__* %214, %struct.TYPE_21__** %8, align 8
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %216 = icmp ne %struct.TYPE_21__* %215, null
  %217 = zext i1 %216 to i32
  %218 = call i32 @assert(i32 %217)
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %195
  %224 = load i32, i32* @D_PRAGMA_DEPEND, align 4
  %225 = call i32 (i32, i8*, ...) @xyerror(i32 %224, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i8* %31)
  br label %226

226:                                              ; preds = %223, %195
  br label %227

227:                                              ; preds = %226, %186
  %228 = load i32, i32* @B_TRUE, align 4
  store i32 %228, i32* %7, align 4
  br label %236

229:                                              ; preds = %138
  %230 = load i32, i32* @D_PRAGMA_INVAL, align 4
  %231 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = load i8*, i8** %3, align 8
  %235 = call i32 (i32, i8*, ...) @xyerror(i32 %230, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i8* %233, i8* %234)
  br label %236

236:                                              ; preds = %229, %227
  br label %237

237:                                              ; preds = %236, %135
  br label %238

238:                                              ; preds = %237, %115
  %239 = load i32, i32* %7, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %250, label %241

241:                                              ; preds = %238
  %242 = load i32, i32* @D_PRAGMA_DEPEND, align 4
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %243, i32 0, i32 1
  %245 = load i8*, i8** %244, align 8
  %246 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %246, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  %249 = call i32 (i32, i8*, ...) @xyerror(i32 %242, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i8* %245, i8* %248)
  br label %250

250:                                              ; preds = %241, %238
  %251 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %251)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @xyerror(i32, i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i64 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #2

declare dso_local i8* @dt_alloc(%struct.TYPE_19__*, i64) #2

declare dso_local i32* @dt_provider_lookup(%struct.TYPE_19__*, i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @dt_free(%struct.TYPE_19__*, i8*) #2

declare dso_local i32* @dt_module_lookup_by_name(%struct.TYPE_19__*, i8*) #2

declare dso_local i32* @dt_module_getctf(%struct.TYPE_19__*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @dt_pragma_depends_finddep(%struct.TYPE_19__*, i8*, i8*, i32) #2

declare dso_local %struct.TYPE_21__* @dt_lib_depend_lookup(i32*, i8*) #2

declare dso_local i64 @dt_lib_depend_add(%struct.TYPE_19__*, i32*, i8*) #2

declare dso_local i8* @dtrace_errmsg(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @dtrace_errno(%struct.TYPE_19__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

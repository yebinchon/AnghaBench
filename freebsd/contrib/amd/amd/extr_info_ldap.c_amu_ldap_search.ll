; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_ldap.c_amu_ldap_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_info_ldap.c_amu_ldap_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.TYPE_9__ = type { i32* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"-> amu_ldap_search: map <%s>, key <%s>\0A\00", align 1
@XLOG_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"LDAP panic: no map data\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@AMD_LDAP_FILTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Search with filter: <%s>\0A\00", align 1
@AMD_LDAP_RETRIES = common dso_local global i32 0, align 4
@gopt = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@LDAP_SCOPE_SUBTREE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"LDAP search attempt %d failed: %s\0A\00", align 1
@LDAP_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"amu_ldap_search: unbinding...\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"No object\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"LDAP search failed: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Search found %d entries\0A\00", align 1
@AMD_LDAP_ATTR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"Missing value for %s in map %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Map %s, %s => %s\0A\00", align 1
@CFM_SUN_MAP_SYNTAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"Empty value for %s in map %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amu_ldap_search(%struct.TYPE_8__* %0, i8* %1, i8* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.timeval, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_9__*, align 8
  %26 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %27 = load i32, i32* @MAXPATHLEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %13, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %31 = load i32, i32* @MAXPATHLEN, align 4
  %32 = mul nsw i32 2, %31
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %15, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32* null, i32** %24, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %38, %struct.TYPE_9__** %25, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %39, i8* %40)
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  store i32 2, i32* %42, align 8
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %45 = icmp eq %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %5
  %47 = load i32, i32* @XLOG_USER, align 4
  %48 = call i32 (i32, i8*, ...) @plog(i32 %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EIO, align 4
  store i32 %49, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %253

50:                                               ; preds = %5
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %52 = call i64 @amu_ldap_rebind(%struct.TYPE_9__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @ENOENT, align 4
  store i32 %55, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %253

56:                                               ; preds = %50
  %57 = trunc i64 %28 to i32
  %58 = load i32, i32* @AMD_LDAP_FILTER, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @xsnprintf(i8* %30, i32 %57, i32 %58, i8* %59, i8* %60)
  store i8* %30, i8** %16, align 8
  store i8* %34, i8** %17, align 8
  br label %62

62:                                               ; preds = %86, %56
  %63 = load i8*, i8** %16, align 8
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load i8*, i8** %16, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 42
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i8*, i8** %17, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %17, align 8
  store i8 92, i8* %72, align 1
  %74 = load i8*, i8** %17, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %17, align 8
  store i8 50, i8* %74, align 1
  %76 = load i8*, i8** %17, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %17, align 8
  store i8 97, i8* %76, align 1
  %78 = load i8*, i8** %16, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %16, align 8
  br label %86

80:                                               ; preds = %66
  %81 = load i8*, i8** %16, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %16, align 8
  %83 = load i8, i8* %81, align 1
  %84 = load i8*, i8** %17, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %17, align 8
  store i8 %83, i8* %84, align 1
  br label %86

86:                                               ; preds = %80, %71
  br label %62

87:                                               ; preds = %62
  %88 = load i8*, i8** %17, align 8
  store i8 0, i8* %88, align 1
  %89 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  store i32 0, i32* %19, align 4
  br label %90

90:                                               ; preds = %135, %87
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* @AMD_LDAP_RETRIES, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %138

94:                                               ; preds = %90
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @gopt, i32 0, i32 0), align 4
  %99 = load i32, i32* @LDAP_SCOPE_SUBTREE, align 4
  %100 = call i32 @ldap_search_st(i32* %97, i32 %98, i32 %99, i8* %34, i32 0, i32 0, %struct.timeval* %18, i32** %24)
  store i32 %100, i32* %20, align 4
  %101 = load i32, i32* %20, align 4
  %102 = icmp eq i32 %101, 128
  br i1 %102, label %103, label %104

103:                                              ; preds = %94
  br label %138

104:                                              ; preds = %94
  %105 = load i32*, i32** %24, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32*, i32** %24, align 8
  %109 = call i32 @ldap_msgfree(i32* %108)
  store i32* null, i32** %24, align 8
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* @XLOG_USER, align 4
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i32, i32* %20, align 4
  %115 = call i32 @ldap_err2string(i32 %114)
  %116 = call i32 (i32, i8*, ...) @plog(i32 %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %113, i32 %115)
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* @LDAP_TIMEOUT, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %110
  %121 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = call i32 @amu_ldap_unbind(i32* %124)
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  store i32* null, i32** %127, align 8
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %129 = call i64 @amu_ldap_rebind(%struct.TYPE_9__* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %120
  %132 = load i32, i32* @ENOENT, align 4
  store i32 %132, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %253

133:                                              ; preds = %120
  br label %134

134:                                              ; preds = %133, %110
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %19, align 4
  br label %90

138:                                              ; preds = %103, %90
  %139 = load i32, i32* %20, align 4
  switch i32 %139, label %150 [
    i32 128, label %140
    i32 129, label %141
  ]

140:                                              ; preds = %138
  br label %162

141:                                              ; preds = %138
  %142 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %143 = load i32*, i32** %24, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i32*, i32** %24, align 8
  %147 = call i32 @ldap_msgfree(i32* %146)
  br label %148

148:                                              ; preds = %145, %141
  %149 = load i32, i32* @ENOENT, align 4
  store i32 %149, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %253

150:                                              ; preds = %138
  %151 = load i32, i32* @XLOG_USER, align 4
  %152 = load i32, i32* %20, align 4
  %153 = call i32 @ldap_err2string(i32 %152)
  %154 = call i32 (i32, i8*, ...) @plog(i32 %151, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %153)
  %155 = load i32*, i32** %24, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load i32*, i32** %24, align 8
  %159 = call i32 @ldap_msgfree(i32* %158)
  br label %160

160:                                              ; preds = %157, %150
  %161 = load i32, i32* @EIO, align 4
  store i32 %161, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %253

162:                                              ; preds = %140
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32*, i32** %24, align 8
  %167 = call i32 @ldap_count_entries(i32* %165, i32* %166)
  store i32 %167, i32* %22, align 4
  %168 = load i32, i32* %22, align 4
  %169 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %22, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %162
  %173 = load i32*, i32** %24, align 8
  %174 = call i32 @ldap_msgfree(i32* %173)
  %175 = load i32, i32* @ENOENT, align 4
  store i32 %175, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %253

176:                                              ; preds = %162
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = load i32*, i32** %24, align 8
  %181 = call i32* @ldap_first_entry(i32* %179, i32* %180)
  store i32* %181, i32** %23, align 8
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32*, i32** %23, align 8
  %186 = load i32, i32* @AMD_LDAP_ATTR, align 4
  %187 = call i8** @ldap_get_values(i32* %184, i32* %185, i32 %186)
  store i8** %187, i8*** %12, align 8
  %188 = load i8**, i8*** %12, align 8
  %189 = call i32 @ldap_count_values(i8** %188)
  store i32 %189, i32* %21, align 4
  %190 = load i32, i32* %21, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %176
  %193 = load i32, i32* @XLOG_USER, align 4
  %194 = load i8*, i8** %9, align 8
  %195 = load i8*, i8** %8, align 8
  %196 = call i32 (i32, i8*, ...) @plog(i32 %193, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0), i8* %194, i8* %195)
  %197 = load i8**, i8*** %12, align 8
  %198 = call i32 @ldap_value_free(i8** %197)
  %199 = load i32*, i32** %24, align 8
  %200 = call i32 @ldap_msgfree(i32* %199)
  %201 = load i32, i32* @EIO, align 4
  store i32 %201, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %253

202:                                              ; preds = %176
  %203 = load i8*, i8** %8, align 8
  %204 = load i8*, i8** %9, align 8
  %205 = load i8**, i8*** %12, align 8
  %206 = getelementptr inbounds i8*, i8** %205, i64 0
  %207 = load i8*, i8** %206, align 8
  %208 = call i32 (i8*, ...) @dlog(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %203, i8* %204, i8* %207)
  %209 = load i8**, i8*** %12, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i64 0
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %241

213:                                              ; preds = %202
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %215, align 8
  %217 = icmp ne %struct.TYPE_7__* %216, null
  br i1 %217, label %218, label %234

218:                                              ; preds = %213
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @CFM_SUN_MAP_SYNTAX, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %234

227:                                              ; preds = %218
  %228 = load i8*, i8** %9, align 8
  %229 = load i8**, i8*** %12, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 0
  %231 = load i8*, i8** %230, align 8
  %232 = call i8* @sun_entry2amd(i8* %228, i8* %231)
  %233 = load i8**, i8*** %10, align 8
  store i8* %232, i8** %233, align 8
  br label %240

234:                                              ; preds = %218, %213
  %235 = load i8**, i8*** %12, align 8
  %236 = getelementptr inbounds i8*, i8** %235, i64 0
  %237 = load i8*, i8** %236, align 8
  %238 = call i8* @xstrdup(i8* %237)
  %239 = load i8**, i8*** %10, align 8
  store i8* %238, i8** %239, align 8
  br label %240

240:                                              ; preds = %234, %227
  store i32 0, i32* %20, align 4
  br label %247

241:                                              ; preds = %202
  %242 = load i32, i32* @XLOG_USER, align 4
  %243 = load i8*, i8** %9, align 8
  %244 = load i8*, i8** %8, align 8
  %245 = call i32 (i32, i8*, ...) @plog(i32 %242, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %243, i8* %244)
  %246 = load i32, i32* @ENOENT, align 4
  store i32 %246, i32* %20, align 4
  br label %247

247:                                              ; preds = %241, %240
  %248 = load i32*, i32** %24, align 8
  %249 = call i32 @ldap_msgfree(i32* %248)
  %250 = load i8**, i8*** %12, align 8
  %251 = call i32 @ldap_value_free(i8** %250)
  %252 = load i32, i32* %20, align 4
  store i32 %252, i32* %6, align 4
  store i32 1, i32* %26, align 4
  br label %253

253:                                              ; preds = %247, %192, %172, %160, %148, %131, %54, %46
  %254 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %254)
  %255 = load i32, i32* %6, align 4
  ret i32 %255
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dlog(i8*, ...) #2

declare dso_local i32 @plog(i32, i8*, ...) #2

declare dso_local i64 @amu_ldap_rebind(%struct.TYPE_9__*) #2

declare dso_local i32 @xsnprintf(i8*, i32, i32, i8*, i8*) #2

declare dso_local i32 @ldap_search_st(i32*, i32, i32, i8*, i32, i32, %struct.timeval*, i32**) #2

declare dso_local i32 @ldap_msgfree(i32*) #2

declare dso_local i32 @ldap_err2string(i32) #2

declare dso_local i32 @amu_ldap_unbind(i32*) #2

declare dso_local i32 @ldap_count_entries(i32*, i32*) #2

declare dso_local i32* @ldap_first_entry(i32*, i32*) #2

declare dso_local i8** @ldap_get_values(i32*, i32*, i32) #2

declare dso_local i32 @ldap_count_values(i8**) #2

declare dso_local i32 @ldap_value_free(i8**) #2

declare dso_local i8* @sun_entry2amd(i8*, i8*) #2

declare dso_local i8* @xstrdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

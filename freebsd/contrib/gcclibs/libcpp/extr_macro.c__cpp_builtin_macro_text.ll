; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c__cpp_builtin_macro_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_macro.c__cpp_builtin_macro_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i8*, i8*, i32, %struct.TYPE_22__, %struct.TYPE_20__*, %struct.TYPE_26__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, %struct.line_map*, i32 }
%struct.line_map = type { i8* }
%struct.TYPE_24__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_25__ = type { i8* }
%struct._cpp_file = type { i32 }
%struct.tm = type { i64, i32, i32, i32, i32, i32 }
%struct.stat = type { i32 }

@CPP_DL_ICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"invalid built-in macro \22%s\22\00", align 1
@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"could not determine file timestamp\00", align 1
@.str.2 = private unnamed_addr constant [27 x i32] [i32 34, i32 63, i32 63, i32 63, i32 32, i32 63, i32 63, i32 63, i32 32, i32 63, i32 63, i32 32, i32 63, i32 63, i32 58, i32 63, i32 63, i32 58, i32 63, i32 63, i32 32, i32 63, i32 63, i32 63, i32 63, i32 34, i32 0], align 4
@traditional = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"\22%s %2d %4d\22\00", align 1
@monthnames = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"\22%02d:%02d:%02d\22\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"could not determine date and time\00", align 1
@.str.6 = private unnamed_addr constant [14 x i32] [i32 34, i32 63, i32 63, i32 63, i32 32, i32 63, i32 63, i32 32, i32 63, i32 63, i32 63, i32 63, i32 34, i32 0], align 4
@.str.7 = private unnamed_addr constant [11 x i32] [i32 34, i32 63, i32 63, i32 58, i32 63, i32 63, i32 58, i32 63, i32 63, i32 34, i32 0], align 4
@directives_only = common dso_local global i32 0, align 4
@CPP_DL_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [61 x i8] c"__COUNTER__ expanded inside directive with -fdirectives-only\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_cpp_builtin_macro_text(%struct.TYPE_23__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.line_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct._cpp_file*, align 8
  %10 = alloca %struct.tm*, align 8
  %11 = alloca %struct.stat*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.tm*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  store i8* null, i8** %6, align 8
  store i32 1, i32* %7, align 4
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %24 [
    i32 128, label %30
    i32 133, label %89
    i32 136, label %89
    i32 132, label %139
    i32 131, label %146
    i32 130, label %181
    i32 134, label %188
    i32 129, label %188
    i32 135, label %268
  ]

24:                                               ; preds = %2
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %26 = load i32, i32* @CPP_DL_ICE, align 4
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %28 = call i32 @NODE_NAME(%struct.TYPE_24__* %27)
  %29 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @cpp_error(%struct.TYPE_23__* %25, i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %288

30:                                               ; preds = %2
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %32 = call %struct.TYPE_25__* @cpp_get_buffer(%struct.TYPE_23__* %31)
  store %struct.TYPE_25__* %32, %struct.TYPE_25__** %8, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %85

37:                                               ; preds = %30
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %39 = call %struct._cpp_file* @cpp_get_file(%struct.TYPE_25__* %38)
  store %struct._cpp_file* %39, %struct._cpp_file** %9, align 8
  %40 = load %struct._cpp_file*, %struct._cpp_file** %9, align 8
  %41 = icmp ne %struct._cpp_file* %40, null
  br i1 %41, label %42, label %84

42:                                               ; preds = %37
  store %struct.tm* null, %struct.tm** %10, align 8
  %43 = load %struct._cpp_file*, %struct._cpp_file** %9, align 8
  %44 = call %struct.stat* @_cpp_get_file_stat(%struct._cpp_file* %43)
  store %struct.stat* %44, %struct.stat** %11, align 8
  %45 = load %struct.stat*, %struct.stat** %11, align 8
  %46 = icmp ne %struct.stat* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.stat*, %struct.stat** %11, align 8
  %49 = getelementptr inbounds %struct.stat, %struct.stat* %48, i32 0, i32 0
  %50 = call %struct.tm* @localtime(i32* %49)
  store %struct.tm* %50, %struct.tm** %10, align 8
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.tm*, %struct.tm** %10, align 8
  %53 = icmp ne %struct.tm* %52, null
  br i1 %53, label %54, label %77

54:                                               ; preds = %51
  %55 = load %struct.tm*, %struct.tm** %10, align 8
  %56 = call i8* @asctime(%struct.tm* %55)
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = call i8* @strlen(i8* %57)
  %59 = ptrtoint i8* %58 to i64
  store i64 %59, i64* %13, align 8
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %61 = load i64, i64* %13, align 8
  %62 = add i64 %61, 2
  %63 = trunc i64 %62 to i32
  %64 = call i8* @_cpp_unaligned_alloc(%struct.TYPE_23__* %60, i32 %63)
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  store i8 34, i8* %66, align 1
  %67 = load i8*, i8** %14, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 1
  %69 = load i8*, i8** %12, align 8
  %70 = call i32 @strcpy(i8* %68, i8* %69)
  %71 = load i8*, i8** %14, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8 34, i8* %73, align 1
  %74 = load i8*, i8** %14, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  br label %83

77:                                               ; preds = %51
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %79 = load i32, i32* @CPP_DL_WARNING, align 4
  %80 = call i32 @cpp_errno(%struct.TYPE_23__* %78, i32 %79, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  store i8* bitcast ([27 x i32]* @.str.2 to i8*), i8** %82, align 8
  br label %83

83:                                               ; preds = %77, %54
  br label %84

84:                                               ; preds = %83, %37
  br label %85

85:                                               ; preds = %84, %30
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  store i8* %88, i8** %6, align 8
  br label %288

89:                                               ; preds = %2, %2
  %90 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %91, align 8
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %93, i32 0, i32 5
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call %struct.line_map* @linemap_lookup(%struct.TYPE_26__* %92, i32 %97)
  store %struct.line_map* %98, %struct.line_map** %5, align 8
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 136
  br i1 %103, label %104, label %117

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %110, %104
  %106 = load %struct.line_map*, %struct.line_map** %5, align 8
  %107 = call i32 @MAIN_FILE_P(%struct.line_map* %106)
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 5
  %113 = load %struct.TYPE_26__*, %struct.TYPE_26__** %112, align 8
  %114 = load %struct.line_map*, %struct.line_map** %5, align 8
  %115 = call %struct.line_map* @INCLUDED_FROM(%struct.TYPE_26__* %113, %struct.line_map* %114)
  store %struct.line_map* %115, %struct.line_map** %5, align 8
  br label %105

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %89
  %118 = load %struct.line_map*, %struct.line_map** %5, align 8
  %119 = getelementptr inbounds %struct.line_map, %struct.line_map* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  store i8* %120, i8** %16, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = call i8* @strlen(i8* %121)
  %123 = ptrtoint i8* %122 to i32
  store i32 %123, i32* %15, align 4
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %125 = load i32, i32* %15, align 4
  %126 = mul i32 %125, 2
  %127 = add i32 %126, 3
  %128 = call i8* @_cpp_unaligned_alloc(%struct.TYPE_23__* %124, i32 %127)
  store i8* %128, i8** %17, align 8
  %129 = load i8*, i8** %17, align 8
  store i8* %129, i8** %6, align 8
  %130 = load i8*, i8** %17, align 8
  store i8 34, i8* %130, align 1
  %131 = load i8*, i8** %17, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 1
  %133 = load i8*, i8** %16, align 8
  %134 = load i32, i32* %15, align 4
  %135 = call i8* @cpp_quote_string(i8* %132, i8* %133, i32 %134)
  store i8* %135, i8** %17, align 8
  %136 = load i8*, i8** %17, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %17, align 8
  store i8 34, i8* %136, align 1
  %138 = load i8*, i8** %17, align 8
  store i8 0, i8* %138, align 1
  br label %288

139:                                              ; preds = %2
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 5
  %142 = load %struct.TYPE_26__*, %struct.TYPE_26__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = sub nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %288

146:                                              ; preds = %2
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 5
  %149 = load %struct.TYPE_26__*, %struct.TYPE_26__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %149, i32 0, i32 2
  %151 = load %struct.line_map*, %struct.line_map** %150, align 8
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 5
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = sub nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.line_map, %struct.line_map* %151, i64 %158
  store %struct.line_map* %159, %struct.line_map** %5, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %161 = load i32, i32* @traditional, align 4
  %162 = call i32 @CPP_OPTION(%struct.TYPE_23__* %160, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %146
  %165 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %165, i32 0, i32 5
  %167 = load %struct.TYPE_26__*, %struct.TYPE_26__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %7, align 4
  br label %177

170:                                              ; preds = %146
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_20__*, %struct.TYPE_20__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %173, i64 -1
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %7, align 4
  br label %177

177:                                              ; preds = %170, %164
  %178 = load %struct.line_map*, %struct.line_map** %5, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @SOURCE_LINE(%struct.line_map* %178, i32 %179)
  store i32 %180, i32* %7, align 4
  br label %288

181:                                              ; preds = %2
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %183 = call i32 @cpp_in_system_header(%struct.TYPE_23__* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 0, i32* %7, align 4
  br label %187

186:                                              ; preds = %181
  store i32 1, i32* %7, align 4
  br label %187

187:                                              ; preds = %186, %185
  br label %288

188:                                              ; preds = %2, %2
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = icmp eq i8* %191, null
  br i1 %192, label %193, label %253

193:                                              ; preds = %188
  store %struct.tm* null, %struct.tm** %19, align 8
  store i32 0, i32* @errno, align 4
  %194 = call i32 @time(i32* null)
  store i32 %194, i32* %18, align 4
  %195 = load i32, i32* %18, align 4
  %196 = icmp ne i32 %195, -1
  br i1 %196, label %200, label %197

197:                                              ; preds = %193
  %198 = load i32, i32* @errno, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %197, %193
  %201 = call %struct.tm* @localtime(i32* %18)
  store %struct.tm* %201, %struct.tm** %19, align 8
  br label %202

202:                                              ; preds = %200, %197
  %203 = load %struct.tm*, %struct.tm** %19, align 8
  %204 = icmp ne %struct.tm* %203, null
  br i1 %204, label %205, label %244

205:                                              ; preds = %202
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %207 = call i8* @_cpp_unaligned_alloc(%struct.TYPE_23__* %206, i32 14)
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 0
  store i8* %207, i8** %209, align 8
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load i8**, i8*** @monthnames, align 8
  %214 = load %struct.tm*, %struct.tm** %19, align 8
  %215 = getelementptr inbounds %struct.tm, %struct.tm* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = getelementptr inbounds i8*, i8** %213, i64 %216
  %218 = load i8*, i8** %217, align 8
  %219 = load %struct.tm*, %struct.tm** %19, align 8
  %220 = getelementptr inbounds %struct.tm, %struct.tm* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.tm*, %struct.tm** %19, align 8
  %223 = getelementptr inbounds %struct.tm, %struct.tm* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, 1900
  %226 = call i32 (i8*, i8*, ...) @sprintf(i8* %212, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %218, i32 %221, i32 %225)
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %228 = call i8* @_cpp_unaligned_alloc(%struct.TYPE_23__* %227, i32 11)
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 1
  store i8* %228, i8** %230, align 8
  %231 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = load %struct.tm*, %struct.tm** %19, align 8
  %235 = getelementptr inbounds %struct.tm, %struct.tm* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.tm*, %struct.tm** %19, align 8
  %238 = getelementptr inbounds %struct.tm, %struct.tm* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.tm*, %struct.tm** %19, align 8
  %241 = getelementptr inbounds %struct.tm, %struct.tm* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 4
  %243 = call i32 (i8*, i8*, ...) @sprintf(i8* %233, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %236, i32 %239, i32 %242)
  br label %252

244:                                              ; preds = %202
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %246 = load i32, i32* @CPP_DL_WARNING, align 4
  %247 = call i32 @cpp_errno(%struct.TYPE_23__* %245, i32 %246, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 0
  store i8* bitcast ([14 x i32]* @.str.6 to i8*), i8** %249, align 8
  %250 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %250, i32 0, i32 1
  store i8* bitcast ([11 x i32]* @.str.7 to i8*), i8** %251, align 8
  br label %252

252:                                              ; preds = %244, %205
  br label %253

253:                                              ; preds = %252, %188
  %254 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = icmp eq i32 %257, 134
  br i1 %258, label %259, label %263

259:                                              ; preds = %253
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  store i8* %262, i8** %6, align 8
  br label %267

263:                                              ; preds = %253
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %264, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  store i8* %266, i8** %6, align 8
  br label %267

267:                                              ; preds = %263, %259
  br label %288

268:                                              ; preds = %2
  %269 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %270 = load i32, i32* @directives_only, align 4
  %271 = call i32 @CPP_OPTION(%struct.TYPE_23__* %269, i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %283

273:                                              ; preds = %268
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 3
  %276 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %283

279:                                              ; preds = %273
  %280 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %281 = load i32, i32* @CPP_DL_ERROR, align 4
  %282 = call i32 (%struct.TYPE_23__*, i32, i8*, ...) @cpp_error(%struct.TYPE_23__* %280, i32 %281, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.8, i64 0, i64 0))
  br label %283

283:                                              ; preds = %279, %273, %268
  %284 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 8
  store i32 %286, i32* %7, align 4
  br label %288

288:                                              ; preds = %283, %267, %187, %177, %139, %117, %85, %24
  %289 = load i8*, i8** %6, align 8
  %290 = icmp eq i8* %289, null
  br i1 %290, label %291, label %297

291:                                              ; preds = %288
  %292 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %293 = call i8* @_cpp_unaligned_alloc(%struct.TYPE_23__* %292, i32 21)
  store i8* %293, i8** %6, align 8
  %294 = load i8*, i8** %6, align 8
  %295 = load i32, i32* %7, align 4
  %296 = call i32 (i8*, i8*, ...) @sprintf(i8* %294, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32 %295)
  br label %297

297:                                              ; preds = %291, %288
  %298 = load i8*, i8** %6, align 8
  ret i8* %298
}

declare dso_local i32 @cpp_error(%struct.TYPE_23__*, i32, i8*, ...) #1

declare dso_local i32 @NODE_NAME(%struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_25__* @cpp_get_buffer(%struct.TYPE_23__*) #1

declare dso_local %struct._cpp_file* @cpp_get_file(%struct.TYPE_25__*) #1

declare dso_local %struct.stat* @_cpp_get_file_stat(%struct._cpp_file*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i8* @asctime(%struct.tm*) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i8* @_cpp_unaligned_alloc(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @cpp_errno(%struct.TYPE_23__*, i32, i8*) #1

declare dso_local %struct.line_map* @linemap_lookup(%struct.TYPE_26__*, i32) #1

declare dso_local i32 @MAIN_FILE_P(%struct.line_map*) #1

declare dso_local %struct.line_map* @INCLUDED_FROM(%struct.TYPE_26__*, %struct.line_map*) #1

declare dso_local i8* @cpp_quote_string(i8*, i8*, i32) #1

declare dso_local i32 @CPP_OPTION(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @SOURCE_LINE(%struct.line_map*, i32) #1

declare dso_local i32 @cpp_in_system_header(%struct.TYPE_23__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

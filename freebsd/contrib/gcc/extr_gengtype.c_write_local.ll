; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_17__*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_17__*, %struct.TYPE_13__, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__*, %struct.TYPE_17__** }

@header_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"\0A/* Local pointer-walking routines.  */\0A\00", align 1
@GC_POINTED_TO = common dso_local global i64 0, align 8
@GC_MAYBE_POINTED_TO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"ptr_alias\00", align 1
@TYPE_STRUCT = common dso_local global i64 0, align 8
@TYPE_UNION = common dso_local global i64 0, align 8
@TYPE_LANG_STRUCT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"#define gt_pch_p_\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" gt_pch_p_\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"structure alias is not a structure\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"extern void gt_pch_p_\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"\0A    (void *, void *, gt_pointer_operator, void *);\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"warning: structure `%s' used but not defined\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_17__*)* @write_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_local(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca %struct.TYPE_17__**, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %12 = load i32, i32* @header_file, align 4
  %13 = call i32 @oprintf(i32 %12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  store %struct.TYPE_17__* %14, %struct.TYPE_17__** %5, align 8
  br label %15

15:                                               ; preds = %143, %2
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = icmp ne %struct.TYPE_17__* %16, null
  br i1 %17, label %18, label %147

18:                                               ; preds = %15
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GC_POINTED_TO, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GC_MAYBE_POINTED_TO, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %142

30:                                               ; preds = %24, %18
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %143

39:                                               ; preds = %30
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %43, align 8
  store %struct.TYPE_18__* %44, %struct.TYPE_18__** %6, align 8
  br label %45

45:                                               ; preds = %98, %39
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = icmp ne %struct.TYPE_18__* %46, null
  br i1 %47, label %48, label %102

48:                                               ; preds = %45
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @strcmp(i32 %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %97

54:                                               ; preds = %48
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %59, %struct.TYPE_17__** %7, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TYPE_STRUCT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %54
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @TYPE_UNION, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TYPE_LANG_STRUCT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %71, %65, %54
  %78 = load i32, i32* @header_file, align 4
  %79 = call i32 @oprintf(i32 %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %80 = load i32, i32* @header_file, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = call i32 @output_mangled_typename(i32 %80, %struct.TYPE_17__* %81)
  %83 = load i32, i32* @header_file, align 4
  %84 = call i32 @oprintf(i32 %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @header_file, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %87 = call i32 @output_mangled_typename(i32 %85, %struct.TYPE_17__* %86)
  %88 = load i32, i32* @header_file, align 4
  %89 = call i32 @oprintf(i32 %88, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %96

90:                                               ; preds = %71
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 2
  %95 = call i32 @error_at_line(%struct.TYPE_13__* %94, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %96

96:                                               ; preds = %90, %77
  br label %102

97:                                               ; preds = %48
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  store %struct.TYPE_18__* %101, %struct.TYPE_18__** %6, align 8
  br label %45

102:                                              ; preds = %96, %45
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = icmp ne %struct.TYPE_18__* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %143

106:                                              ; preds = %102
  %107 = load i32, i32* @header_file, align 4
  %108 = call i32 @oprintf(i32 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %109 = load i32, i32* @header_file, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %111 = call i32 @output_mangled_typename(i32 %109, %struct.TYPE_17__* %110)
  %112 = load i32, i32* @header_file, align 4
  %113 = call i32 @oprintf(i32 %112, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TYPE_LANG_STRUCT, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %106
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  store %struct.TYPE_17__* %124, %struct.TYPE_17__** %8, align 8
  br label %125

125:                                              ; preds = %132, %119
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %127 = icmp ne %struct.TYPE_17__* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %125
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %131 = call i32 @write_local_func_for_structure(%struct.TYPE_17__* %129, %struct.TYPE_17__* %130, %struct.TYPE_17__** null)
  br label %132

132:                                              ; preds = %128
  %133 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  store %struct.TYPE_17__* %135, %struct.TYPE_17__** %8, align 8
  br label %125

136:                                              ; preds = %125
  br label %141

137:                                              ; preds = %106
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %139 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %140 = call i32 @write_local_func_for_structure(%struct.TYPE_17__* %138, %struct.TYPE_17__* %139, %struct.TYPE_17__** null)
  br label %141

141:                                              ; preds = %137, %136
  br label %142

142:                                              ; preds = %141, %24
  br label %143

143:                                              ; preds = %142, %105, %38
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  store %struct.TYPE_17__* %146, %struct.TYPE_17__** %5, align 8
  br label %15

147:                                              ; preds = %15
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %148, %struct.TYPE_17__** %5, align 8
  br label %149

149:                                              ; preds = %223, %147
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %151 = icmp ne %struct.TYPE_17__* %150, null
  br i1 %151, label %152, label %227

152:                                              ; preds = %149
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @GC_POINTED_TO, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %222

158:                                              ; preds = %152
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %162, align 8
  store %struct.TYPE_17__** %163, %struct.TYPE_17__*** %9, align 8
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %167, align 8
  store %struct.TYPE_17__* %168, %struct.TYPE_17__** %10, align 8
  %169 = load i32, i32* @header_file, align 4
  %170 = call i32 @oprintf(i32 %169, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %171 = load i32, i32* @header_file, align 4
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %173 = call i32 @output_mangled_typename(i32 %171, %struct.TYPE_17__* %172)
  %174 = load i32, i32* @header_file, align 4
  %175 = call i32 @oprintf(i32 %174, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 3
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %191

183:                                              ; preds = %158
  %184 = load i32, i32* @stderr, align 4
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = load i8*, i8** %188, align 8
  %190 = call i32 @fprintf(i32 %184, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i8* %189)
  br label %223

191:                                              ; preds = %158
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @TYPE_LANG_STRUCT, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %216

197:                                              ; preds = %191
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_17__*, %struct.TYPE_17__** %201, align 8
  store %struct.TYPE_17__* %202, %struct.TYPE_17__** %11, align 8
  br label %203

203:                                              ; preds = %211, %197
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %205 = icmp ne %struct.TYPE_17__* %204, null
  br i1 %205, label %206, label %215

206:                                              ; preds = %203
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %209 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %210 = call i32 @write_local_func_for_structure(%struct.TYPE_17__* %207, %struct.TYPE_17__* %208, %struct.TYPE_17__** %209)
  br label %211

211:                                              ; preds = %206
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %213, align 8
  store %struct.TYPE_17__* %214, %struct.TYPE_17__** %11, align 8
  br label %203

215:                                              ; preds = %203
  br label %221

216:                                              ; preds = %191
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %219 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %220 = call i32 @write_local_func_for_structure(%struct.TYPE_17__* %217, %struct.TYPE_17__* %218, %struct.TYPE_17__** %219)
  br label %221

221:                                              ; preds = %216, %215
  br label %222

222:                                              ; preds = %221, %152
  br label %223

223:                                              ; preds = %222, %183
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %225, align 8
  store %struct.TYPE_17__* %226, %struct.TYPE_17__** %5, align 8
  br label %149

227:                                              ; preds = %149
  ret void
}

declare dso_local i32 @oprintf(i32, i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @output_mangled_typename(i32, %struct.TYPE_17__*) #1

declare dso_local i32 @error_at_line(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @write_local_func_for_structure(%struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__**) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

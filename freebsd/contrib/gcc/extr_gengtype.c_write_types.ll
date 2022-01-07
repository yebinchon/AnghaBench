; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_17__*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_17__*, %struct.TYPE_13__, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__*, %struct.TYPE_17__** }
%struct.write_types_data = type { i32, i32 }

@header_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"\0A/* %s*/\0A\00", align 1
@GC_POINTED_TO = common dso_local global i64 0, align 8
@GC_MAYBE_POINTED_TO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"#define gt_%s_\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"(X) do { \\\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"  if (X != NULL) gt_%sx_%s (X);\\\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"  } while (0)\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"ptr_alias\00", align 1
@TYPE_STRUCT = common dso_local global i64 0, align 8
@TYPE_UNION = common dso_local global i64 0, align 8
@TYPE_LANG_STRUCT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [29 x i8] c"#define gt_%sx_%s gt_%sx_%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"structure alias is not a structure\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"extern void gt_%sx_%s (void *);\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [46 x i8] c"warning: structure `%s' used but not defined\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"extern void gt_%s_\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" (void *);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_17__*, %struct.write_types_data*)* @write_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_types(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1, %struct.write_types_data* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.write_types_data*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__**, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store %struct.write_types_data* %2, %struct.write_types_data** %6, align 8
  %14 = load i32, i32* @header_file, align 4
  %15 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %16 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, ...) @oprintf(i32 %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %7, align 8
  br label %20

20:                                               ; preds = %203, %3
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %22 = icmp ne %struct.TYPE_17__* %21, null
  br i1 %22, label %23, label %207

23:                                               ; preds = %20
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GC_POINTED_TO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GC_MAYBE_POINTED_TO, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %202

35:                                               ; preds = %29, %23
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @GC_MAYBE_POINTED_TO, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %203

50:                                               ; preds = %41, %35
  %51 = load i32, i32* @header_file, align 4
  %52 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %53 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, ...) @oprintf(i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @header_file, align 4
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %58 = call i32 @output_mangled_typename(i32 %56, %struct.TYPE_17__* %57)
  %59 = load i32, i32* @header_file, align 4
  %60 = call i32 (i32, i8*, ...) @oprintf(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* @header_file, align 4
  %62 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %63 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i32, i8*, ...) @oprintf(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %64, i8* %69)
  %71 = load i32, i32* @header_file, align 4
  %72 = call i32 (i32, i8*, ...) @oprintf(i32 %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 3
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %8, align 8
  br label %78

78:                                               ; preds = %137, %50
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %80 = icmp ne %struct.TYPE_18__* %79, null
  br i1 %80, label %81, label %141

81:                                               ; preds = %78
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @strcmp(i32 %84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %136

87:                                               ; preds = %81
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %92, %struct.TYPE_17__** %9, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TYPE_STRUCT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %110, label %98

98:                                               ; preds = %87
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @TYPE_UNION, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TYPE_LANG_STRUCT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %129

110:                                              ; preds = %104, %98, %87
  %111 = load i32, i32* @header_file, align 4
  %112 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %113 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %121 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 (i32, i8*, ...) @oprintf(i32 %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i32 %114, i8* %119, i32 %122, i8* %127)
  br label %135

129:                                              ; preds = %104
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 2
  %134 = call i32 @error_at_line(%struct.TYPE_13__* %133, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  br label %135

135:                                              ; preds = %129, %110
  br label %141

136:                                              ; preds = %81
  br label %137

137:                                              ; preds = %136
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %139, align 8
  store %struct.TYPE_18__* %140, %struct.TYPE_18__** %8, align 8
  br label %78

141:                                              ; preds = %135, %78
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %143 = icmp ne %struct.TYPE_18__* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %141
  br label %203

145:                                              ; preds = %141
  %146 = load i32, i32* @header_file, align 4
  %147 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %148 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (i32, i8*, ...) @oprintf(i32 %146, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %149, i8* %154)
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %171

163:                                              ; preds = %145
  %164 = load i32, i32* @stderr, align 4
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = call i32 @fprintf(i32 %164, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* %169)
  br label %203

171:                                              ; preds = %145
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @TYPE_LANG_STRUCT, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %196

177:                                              ; preds = %171
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_17__*, %struct.TYPE_17__** %181, align 8
  store %struct.TYPE_17__* %182, %struct.TYPE_17__** %10, align 8
  br label %183

183:                                              ; preds = %191, %177
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %185 = icmp ne %struct.TYPE_17__* %184, null
  br i1 %185, label %186, label %195

186:                                              ; preds = %183
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %189 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %190 = call i32 @write_func_for_structure(%struct.TYPE_17__* %187, %struct.TYPE_17__* %188, %struct.TYPE_17__** null, %struct.write_types_data* %189)
  br label %191

191:                                              ; preds = %186
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %193, align 8
  store %struct.TYPE_17__* %194, %struct.TYPE_17__** %10, align 8
  br label %183

195:                                              ; preds = %183
  br label %201

196:                                              ; preds = %171
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %199 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %200 = call i32 @write_func_for_structure(%struct.TYPE_17__* %197, %struct.TYPE_17__* %198, %struct.TYPE_17__** null, %struct.write_types_data* %199)
  br label %201

201:                                              ; preds = %196, %195
  br label %202

202:                                              ; preds = %201, %29
  br label %203

203:                                              ; preds = %202, %163, %144, %49
  %204 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %205, align 8
  store %struct.TYPE_17__* %206, %struct.TYPE_17__** %7, align 8
  br label %20

207:                                              ; preds = %20
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_17__* %208, %struct.TYPE_17__** %7, align 8
  br label %209

209:                                              ; preds = %288, %207
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %211 = icmp ne %struct.TYPE_17__* %210, null
  br i1 %211, label %212, label %292

212:                                              ; preds = %209
  %213 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @GC_POINTED_TO, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %287

218:                                              ; preds = %212
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %222, align 8
  store %struct.TYPE_17__** %223, %struct.TYPE_17__*** %11, align 8
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  store %struct.TYPE_17__* %228, %struct.TYPE_17__** %12, align 8
  %229 = load i32, i32* @header_file, align 4
  %230 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %231 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i32 (i32, i8*, ...) @oprintf(i32 %229, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* @header_file, align 4
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %236 = call i32 @output_mangled_typename(i32 %234, %struct.TYPE_17__* %235)
  %237 = load i32, i32* @header_file, align 4
  %238 = call i32 (i32, i8*, ...) @oprintf(i32 %237, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = icmp eq i32* %244, null
  br i1 %245, label %246, label %254

246:                                              ; preds = %218
  %247 = load i32, i32* @stderr, align 4
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %250, i32 0, i32 0
  %252 = load i8*, i8** %251, align 8
  %253 = call i32 @fprintf(i32 %247, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i8* %252)
  br label %288

254:                                              ; preds = %218
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @TYPE_LANG_STRUCT, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %280

260:                                              ; preds = %254
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %264, align 8
  store %struct.TYPE_17__* %265, %struct.TYPE_17__** %13, align 8
  br label %266

266:                                              ; preds = %275, %260
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %268 = icmp ne %struct.TYPE_17__* %267, null
  br i1 %268, label %269, label %279

269:                                              ; preds = %266
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %272 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %11, align 8
  %273 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %274 = call i32 @write_func_for_structure(%struct.TYPE_17__* %270, %struct.TYPE_17__* %271, %struct.TYPE_17__** %272, %struct.write_types_data* %273)
  br label %275

275:                                              ; preds = %269
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 2
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %277, align 8
  store %struct.TYPE_17__* %278, %struct.TYPE_17__** %13, align 8
  br label %266

279:                                              ; preds = %266
  br label %286

280:                                              ; preds = %254
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %283 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %11, align 8
  %284 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %285 = call i32 @write_func_for_structure(%struct.TYPE_17__* %281, %struct.TYPE_17__* %282, %struct.TYPE_17__** %283, %struct.write_types_data* %284)
  br label %286

286:                                              ; preds = %280, %279
  br label %287

287:                                              ; preds = %286, %212
  br label %288

288:                                              ; preds = %287, %246
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i32 0, i32 2
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %290, align 8
  store %struct.TYPE_17__* %291, %struct.TYPE_17__** %7, align 8
  br label %209

292:                                              ; preds = %209
  ret void
}

declare dso_local i32 @oprintf(i32, i8*, ...) #1

declare dso_local i32 @output_mangled_typename(i32, %struct.TYPE_17__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @error_at_line(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @write_func_for_structure(%struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__**, %struct.write_types_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

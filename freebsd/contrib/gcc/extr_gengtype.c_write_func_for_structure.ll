; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_func_for_structure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_func_for_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_17__* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_24__* }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_24__ = type { i8*, i32, %struct.TYPE_24__* }
%struct.TYPE_17__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i8* }
%struct.write_types_data = type { i32, i32, i32 }
%struct.walk_type_data = type { i8**, i8*, i32, i32, %struct.TYPE_23__**, i32, %struct.TYPE_16__*, %struct.TYPE_24__*, %struct.TYPE_23__*, %struct.write_types_data*, i32 }

@NUM_PARAM = common dso_local global i32 0, align 4
@TYPE_POINTER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"chain_next\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"chain_prev\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"chain_prev without chain_next\00", align 1
@write_types_process_field = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"*x\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"not valid postage\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"(*x)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"void\0A\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"gt_%sx_%s\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"gt_%s_\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c" (void *x_p)\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"  %s %s * %sx = (%s %s *)x_p;\0A\00", align 1
@TYPE_UNION = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"const \00", align 1
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"  %s %s * xlimit = x;\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"  if (%s (x\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c", x, gt_%s_\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"))\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"  while (%s (xlimit\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c", xlimit, gt_%s_\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"   xlimit = (\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"*xlimit\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"  if (x != xlimit)\0A\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"    for (;;)\0A\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"      {\0A\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"        %s %s * const xprev = (\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"        if (xprev == NULL) break;\0A\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c"        x = xprev;\0A\00", align 1
@.str.33 = private unnamed_addr constant [25 x i8] c"        (void) %s (xprev\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c", xprev, gt_%s_\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"      }\0A\00", align 1
@.str.36 = private unnamed_addr constant [23 x i8] c"  while (x != xlimit)\0A\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"    {\0A\00", align 1
@.str.38 = private unnamed_addr constant [12 x i8] c"      x = (\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"    }\0A\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__**, %struct.write_types_data*)* @write_func_for_structure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_func_for_structure(%struct.TYPE_23__* %0, %struct.TYPE_23__* %1, %struct.TYPE_23__** %2, %struct.write_types_data* %3) #0 {
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__**, align 8
  %8 = alloca %struct.write_types_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.walk_type_data, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__** %2, %struct.TYPE_23__*** %7, align 8
  store %struct.write_types_data* %3, %struct.write_types_data** %8, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %21 = load i32, i32* @NUM_PARAM, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %10, align 4
  br label %23

23:                                               ; preds = %72, %4
  %24 = load i32, i32* %10, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %75

26:                                               ; preds = %23
  %27 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %28 = icmp ne %struct.TYPE_23__** %27, null
  br i1 %28, label %29, label %71

29:                                               ; preds = %26
  %30 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %30, i64 %32
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %33, align 8
  %35 = icmp ne %struct.TYPE_23__* %34, null
  br i1 %35, label %36, label %71

36:                                               ; preds = %29
  %37 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %37, i64 %39
  %41 = load %struct.TYPE_23__*, %struct.TYPE_23__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TYPE_POINTER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %36
  %47 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %47, i64 %49
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %53, align 8
  %55 = call i64 @UNION_OR_STRUCT_P(%struct.TYPE_17__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %46
  %58 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %58, i64 %60
  %62 = load %struct.TYPE_23__*, %struct.TYPE_23__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %9, align 8
  br label %71

71:                                               ; preds = %57, %46, %36, %29, %26
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %10, align 4
  br label %23

75:                                               ; preds = %23
  %76 = call i32 @memset(%struct.walk_type_data* %14, i32 0, i32 80)
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @get_output_file_with_visibility(i8* %77)
  %79 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_24__*, %struct.TYPE_24__** %83, align 8
  store %struct.TYPE_24__* %84, %struct.TYPE_24__** %13, align 8
  br label %85

85:                                               ; preds = %110, %75
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %87 = icmp ne %struct.TYPE_24__* %86, null
  br i1 %87, label %88, label %114

88:                                               ; preds = %85
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @strcmp(i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %11, align 8
  br label %109

98:                                               ; preds = %88
  %99 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @strcmp(i32 %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** %12, align 8
  br label %108

108:                                              ; preds = %104, %98
  br label %109

109:                                              ; preds = %108, %94
  br label %110

110:                                              ; preds = %109
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %112, align 8
  store %struct.TYPE_24__* %113, %struct.TYPE_24__** %13, align 8
  br label %85

114:                                              ; preds = %85
  %115 = load i8*, i8** %12, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i8*, i8** %11, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 2
  %125 = call i32 @error_at_line(%struct.TYPE_16__* %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %126

126:                                              ; preds = %120, %117, %114
  %127 = load i32, i32* @write_types_process_field, align 4
  %128 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 10
  store i32 %127, i32* %128, align 8
  %129 = load %struct.write_types_data*, %struct.write_types_data** %8, align 8
  %130 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 9
  store %struct.write_types_data* %129, %struct.write_types_data** %130, align 8
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %132 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 8
  store %struct.TYPE_23__* %131, %struct.TYPE_23__** %132, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %136, align 8
  %138 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 7
  store %struct.TYPE_24__* %137, %struct.TYPE_24__** %138, align 8
  %139 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 6
  store %struct.TYPE_16__* %142, %struct.TYPE_16__** %143, align 8
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 5
  store i32 %148, i32* %149, align 8
  %150 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %151 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 4
  store %struct.TYPE_23__** %150, %struct.TYPE_23__*** %151, align 8
  %152 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %154, align 8
  %155 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 0
  %156 = load i8**, i8*** %155, align 8
  %157 = getelementptr inbounds i8*, i8** %156, i64 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i8** %157, align 8
  %158 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 0
  %159 = load i8**, i8*** %158, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8** %160, align 8
  %161 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %161, align 8
  %162 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, i8*, ...) @oprintf(i32 %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %165 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i32, i8*, ...) @oprintf(i32 %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %168 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %169 = icmp eq %struct.TYPE_23__** %168, null
  br i1 %169, label %170, label %182

170:                                              ; preds = %126
  %171 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.write_types_data*, %struct.write_types_data** %8, align 8
  %174 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 (i32, i8*, ...) @oprintf(i32 %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 %175, i32 %180)
  br label %193

182:                                              ; preds = %126
  %183 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.write_types_data*, %struct.write_types_data** %8, align 8
  %186 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 (i32, i8*, ...) @oprintf(i32 %184, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32 %187)
  %189 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %192 = call i32 @output_mangled_typename(i32 %190, %struct.TYPE_23__* %191)
  br label %193

193:                                              ; preds = %182, %170
  %194 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i32, i8*, ...) @oprintf(i32 %195, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  %197 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i32, i8*, ...) @oprintf(i32 %198, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  %200 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @TYPE_UNION, align 8
  %206 = icmp eq i64 %204, %205
  %207 = zext i1 %206 to i64
  %208 = select i1 %206, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i8*, i8** %11, align 8
  %215 = icmp eq i8* %214, null
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0)
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @TYPE_UNION, align 8
  %222 = icmp eq i64 %220, %221
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (i32, i8*, ...) @oprintf(i32 %201, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i8* %208, i32 %213, i8* %217, i8* %224, i32 %229)
  %231 = load i8*, i8** %11, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %249

233:                                              ; preds = %193
  %234 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @TYPE_UNION, align 8
  %240 = icmp eq i64 %238, %239
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  %243 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %243, i32 0, i32 1
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i32 (i32, i8*, ...) @oprintf(i32 %235, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %242, i32 %247)
  br label %249

249:                                              ; preds = %233, %193
  %250 = load i8*, i8** %11, align 8
  %251 = icmp eq i8* %250, null
  br i1 %251, label %252, label %282

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.write_types_data*, %struct.write_types_data** %8, align 8
  %256 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = call i32 (i32, i8*, ...) @oprintf(i32 %254, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %257)
  %259 = load %struct.write_types_data*, %struct.write_types_data** %8, align 8
  %260 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %278

263:                                              ; preds = %252
  %264 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.write_types_data*, %struct.write_types_data** %8, align 8
  %267 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (i32, i8*, ...) @oprintf(i32 %265, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i64 0, i64 0), i32 %268)
  %270 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %273 = call i32 @output_mangled_typename(i32 %271, %struct.TYPE_23__* %272)
  %274 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %277 = call i32 @output_type_enum(i32 %275, %struct.TYPE_23__* %276)
  br label %278

278:                                              ; preds = %263, %252
  %279 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %280 = load i32, i32* %279, align 4
  %281 = call i32 (i32, i8*, ...) @oprintf(i32 %280, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  br label %400

282:                                              ; preds = %249
  %283 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.write_types_data*, %struct.write_types_data** %8, align 8
  %286 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = call i32 (i32, i8*, ...) @oprintf(i32 %284, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i32 %287)
  %289 = load %struct.write_types_data*, %struct.write_types_data** %8, align 8
  %290 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %308

293:                                              ; preds = %282
  %294 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.write_types_data*, %struct.write_types_data** %8, align 8
  %297 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 (i32, i8*, ...) @oprintf(i32 %295, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i32 %298)
  %300 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %301 = load i32, i32* %300, align 4
  %302 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %303 = call i32 @output_mangled_typename(i32 %301, %struct.TYPE_23__* %302)
  %304 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %307 = call i32 @output_type_enum(i32 %305, %struct.TYPE_23__* %306)
  br label %308

308:                                              ; preds = %293, %282
  %309 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %310 = load i32, i32* %309, align 4
  %311 = call i32 (i32, i8*, ...) @oprintf(i32 %310, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0))
  %312 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = call i32 (i32, i8*, ...) @oprintf(i32 %313, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0))
  %315 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 0
  %316 = load i8**, i8*** %315, align 8
  %317 = getelementptr inbounds i8*, i8** %316, i64 2
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8** %317, align 8
  %318 = load i8*, i8** %11, align 8
  %319 = call i32 @output_escaped_param(%struct.walk_type_data* %14, i8* %318, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %320 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %321 = load i32, i32* %320, align 4
  %322 = call i32 (i32, i8*, ...) @oprintf(i32 %321, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %323 = load i8*, i8** %12, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %396

325:                                              ; preds = %308
  %326 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = call i32 (i32, i8*, ...) @oprintf(i32 %327, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0))
  %329 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %330 = load i32, i32* %329, align 4
  %331 = call i32 (i32, i8*, ...) @oprintf(i32 %330, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  %332 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %333 = load i32, i32* %332, align 4
  %334 = call i32 (i32, i8*, ...) @oprintf(i32 %333, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0))
  %335 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @TYPE_UNION, align 8
  %341 = icmp eq i64 %339, %340
  %342 = zext i1 %341 to i64
  %343 = select i1 %341, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0)
  %344 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = call i32 (i32, i8*, ...) @oprintf(i32 %336, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0), i8* %343, i32 %348)
  %350 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 0
  %351 = load i8**, i8*** %350, align 8
  %352 = getelementptr inbounds i8*, i8** %351, i64 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %352, align 8
  %353 = load i8*, i8** %12, align 8
  %354 = call i32 @output_escaped_param(%struct.walk_type_data* %14, i8* %353, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %355 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = call i32 (i32, i8*, ...) @oprintf(i32 %356, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %358 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = call i32 (i32, i8*, ...) @oprintf(i32 %359, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.31, i64 0, i64 0))
  %361 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %362 = load i32, i32* %361, align 4
  %363 = call i32 (i32, i8*, ...) @oprintf(i32 %362, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0))
  %364 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.write_types_data*, %struct.write_types_data** %8, align 8
  %367 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = call i32 (i32, i8*, ...) @oprintf(i32 %365, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.33, i64 0, i64 0), i32 %368)
  %370 = load %struct.write_types_data*, %struct.write_types_data** %8, align 8
  %371 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %389

374:                                              ; preds = %325
  %375 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %376 = load i32, i32* %375, align 4
  %377 = load %struct.write_types_data*, %struct.write_types_data** %8, align 8
  %378 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = call i32 (i32, i8*, ...) @oprintf(i32 %376, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.34, i64 0, i64 0), i32 %379)
  %381 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %384 = call i32 @output_mangled_typename(i32 %382, %struct.TYPE_23__* %383)
  %385 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %388 = call i32 @output_type_enum(i32 %386, %struct.TYPE_23__* %387)
  br label %389

389:                                              ; preds = %374, %325
  %390 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %391 = load i32, i32* %390, align 4
  %392 = call i32 (i32, i8*, ...) @oprintf(i32 %391, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  %393 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %394 = load i32, i32* %393, align 4
  %395 = call i32 (i32, i8*, ...) @oprintf(i32 %394, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i64 0, i64 0))
  br label %396

396:                                              ; preds = %389, %308
  %397 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %398 = load i32, i32* %397, align 4
  %399 = call i32 (i32, i8*, ...) @oprintf(i32 %398, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.36, i64 0, i64 0))
  br label %400

400:                                              ; preds = %396, %278
  %401 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = call i32 (i32, i8*, ...) @oprintf(i32 %402, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0))
  %404 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 0
  %405 = load i8**, i8*** %404, align 8
  %406 = getelementptr inbounds i8*, i8** %405, i64 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %406, align 8
  %407 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 2
  store i32 6, i32* %407, align 8
  %408 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %409 = call i32 @walk_type(%struct.TYPE_23__* %408, %struct.walk_type_data* %14)
  %410 = load i8*, i8** %11, align 8
  %411 = icmp ne i8* %410, null
  br i1 %411, label %412, label %421

412:                                              ; preds = %400
  %413 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %414 = load i32, i32* %413, align 4
  %415 = call i32 (i32, i8*, ...) @oprintf(i32 %414, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.38, i64 0, i64 0))
  %416 = load i8*, i8** %11, align 8
  %417 = call i32 @output_escaped_param(%struct.walk_type_data* %14, i8* %416, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %418 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %419 = load i32, i32* %418, align 4
  %420 = call i32 (i32, i8*, ...) @oprintf(i32 %419, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i64 0, i64 0))
  br label %421

421:                                              ; preds = %412, %400
  %422 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %423 = load i32, i32* %422, align 4
  %424 = call i32 (i32, i8*, ...) @oprintf(i32 %423, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0))
  %425 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %14, i32 0, i32 3
  %426 = load i32, i32* %425, align 4
  %427 = call i32 (i32, i8*, ...) @oprintf(i32 %426, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  ret void
}

declare dso_local i64 @UNION_OR_STRUCT_P(%struct.TYPE_17__*) #1

declare dso_local i32 @memset(%struct.walk_type_data*, i32, i32) #1

declare dso_local i32 @get_output_file_with_visibility(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @error_at_line(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @oprintf(i32, i8*, ...) #1

declare dso_local i32 @output_mangled_typename(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @output_type_enum(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @output_escaped_param(%struct.walk_type_data*, i8*, i8*) #1

declare dso_local i32 @walk_type(%struct.TYPE_23__*, %struct.walk_type_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_local_func_for_structure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_local_func_for_structure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_14__* }
%struct.TYPE_19__ = type { i32, i32, %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i8* }
%struct.TYPE_14__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i8* }
%struct.walk_type_data = type { i8**, i8*, i32, i32, i32, %struct.TYPE_21__**, i32, %struct.TYPE_18__*, i32, i32 }

@NUM_PARAM = common dso_local global i32 0, align 4
@TYPE_POINTER = common dso_local global i64 0, align 8
@write_types_local_process_field = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"*x\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"not valid postage\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"(*x)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"void\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"gt_pch_p_\00", align 1
@.str.7 = private unnamed_addr constant [122 x i8] c" (ATTRIBUTE_UNUSED void *this_obj,\0A\09void *x_p,\0A\09ATTRIBUTE_UNUSED gt_pointer_operator op,\0A\09ATTRIBUTE_UNUSED void *cookie)\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"  %s %s * const x ATTRIBUTE_UNUSED = (%s %s *)x_p;\0A\00", align 1
@TYPE_UNION = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [6 x i8] c"union\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*, %struct.TYPE_21__*, %struct.TYPE_21__**)* @write_local_func_for_structure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_local_func_for_structure(%struct.TYPE_21__* %0, %struct.TYPE_21__* %1, %struct.TYPE_21__** %2) #0 {
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_21__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.walk_type_data, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_21__** %2, %struct.TYPE_21__*** %6, align 8
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i32, i32* @NUM_PARAM, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %67, %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %18
  %22 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %23 = icmp ne %struct.TYPE_21__** %22, null
  br i1 %23, label %24, label %66

24:                                               ; preds = %21
  %25 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %25, i64 %27
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %30 = icmp ne %struct.TYPE_21__* %29, null
  br i1 %30, label %31, label %66

31:                                               ; preds = %24
  %32 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %32, i64 %34
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TYPE_POINTER, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %31
  %42 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %42, i64 %44
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = call i64 @UNION_OR_STRUCT_P(%struct.TYPE_14__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %41
  %53 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %53, i64 %55
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %7, align 8
  br label %66

66:                                               ; preds = %52, %41, %31, %24, %21
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %8, align 4
  br label %18

70:                                               ; preds = %18
  %71 = call i32 @memset(%struct.walk_type_data* %9, i32 0, i32 64)
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @get_output_file_with_visibility(i8* %72)
  %74 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 4
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* @write_types_local_process_field, align 4
  %76 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 9
  store i32 %75, i32* %76, align 4
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 8
  store i32 %81, i32* %82, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 7
  store %struct.TYPE_18__* %86, %struct.TYPE_18__** %87, align 8
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 6
  store i32 %92, i32* %93, align 8
  %94 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %6, align 8
  %95 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 5
  store %struct.TYPE_21__** %94, %struct.TYPE_21__*** %95, align 8
  %96 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 0
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %98, align 8
  %99 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 0
  %100 = load i8**, i8*** %99, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %101, align 8
  %102 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 0
  %103 = load i8**, i8*** %102, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 1
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** %104, align 8
  %105 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 0
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %107, align 8
  %108 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %108, align 8
  %109 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 2
  store i32 1, i32* %109, align 8
  %110 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i32, i8*, ...) @oprintf(i32 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %113 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, ...) @oprintf(i32 %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %116 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i32, i8*, ...) @oprintf(i32 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %119 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %122 = call i32 @output_mangled_typename(i32 %120, %struct.TYPE_21__* %121)
  %123 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = call i32 (i32, i8*, ...) @oprintf(i32 %124, i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str.7, i64 0, i64 0))
  %126 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i32, i8*, ...) @oprintf(i32 %127, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  %129 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TYPE_UNION, align 8
  %135 = icmp eq i64 %133, %134
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @TYPE_UNION, align 8
  %147 = icmp eq i64 %145, %146
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0)
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 (i32, i8*, ...) @oprintf(i32 %130, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0), i8* %137, i32 %142, i8* %149, i32 %154)
  %156 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 3
  store i32 2, i32* %156, align 4
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %158 = call i32 @walk_type(%struct.TYPE_21__* %157, %struct.walk_type_data* %9)
  %159 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %9, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (i32, i8*, ...) @oprintf(i32 %160, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i64 @UNION_OR_STRUCT_P(%struct.TYPE_14__*) #1

declare dso_local i32 @memset(%struct.walk_type_data*, i32, i32) #1

declare dso_local i32 @get_output_file_with_visibility(i8*) #1

declare dso_local i32 @oprintf(i32, i8*, ...) #1

declare dso_local i32 @output_mangled_typename(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @walk_type(%struct.TYPE_21__*, %struct.walk_type_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

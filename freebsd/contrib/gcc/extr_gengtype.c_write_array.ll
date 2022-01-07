; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gengtype.c_write_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.write_types_data = type { i32, i64 }
%struct.walk_type_data = type { i32, i8**, i8*, i32, i32, i32, i32*, i32, %struct.TYPE_4__*, %struct.write_types_data* }

@.str = private unnamed_addr constant [4 x i8] c"&%s\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"static void gt_%sa_%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"    (void *, void *, gt_pointer_operator, void *);\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"static void gt_%sa_%s (ATTRIBUTE_UNUSED void *this_obj,\0A\00", align 1
@.str.4 = private unnamed_addr constant [120 x i8] c"      ATTRIBUTE_UNUSED void *x_p,\0A      ATTRIBUTE_UNUSED gt_pointer_operator op,\0A      ATTRIBUTE_UNUSED void * cookie)\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@write_types_local_process_field = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"static void gt_%sa_%s (void *);\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"static void\0Agt_%sa_%s (ATTRIBUTE_UNUSED void *x_p)\0A\00", align 1
@write_types_process_field = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_5__*, %struct.write_types_data*)* @write_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_array(i32 %0, %struct.TYPE_5__* %1, %struct.write_types_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.write_types_data*, align 8
  %7 = alloca %struct.walk_type_data, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store %struct.write_types_data* %2, %struct.write_types_data** %6, align 8
  %9 = call i32 @memset(%struct.walk_type_data* %7, i32 0, i32 72)
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 5
  store i32 %10, i32* %11, align 8
  %12 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %13 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 9
  store %struct.write_types_data* %12, %struct.write_types_data** %13, align 8
  %14 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 0
  store i32 2, i32* %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 4
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @get_base_file_bitmap(i32 %25)
  %27 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 7
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 6
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @xasprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %31)
  store i8* %32, i8** %8, align 8
  %33 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 1
  %34 = load i8**, i8*** %33, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 3
  store i8* %32, i8** %35, align 8
  %36 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %37 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %3
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %43 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 (i32, i8*, ...) @oprintf(i32 %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %44, i8* %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 (i32, i8*, ...) @oprintf(i32 %49, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %53 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (i32, i8*, ...) @oprintf(i32 %51, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i64 %54, i8* %57)
  %59 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32, i8*, ...) @oprintf(i32 %60, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.4, i64 0, i64 0))
  %62 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @oprintf(i32 %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 2
  store i8* %67, i8** %68, align 8
  %69 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 1
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 2
  store i8* %67, i8** %71, align 8
  %72 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 1
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  store i8* %67, i8** %74, align 8
  %75 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 1
  %76 = load i8**, i8*** %75, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  store i8* %67, i8** %77, align 8
  %78 = load i32, i32* @write_types_local_process_field, align 4
  %79 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 3
  store i32 %78, i32* %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @walk_type(i32 %82, %struct.walk_type_data* %7)
  %84 = load i32, i32* %4, align 4
  %85 = call i32 (i32, i8*, ...) @oprintf(i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  br label %86

86:                                               ; preds = %40, %3
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 4
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %93 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i32, i8*, ...) @oprintf(i32 %91, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %94, i8* %97)
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.write_types_data*, %struct.write_types_data** %6, align 8
  %101 = getelementptr inbounds %struct.write_types_data, %struct.write_types_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (i32, i8*, ...) @oprintf(i32 %99, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %102, i8* %105)
  %107 = load i32, i32* %4, align 4
  %108 = call i32 (i32, i8*, ...) @oprintf(i32 %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 2
  store i8* %111, i8** %112, align 8
  %113 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 1
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 2
  store i8* %111, i8** %115, align 8
  %116 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 1
  %117 = load i8**, i8*** %116, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 1
  store i8* %111, i8** %118, align 8
  %119 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 1
  %120 = load i8**, i8*** %119, align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 0
  store i8* %111, i8** %121, align 8
  %122 = load i32, i32* @write_types_process_field, align 4
  %123 = getelementptr inbounds %struct.walk_type_data, %struct.walk_type_data* %7, i32 0, i32 3
  store i32 %122, i32* %123, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @walk_type(i32 %126, %struct.walk_type_data* %7)
  %128 = load i8*, i8** %8, align 8
  %129 = call i32 @free(i8* %128)
  %130 = load i32, i32* %4, align 4
  %131 = call i32 (i32, i8*, ...) @oprintf(i32 %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memset(%struct.walk_type_data*, i32, i32) #1

declare dso_local i32 @get_base_file_bitmap(i32) #1

declare dso_local i8* @xasprintf(i8*, i8*) #1

declare dso_local i32 @oprintf(i32, i8*, ...) #1

declare dso_local i32 @walk_type(i32, %struct.walk_type_data*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

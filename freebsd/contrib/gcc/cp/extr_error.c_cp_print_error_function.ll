; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_cp_print_error_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_error.c_cp_print_error_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_12__ = type { i32 }

@current_function_decl = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [17 x i8] c"At global scope:\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"In %s %qs:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, %struct.TYPE_12__*)* @cp_print_error_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_print_error_function(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = call i64 @diagnostic_last_function_changed(%struct.TYPE_13__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %66

11:                                               ; preds = %2
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @LOCATION_FILE(i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load i8*, i8** %6, align 8
  %25 = call i8* @file_name_as_prefix(i8* %24)
  br label %27

26:                                               ; preds = %11
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i8* [ %25, %23 ], [ null, %26 ]
  store i8* %28, i8** %7, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @pp_base_set_prefix(%struct.TYPE_14__* %31, i8* %32)
  %34 = load i32*, i32** @current_function_decl, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = call i32 @pp_base_string(%struct.TYPE_14__* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %50

41:                                               ; preds = %27
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  %45 = load i32*, i32** @current_function_decl, align 8
  %46 = call i32 @function_category(i32* %45)
  %47 = load i32*, i32** @current_function_decl, align 8
  %48 = call i32 @cxx_printable_name(i32* %47, i32 2)
  %49 = call i32 @pp_printf(%struct.TYPE_14__* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %48)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = call i32 @pp_base_newline(%struct.TYPE_14__* %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %56 = call i32 @diagnostic_set_last_function(%struct.TYPE_13__* %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  %60 = call i32 @pp_base_destroy_prefix(%struct.TYPE_14__* %59)
  %61 = load i8*, i8** %5, align 8
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  store i8* %61, i8** %65, align 8
  br label %66

66:                                               ; preds = %50, %2
  ret void
}

declare dso_local i64 @diagnostic_last_function_changed(%struct.TYPE_13__*) #1

declare dso_local i8* @LOCATION_FILE(i32) #1

declare dso_local i8* @file_name_as_prefix(i8*) #1

declare dso_local i32 @pp_base_set_prefix(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @pp_base_string(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @pp_printf(%struct.TYPE_14__*, i8*, i32, i32) #1

declare dso_local i32 @function_category(i32*) #1

declare dso_local i32 @cxx_printable_name(i32*, i32) #1

declare dso_local i32 @pp_base_newline(%struct.TYPE_14__*) #1

declare dso_local i32 @diagnostic_set_last_function(%struct.TYPE_13__*) #1

declare dso_local i32 @pp_base_destroy_prefix(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

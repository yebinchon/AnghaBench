; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-typeprint.c_c_type_print_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-typeprint.c_c_type_print_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.type = type { i32 }
%struct.ui_file = type { i32 }
%struct.field = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@language_cplus = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.ui_file*)* @c_type_print_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_type_print_args(%struct.type* %0, %struct.ui_file* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.field*, align 8
  %7 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %8 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %9 = call i32 @fprintf_filtered(%struct.ui_file* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.type*, %struct.type** %3, align 8
  %11 = call %struct.field* @TYPE_FIELDS(%struct.type* %10)
  store %struct.field* %11, %struct.field** %6, align 8
  %12 = load %struct.field*, %struct.field** %6, align 8
  %13 = icmp ne %struct.field* %12, null
  br i1 %13, label %14, label %62

14:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %15

15:                                               ; preds = %38, %14
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.type*, %struct.type** %3, align 8
  %18 = call i32 @TYPE_NFIELDS(%struct.type* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %15
  %21 = load %struct.field*, %struct.field** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.field, %struct.field* %21, i64 %23
  %25 = getelementptr inbounds %struct.field, %struct.field* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %28 = call i32 @c_print_type(i32 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %27, i32 -1, i32 0)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.type*, %struct.type** %3, align 8
  %31 = call i32 @TYPE_NFIELDS(%struct.type* %30)
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %20
  %34 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %35 = call i32 @fprintf_filtered(%struct.ui_file* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @wrap_here(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %33, %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %15

41:                                               ; preds = %15
  %42 = load %struct.type*, %struct.type** %3, align 8
  %43 = call i64 @TYPE_VARARGS(%struct.type* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %47 = call i32 @fprintf_filtered(%struct.ui_file* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %61

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @language_cplus, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %59 = call i32 @fprintf_filtered(%struct.ui_file* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %51, %48
  br label %61

61:                                               ; preds = %60, %45
  br label %72

62:                                               ; preds = %2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @language_cplus, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %70 = call i32 @fprintf_filtered(%struct.ui_file* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %62
  br label %72

72:                                               ; preds = %71, %61
  %73 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %74 = call i32 @fprintf_filtered(%struct.ui_file* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local %struct.field* @TYPE_FIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @c_print_type(i32, i8*, %struct.ui_file*, i32, i32) #1

declare dso_local i32 @wrap_here(i8*) #1

declare dso_local i64 @TYPE_VARARGS(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

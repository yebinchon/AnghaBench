; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-typeprint.c_cp_type_print_method_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_c-typeprint.c_cp_type_print_method_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.type = type { i32 }
%struct.ui_file = type { i32 }
%struct.field = type { i32 }

@language_cplus = common dso_local global i64 0, align 8
@DMGL_ANSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [6 x i8] c", ...\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"...\00", align 1
@current_language = common dso_local global %struct.TYPE_2__* null, align 8
@.str.5 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, i8*, i8*, i32, %struct.ui_file*)* @cp_type_print_method_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_type_print_method_args(%struct.type* %0, i8* %1, i8* %2, i32 %3, %struct.ui_file* %4) #0 {
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ui_file*, align 8
  %11 = alloca %struct.field*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ui_file* %4, %struct.ui_file** %10, align 8
  %15 = load %struct.type*, %struct.type** %6, align 8
  %16 = call %struct.field* @TYPE_FIELDS(%struct.type* %15)
  store %struct.field* %16, %struct.field** %11, align 8
  %17 = load %struct.type*, %struct.type** %6, align 8
  %18 = call i32 @TYPE_NFIELDS(%struct.type* %17)
  store i32 %18, i32* %12, align 4
  %19 = load %struct.type*, %struct.type** %6, align 8
  %20 = call i32 @TYPE_VARARGS(%struct.type* %19)
  store i32 %20, i32* %13, align 4
  %21 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* @language_cplus, align 8
  %24 = load i32, i32* @DMGL_ANSI, align 4
  %25 = call i32 @fprintf_symbol_filtered(%struct.ui_file* %21, i8* %22, i64 %23, i32 %24)
  %26 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* @language_cplus, align 8
  %29 = load i32, i32* @DMGL_ANSI, align 4
  %30 = call i32 @fprintf_symbol_filtered(%struct.ui_file* %26, i8* %27, i64 %28, i32 %29)
  %31 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %32 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %31)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 0, i32 1
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %5
  br label %41

41:                                               ; preds = %72, %40
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %73

45:                                               ; preds = %41
  %46 = load %struct.field*, %struct.field** %11, align 8
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds %struct.field, %struct.field* %46, i64 %49
  %51 = getelementptr inbounds %struct.field, %struct.field* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %54 = call i32 @type_print(i32 %52, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.ui_file* %53, i32 0)
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %45
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %63 = call i32 @fprintf_filtered(%struct.ui_file* %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %72

64:                                               ; preds = %58, %45
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64
  %69 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %70 = call i32 @fprintf_filtered(%struct.ui_file* %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %71

71:                                               ; preds = %68, %64
  br label %72

72:                                               ; preds = %71, %61
  br label %41

73:                                               ; preds = %41
  br label %91

74:                                               ; preds = %5
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %79 = call i32 @fprintf_filtered(%struct.ui_file* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %90

80:                                               ; preds = %74
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_language, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @language_cplus, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %88 = call i32 @fprintf_filtered(%struct.ui_file* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %80
  br label %90

90:                                               ; preds = %89, %77
  br label %91

91:                                               ; preds = %90, %73
  %92 = load %struct.ui_file*, %struct.ui_file** %10, align 8
  %93 = call i32 @fprintf_filtered(%struct.ui_file* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local %struct.field* @TYPE_FIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @TYPE_VARARGS(%struct.type*) #1

declare dso_local i32 @fprintf_symbol_filtered(%struct.ui_file*, i8*, i64, i32) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @type_print(i32, i8*, %struct.ui_file*, i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

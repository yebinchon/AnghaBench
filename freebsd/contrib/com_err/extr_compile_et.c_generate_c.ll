; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/com_err/extr_compile_et.c_generate_c.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/com_err/extr_compile_et.c_generate_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.error_code = type { i32, i8*, %struct.error_code* }

@cfn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"/* Generated from %s */\0A\00", align 1
@filename = common dso_local global i8* null, align 8
@id_str = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"/* %s */\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"#include <stddef.h>\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"#include <com_err.h>\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"#include \22%s\22\0A\00", align 1
@hfn = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [19 x i8] c"#define N_(x) (x)\0A\00", align 1
@.str.8 = private unnamed_addr constant [43 x i8] c"static const char *%s_error_strings[] = {\0A\00", align 1
@name = common dso_local global i8* null, align 8
@codes = common dso_local global %struct.error_code* null, align 8
@.str.9 = private unnamed_addr constant [39 x i8] c"\09/* %03d */ \22Reserved %s error (%d)\22,\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"\09/* %03d */ N_(\22%s\22),\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"\09NULL\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"#define num_errors %d\0A\00", align 1
@number = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [57 x i8] c"void initialize_%s_error_table_r(struct et_list **list)\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.16 = private unnamed_addr constant [88 x i8] c"    initialize_error_table_r(list, %s_error_strings, num_errors, ERROR_TABLE_BASE_%s);\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.18 = private unnamed_addr constant [38 x i8] c"void initialize_%s_error_table(void)\0A\00", align 1
@.str.19 = private unnamed_addr constant [74 x i8] c"    init_error_table(%s_error_strings, ERROR_TABLE_BASE_%s, num_errors);\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @generate_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_c() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.error_code*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @cfn, align 4
  %6 = call i32* @fopen(i32 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %111

10:                                               ; preds = %0
  %11 = load i32*, i32** %4, align 8
  %12 = load i8*, i8** @filename, align 8
  %13 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  %14 = load i8*, i8** @id_str, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32*, i32** %4, align 8
  %18 = load i8*, i8** @id_str, align 8
  %19 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  br label %20

20:                                               ; preds = %16, %10
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %27 = load i32*, i32** %4, align 8
  %28 = load i8*, i8** @hfn, align 8
  %29 = call i32 (i32*, i8*, ...) @fprintf(i32* %27, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 (i32*, i8*, ...) @fprintf(i32* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 (i32*, i8*, ...) @fprintf(i32* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32*, i32** %4, align 8
  %37 = load i8*, i8** @name, align 8
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.8, i64 0, i64 0), i8* %37)
  %39 = load %struct.error_code*, %struct.error_code** @codes, align 8
  store %struct.error_code* %39, %struct.error_code** %3, align 8
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %67, %20
  %41 = load %struct.error_code*, %struct.error_code** %3, align 8
  %42 = icmp ne %struct.error_code* %41, null
  br i1 %42, label %43, label %73

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %50, %43
  %45 = load i32, i32* %2, align 4
  %46 = load %struct.error_code*, %struct.error_code** %3, align 8
  %47 = getelementptr inbounds %struct.error_code, %struct.error_code* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %2, align 4
  %53 = load i8*, i8** @name, align 8
  %54 = load i32, i32* %2, align 4
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0), i32 %52, i8* %53, i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %2, align 4
  br label %44

58:                                               ; preds = %44
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.error_code*, %struct.error_code** %3, align 8
  %61 = getelementptr inbounds %struct.error_code, %struct.error_code* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.error_code*, %struct.error_code** %3, align 8
  %64 = getelementptr inbounds %struct.error_code, %struct.error_code* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i32 %62, i8* %65)
  br label %67

67:                                               ; preds = %58
  %68 = load %struct.error_code*, %struct.error_code** %3, align 8
  %69 = getelementptr inbounds %struct.error_code, %struct.error_code* %68, i32 0, i32 2
  %70 = load %struct.error_code*, %struct.error_code** %69, align 8
  store %struct.error_code* %70, %struct.error_code** %3, align 8
  %71 = load i32, i32* %2, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %2, align 4
  br label %40

73:                                               ; preds = %40
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 (i32*, i8*, ...) @fprintf(i32* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* @number, align 4
  %82 = call i32 (i32*, i8*, ...) @fprintf(i32* %80, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 (i32*, i8*, ...) @fprintf(i32* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32*, i32** %4, align 8
  %86 = load i8*, i8** @name, align 8
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %85, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0), i8* %86)
  %88 = load i32*, i32** %4, align 8
  %89 = call i32 (i32*, i8*, ...) @fprintf(i32* %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %90 = load i32*, i32** %4, align 8
  %91 = load i8*, i8** @name, align 8
  %92 = load i8*, i8** @name, align 8
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %90, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.16, i64 0, i64 0), i8* %91, i8* %92)
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32*, i32** %4, align 8
  %99 = load i8*, i8** @name, align 8
  %100 = call i32 (i32*, i8*, ...) @fprintf(i32* %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i64 0, i64 0), i8* %99)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %101, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0))
  %103 = load i32*, i32** %4, align 8
  %104 = load i8*, i8** @name, align 8
  %105 = load i8*, i8** @name, align 8
  %106 = call i32 (i32*, i8*, ...) @fprintf(i32* %103, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.19, i64 0, i64 0), i8* %104, i8* %105)
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 (i32*, i8*, ...) @fprintf(i32* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @fclose(i32* %109)
  store i32 0, i32* %1, align 4
  br label %111

111:                                              ; preds = %73, %9
  %112 = load i32, i32* %1, align 4
  ret i32 %112
}

declare dso_local i32* @fopen(i32, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

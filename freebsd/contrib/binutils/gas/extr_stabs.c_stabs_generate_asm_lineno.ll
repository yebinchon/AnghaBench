; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_stabs.c_stabs_generate_asm_lineno.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_stabs.c_stabs_generate_asm_lineno.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stabs_generate_asm_lineno.label_count = internal global i32 0, align 4
@stabs_generate_asm_lineno.prev_lineno = internal global i32 -1, align 4
@stabs_generate_asm_lineno.prev_file = internal global i8* null, align 8
@input_line_pointer = common dso_local global i8* null, align 8
@outputting_stabs_line_debug = common dso_local global i32 0, align 4
@N_SOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%sL%d\00", align 1
@FAKE_LABEL_NAME = common dso_local global i8* null, align 8
@in_dot_func_p = common dso_local global i64 0, align 8
@current_function_label = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"%d,0,%d,%s-%s\0A\00", align 1
@N_SLINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"%d,0,%d,%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stabs_generate_asm_lineno() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [30 x i8], align 16
  %6 = load i8*, i8** @input_line_pointer, align 8
  store i8* %6, i8** %1, align 8
  %7 = call i32 @as_where(i8** %2, i32* %3)
  %8 = load i8*, i8** @stabs_generate_asm_lineno.prev_file, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i8*, i8** %2, align 8
  %12 = call i8* @xstrdup(i8* %11)
  store i8* %12, i8** @stabs_generate_asm_lineno.prev_file, align 8
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* @stabs_generate_asm_lineno.prev_lineno, align 4
  br label %37

14:                                               ; preds = %0
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @stabs_generate_asm_lineno.prev_lineno, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i8*, i8** %2, align 8
  %20 = load i8*, i8** @stabs_generate_asm_lineno.prev_file, align 8
  %21 = call i64 @strcmp(i8* %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %75

24:                                               ; preds = %18, %14
  %25 = load i32, i32* %3, align 4
  store i32 %25, i32* @stabs_generate_asm_lineno.prev_lineno, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = load i8*, i8** @stabs_generate_asm_lineno.prev_file, align 8
  %28 = call i64 @strcmp(i8* %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i8*, i8** @stabs_generate_asm_lineno.prev_file, align 8
  %32 = call i32 @free(i8* %31)
  %33 = load i8*, i8** %2, align 8
  %34 = call i8* @xstrdup(i8* %33)
  store i8* %34, i8** @stabs_generate_asm_lineno.prev_file, align 8
  br label %35

35:                                               ; preds = %30, %24
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36, %10
  store i32 1, i32* @outputting_stabs_line_debug, align 4
  %38 = load i32, i32* @N_SOL, align 4
  %39 = load i8*, i8** %2, align 8
  %40 = call i32 @generate_asm_file(i32 %38, i8* %39)
  %41 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %42 = load i8*, i8** @FAKE_LABEL_NAME, align 8
  %43 = load i32, i32* @stabs_generate_asm_lineno.label_count, align 4
  %44 = call i32 (i8*, i8*, ...) @sprintf(i8* %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %42, i32 %43)
  %45 = load i32, i32* @stabs_generate_asm_lineno.label_count, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @stabs_generate_asm_lineno.label_count, align 4
  %47 = load i64, i64* @in_dot_func_p, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %37
  %50 = load i8*, i8** @current_function_label, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = add nsw i32 100, %51
  %53 = call i64 @alloca(i32 %52)
  %54 = inttoptr i64 %53 to i8*
  store i8* %54, i8** %4, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* @N_SLINE, align 4
  %57 = load i32, i32* %3, align 4
  %58 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %59 = load i8*, i8** @current_function_label, align 8
  %60 = call i32 (i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %56, i32 %57, i8* %58, i8* %59)
  br label %69

61:                                               ; preds = %37
  %62 = call i64 @alloca(i32 100)
  %63 = inttoptr i64 %62 to i8*
  store i8* %63, i8** %4, align 8
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* @N_SLINE, align 4
  %66 = load i32, i32* %3, align 4
  %67 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66, i8* %67)
  br label %69

69:                                               ; preds = %61, %49
  %70 = load i8*, i8** %4, align 8
  store i8* %70, i8** @input_line_pointer, align 8
  %71 = call i32 @s_stab(i8 signext 110)
  %72 = getelementptr inbounds [30 x i8], [30 x i8]* %5, i64 0, i64 0
  %73 = call i32 @colon(i8* %72)
  %74 = load i8*, i8** %1, align 8
  store i8* %74, i8** @input_line_pointer, align 8
  store i32 0, i32* @outputting_stabs_line_debug, align 4
  br label %75

75:                                               ; preds = %69, %23
  ret void
}

declare dso_local i32 @as_where(i8**, i32*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @generate_asm_file(i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @s_stab(i8 signext) #1

declare dso_local i32 @colon(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

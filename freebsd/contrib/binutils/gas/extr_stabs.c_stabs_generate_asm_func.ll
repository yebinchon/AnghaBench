; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_stabs.c_stabs_generate_asm_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_stabs.c_stabs_generate_asm_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stabs_generate_asm_func.void_emitted_p = internal global i32 0, align 4
@input_line_pointer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"\22void:t1=1\22,128,0,0,0\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"\22%s:F1\22,%d,0,%d,%s\00", align 1
@N_FUN = common dso_local global i32 0, align 4
@current_function_label = common dso_local global i32 0, align 4
@in_dot_func_p = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stabs_generate_asm_func(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** @input_line_pointer, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i32, i32* @stabs_generate_asm_func.void_emitted_p, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8** @input_line_pointer, align 8
  %13 = call i32 @s_stab(i8 signext 115)
  store i32 1, i32* @stabs_generate_asm_func.void_emitted_p, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = call i32 @as_where(i8** %7, i32* %8)
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @N_FUN, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add i32 %18, 1
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @asprintf(i8** %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %16, i32 %17, i32 %19, i8* %20)
  %22 = load i8*, i8** %6, align 8
  store i8* %22, i8** @input_line_pointer, align 8
  %23 = call i32 @s_stab(i8 signext 115)
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @free(i8* %24)
  %26 = load i8*, i8** %5, align 8
  store i8* %26, i8** @input_line_pointer, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @xstrdup(i8* %27)
  store i32 %28, i32* @current_function_label, align 4
  store i32 1, i32* @in_dot_func_p, align 4
  ret void
}

declare dso_local i32 @s_stab(i8 signext) #1

declare dso_local i32 @as_where(i8**, i32*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @xstrdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

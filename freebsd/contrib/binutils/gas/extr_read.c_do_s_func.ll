; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_do_s_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_read.c_do_s_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@do_s_func.current_name = internal global i8* null, align 8
@do_s_func.current_label = internal global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"missing .func\00", align 1
@debug_type = common dso_local global i64 0, align 8
@DEBUG_STABS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c".endfunc missing for previous .func\00", align 1
@input_line_pointer = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@stdoutput = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"%c%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @do_s_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_s_func(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i8*, i8** @do_s_func.current_name, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = call i32 @_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @as_bad(i32 %16)
  %18 = call i32 (...) @ignore_rest_of_line()
  br label %91

19:                                               ; preds = %12
  %20 = load i64, i64* @debug_type, align 8
  %21 = load i64, i64* @DEBUG_STABS, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i8*, i8** @do_s_func.current_name, align 8
  %25 = load i8*, i8** @do_s_func.current_label, align 8
  %26 = call i32 @stabs_generate_asm_endfunc(i8* %24, i8* %25)
  br label %27

27:                                               ; preds = %23, %19
  store i8* null, i8** @do_s_func.current_label, align 8
  store i8* null, i8** @do_s_func.current_name, align 8
  br label %89

28:                                               ; preds = %2
  %29 = load i8*, i8** @do_s_func.current_name, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @as_bad(i32 %32)
  %34 = call i32 (...) @ignore_rest_of_line()
  br label %91

35:                                               ; preds = %28
  %36 = load i8*, i8** @input_line_pointer, align 8
  store i8* %36, i8** %5, align 8
  %37 = call signext i8 (...) @get_symbol_end()
  store i8 %37, i8* %7, align 1
  %38 = load i8*, i8** %5, align 8
  %39 = call i8* @xstrdup(i8* %38)
  store i8* %39, i8** %5, align 8
  %40 = load i8, i8* %7, align 1
  %41 = load i8*, i8** @input_line_pointer, align 8
  store i8 %40, i8* %41, align 1
  %42 = call i32 (...) @SKIP_WHITESPACE()
  %43 = load i8*, i8** @input_line_pointer, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 44
  br i1 %46, label %47, label %68

47:                                               ; preds = %35
  %48 = load i8*, i8** %4, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 (i8**, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %51, i8* %52)
  br label %67

54:                                               ; preds = %47
  %55 = load i32, i32* @stdoutput, align 4
  %56 = call signext i8 @bfd_get_symbol_leading_char(i32 %55)
  store i8 %56, i8* %9, align 1
  %57 = load i8, i8* %9, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load i8, i8* %9, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8*, i8** %5, align 8
  %63 = call i32 (i8**, i8*, ...) @asprintf(i8** %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %61, i8* %62)
  br label %66

64:                                               ; preds = %54
  %65 = load i8*, i8** %5, align 8
  store i8* %65, i8** %6, align 8
  br label %66

66:                                               ; preds = %64, %59
  br label %67

67:                                               ; preds = %66, %50
  br label %78

68:                                               ; preds = %35
  %69 = load i8*, i8** @input_line_pointer, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** @input_line_pointer, align 8
  %71 = call i32 (...) @SKIP_WHITESPACE()
  %72 = load i8*, i8** @input_line_pointer, align 8
  store i8* %72, i8** %6, align 8
  %73 = call signext i8 (...) @get_symbol_end()
  store i8 %73, i8* %8, align 1
  %74 = load i8*, i8** %6, align 8
  %75 = call i8* @xstrdup(i8* %74)
  store i8* %75, i8** %6, align 8
  %76 = load i8, i8* %8, align 1
  %77 = load i8*, i8** @input_line_pointer, align 8
  store i8 %76, i8* %77, align 1
  br label %78

78:                                               ; preds = %68, %67
  %79 = load i64, i64* @debug_type, align 8
  %80 = load i64, i64* @DEBUG_STABS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @stabs_generate_asm_func(i8* %83, i8* %84)
  br label %86

86:                                               ; preds = %82, %78
  %87 = load i8*, i8** %5, align 8
  store i8* %87, i8** @do_s_func.current_name, align 8
  %88 = load i8*, i8** %6, align 8
  store i8* %88, i8** @do_s_func.current_label, align 8
  br label %89

89:                                               ; preds = %86, %27
  %90 = call i32 (...) @demand_empty_rest_of_line()
  br label %91

91:                                               ; preds = %89, %31, %15
  ret void
}

declare dso_local i32 @as_bad(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @ignore_rest_of_line(...) #1

declare dso_local i32 @stabs_generate_asm_endfunc(i8*, i8*) #1

declare dso_local signext i8 @get_symbol_end(...) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @SKIP_WHITESPACE(...) #1

declare dso_local i32 @asprintf(i8**, i8*, ...) #1

declare dso_local signext i8 @bfd_get_symbol_leading_char(i32) #1

declare dso_local i32 @stabs_generate_asm_func(i8*, i8*) #1

declare dso_local i32 @demand_empty_rest_of_line(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

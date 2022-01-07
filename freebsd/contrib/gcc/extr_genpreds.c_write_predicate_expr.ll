; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_write_predicate_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genpreds.c_write_predicate_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c") && (\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c") || (\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"!(\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c") ? (\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c") : (\00", align 1
@VOIDmode = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [14 x i8] c"%s (op, mode)\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s (op, %smode)\00", align 1
@mode_name = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @write_predicate_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_predicate_expr(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @GET_CODE(i32 %3)
  switch i32 %4, label %71 [
    i32 134, label %5
    i32 132, label %14
    i32 128, label %23
    i32 133, label %29
    i32 130, label %42
    i32 131, label %61
    i32 129, label %67
  ]

5:                                                ; preds = %1
  %6 = call i32 @putchar(i8 signext 40)
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @XEXP(i32 %7, i32 0)
  call void @write_predicate_expr(i32 %8)
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @XEXP(i32 %11, i32 1)
  call void @write_predicate_expr(i32 %12)
  %13 = call i32 @putchar(i8 signext 41)
  br label %73

14:                                               ; preds = %1
  %15 = call i32 @putchar(i8 signext 40)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @XEXP(i32 %16, i32 0)
  call void @write_predicate_expr(i32 %17)
  %18 = load i32, i32* @stdout, align 4
  %19 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @XEXP(i32 %20, i32 1)
  call void @write_predicate_expr(i32 %21)
  %22 = call i32 @putchar(i8 signext 41)
  br label %73

23:                                               ; preds = %1
  %24 = load i32, i32* @stdout, align 4
  %25 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %2, align 4
  %27 = call i32 @XEXP(i32 %26, i32 0)
  call void @write_predicate_expr(i32 %27)
  %28 = call i32 @putchar(i8 signext 41)
  br label %73

29:                                               ; preds = %1
  %30 = call i32 @putchar(i8 signext 40)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @XEXP(i32 %31, i32 0)
  call void @write_predicate_expr(i32 %32)
  %33 = load i32, i32* @stdout, align 4
  %34 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @XEXP(i32 %35, i32 1)
  call void @write_predicate_expr(i32 %36)
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @XEXP(i32 %39, i32 2)
  call void @write_predicate_expr(i32 %40)
  %41 = call i32 @putchar(i8 signext 41)
  br label %73

42:                                               ; preds = %1
  %43 = load i32, i32* %2, align 4
  %44 = call i64 @GET_MODE(i32 %43)
  %45 = load i64, i64* @VOIDmode, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* %2, align 4
  %49 = call i8* @XSTR(i32 %48, i32 1)
  %50 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %49)
  br label %60

51:                                               ; preds = %42
  %52 = load i32, i32* %2, align 4
  %53 = call i8* @XSTR(i32 %52, i32 1)
  %54 = load i8**, i8*** @mode_name, align 8
  %55 = load i32, i32* %2, align 4
  %56 = call i64 @GET_MODE(i32 %55)
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %53, i8* %58)
  br label %60

60:                                               ; preds = %51, %47
  br label %73

61:                                               ; preds = %1
  %62 = load i32, i32* %2, align 4
  %63 = call i8* @XSTR(i32 %62, i32 1)
  %64 = load i32, i32* %2, align 4
  %65 = call i8* @XSTR(i32 %64, i32 0)
  %66 = call i32 @write_match_code(i8* %63, i8* %65)
  br label %73

67:                                               ; preds = %1
  %68 = load i32, i32* %2, align 4
  %69 = call i8* @XSTR(i32 %68, i32 0)
  %70 = call i32 @print_c_condition(i8* %69)
  br label %73

71:                                               ; preds = %1
  %72 = call i32 (...) @gcc_unreachable()
  br label %73

73:                                               ; preds = %71, %67, %61, %60, %29, %23, %14, %5
  ret void
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @XSTR(i32, i32) #1

declare dso_local i32 @write_match_code(i8*, i8*) #1

declare dso_local i32 @print_c_condition(i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

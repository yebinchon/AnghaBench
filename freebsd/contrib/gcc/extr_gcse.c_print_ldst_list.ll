; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_print_ldst_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_print_ldst_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ls_expr = type { i32, i64, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"LDST list: \0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"  Pattern (%3d): \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"\0A\09 Loads : \00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"\0A\09Stores : \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @print_ldst_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_ldst_list(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ls_expr*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 (i32*, i8*, ...) @fprintf(i32* %4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %6 = call %struct.ls_expr* (...) @first_ls_expr()
  store %struct.ls_expr* %6, %struct.ls_expr** %3, align 8
  br label %7

7:                                                ; preds = %55, %1
  %8 = load %struct.ls_expr*, %struct.ls_expr** %3, align 8
  %9 = icmp ne %struct.ls_expr* %8, null
  br i1 %9, label %10, label %58

10:                                               ; preds = %7
  %11 = load i32*, i32** %2, align 8
  %12 = load %struct.ls_expr*, %struct.ls_expr** %3, align 8
  %13 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i32*, i8*, ...) @fprintf(i32* %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load %struct.ls_expr*, %struct.ls_expr** %3, align 8
  %18 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @print_rtl(i32* %16, i64 %19)
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 (i32*, i8*, ...) @fprintf(i32* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %23 = load %struct.ls_expr*, %struct.ls_expr** %3, align 8
  %24 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %10
  %28 = load i32*, i32** %2, align 8
  %29 = load %struct.ls_expr*, %struct.ls_expr** %3, align 8
  %30 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @print_rtl(i32* %28, i64 %31)
  br label %36

33:                                               ; preds = %10
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %39 = load %struct.ls_expr*, %struct.ls_expr** %3, align 8
  %40 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load i32*, i32** %2, align 8
  %45 = load %struct.ls_expr*, %struct.ls_expr** %3, align 8
  %46 = getelementptr inbounds %struct.ls_expr, %struct.ls_expr* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @print_rtl(i32* %44, i64 %47)
  br label %52

49:                                               ; preds = %36
  %50 = load i32*, i32** %2, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52
  %56 = load %struct.ls_expr*, %struct.ls_expr** %3, align 8
  %57 = call %struct.ls_expr* @next_ls_expr(%struct.ls_expr* %56)
  store %struct.ls_expr* %57, %struct.ls_expr** %3, align 8
  br label %7

58:                                               ; preds = %7
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local %struct.ls_expr* @first_ls_expr(...) #1

declare dso_local i32 @print_rtl(i32*, i64) #1

declare dso_local %struct.ls_expr* @next_ls_expr(%struct.ls_expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

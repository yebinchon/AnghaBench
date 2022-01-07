; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genflags.c_gen_macro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genflags.c_gen_macro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"#define GEN_\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%c, \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"%c) gen_%s (\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"(%c), \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"(%c))\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @gen_macro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_macro(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sle i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @gcc_assert(i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %32, %3
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %17
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = call signext i8 @TOUPPER(i8 signext %29)
  %31 = call i32 @putchar(i8 signext %30)
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %17

35:                                               ; preds = %17
  %36 = call i32 @putchar(i8 signext 40)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %46, %35
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 1
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 65
  %45 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %37

49:                                               ; preds = %37
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 65
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %51, i8* %52)
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %63, %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 65
  %62 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %54

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 65
  %69 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local signext i8 @TOUPPER(i8 signext) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

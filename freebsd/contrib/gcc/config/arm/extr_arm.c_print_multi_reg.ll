; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_print_multi_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_print_multi_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c", {\00", align 1
@LAST_ARM_REGNUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%r\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i64)* @print_multi_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_multi_reg(i32* %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @fputc(i8 signext 9, i32* %12)
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @asm_fprintf(i32* %14, i8* %15, i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %18)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %43, %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @LAST_ARM_REGNUM, align 4
  %23 = icmp ule i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load i64, i64* %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 1, %26
  %28 = sext i32 %27 to i64
  %29 = and i64 %25, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @fprintf(i32* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @asm_fprintf(i32* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @TRUE, align 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %37, %24
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %20

46:                                               ; preds = %20
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @fprintf(i32* %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fputc(i8 signext, i32*) #1

declare dso_local i32 @asm_fprintf(i32*, i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

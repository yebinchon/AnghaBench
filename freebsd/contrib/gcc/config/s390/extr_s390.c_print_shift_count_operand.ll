; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_print_shift_count_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_print_shift_count_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG = common dso_local global i64 0, align 8
@FIRST_PSEUDO_REGISTER = common dso_local global i64 0, align 8
@ADDR_REGS = common dso_local global i64 0, align 8
@HOST_WIDE_INT_PRINT_DEC = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@reg_names = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64)* @print_shift_count_operand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_shift_count_operand(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @s390_decompose_shift_count(i64 %7, i64* %6, i32* %5)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = call i32 (...) @gcc_unreachable()
  br label %12

12:                                               ; preds = %10, %2
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %35

15:                                               ; preds = %12
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @GET_CODE(i64 %16)
  %18 = load i64, i64* @REG, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @REGNO(i64 %22)
  %24 = load i64, i64* @FIRST_PSEUDO_REGISTER, align 8
  %25 = icmp ult i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @gcc_assert(i32 %26)
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @REGNO(i64 %28)
  %30 = call i64 @REGNO_REG_CLASS(i64 %29)
  %31 = load i64, i64* @ADDR_REGS, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @gcc_assert(i32 %33)
  br label %35

35:                                               ; preds = %15, %12
  %36 = load i32*, i32** %3, align 8
  %37 = load i8*, i8** @HOST_WIDE_INT_PRINT_DEC, align 8
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 4095
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* %37, i32 %39)
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load i32*, i32** %3, align 8
  %45 = load i8**, i8*** @reg_names, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @REGNO(i64 %46)
  %48 = getelementptr inbounds i8*, i8** %45, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %43, %35
  ret void
}

declare dso_local i32 @s390_decompose_shift_count(i64, i64*, i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i64 @REGNO_REG_CLASS(i64) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

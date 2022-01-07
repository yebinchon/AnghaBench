; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_macho_lo_sum_memory_operand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_macho_lo_sum_memory_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_MACHO = common dso_local global i32 0, align 4
@flag_pic = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@MEM = common dso_local global i64 0, align 8
@LO_SUM = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @macho_lo_sum_memory_operand(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @TARGET_MACHO, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = load i32, i32* @flag_pic, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @SImode, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @GET_CODE(i32 %16)
  %18 = load i64, i64* @MEM, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %11, %8, %2
  store i32 0, i32* %3, align 4
  br label %47

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @XEXP(i32 %22, i32 0)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @GET_CODE(i32 %24)
  %26 = load i64, i64* @LO_SUM, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %47

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @XEXP(i32 %30, i32 0)
  %32 = call i64 @GET_CODE(i32 %31)
  %33 = load i64, i64* @REG, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %47

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @XEXP(i32 %37, i32 0)
  %39 = call i32 @INT_REG_OK_FOR_BASE_P(i32 %38, i32 0)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %47

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @XEXP(i32 %43, i32 1)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @CONSTANT_P(i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %42, %41, %35, %28, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @INT_REG_OK_FOR_BASE_P(i32, i32) #1

declare dso_local i32 @CONSTANT_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

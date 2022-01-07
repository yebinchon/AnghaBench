; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_dwarf_register_span.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_rs6000_dwarf_register_span.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_SPE = common dso_local global i64 0, align 8
@TARGET_E500_DOUBLE = common dso_local global i64 0, align 8
@DFmode = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@BYTES_BIG_ENDIAN = common dso_local global i64 0, align 8
@SImode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rs6000_dwarf_register_span to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_dwarf_register_span(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @TARGET_SPE, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @GET_MODE(i32 %8)
  %10 = call i64 @SPE_VECTOR_MODE(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = load i64, i64* @TARGET_E500_DOUBLE, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @GET_MODE(i32 %16)
  %18 = load i64, i64* @DFmode, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %7
  br label %23

21:                                               ; preds = %15, %12, %1
  %22 = load i32, i32* @NULL_RTX, align 4
  store i32 %22, i32* %2, align 4
  br label %50

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @REGNO(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @VOIDmode, align 4
  %27 = load i64, i64* @BYTES_BIG_ENDIAN, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i32, i32* @SImode, align 4
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, 1200
  %33 = call i32 @gen_rtx_REG(i32 %30, i32 %32)
  %34 = load i32, i32* @SImode, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @gen_rtx_REG(i32 %34, i32 %35)
  %37 = call i32 @gen_rtvec(i32 2, i32 %33, i32 %36)
  br label %47

38:                                               ; preds = %23
  %39 = load i32, i32* @SImode, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @gen_rtx_REG(i32 %39, i32 %40)
  %42 = load i32, i32* @SImode, align 4
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, 1200
  %45 = call i32 @gen_rtx_REG(i32 %42, i32 %44)
  %46 = call i32 @gen_rtvec(i32 2, i32 %41, i32 %45)
  br label %47

47:                                               ; preds = %38, %29
  %48 = phi i32 [ %37, %29 ], [ %46, %38 ]
  %49 = call i32 @gen_rtx_PARALLEL(i32 %26, i32 %48)
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %21
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @SPE_VECTOR_MODE(i64) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @gen_rtx_PARALLEL(i32, i32) #1

declare dso_local i32 @gen_rtvec(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_REG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_cannot_copy_insn_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_arm_cannot_copy_insn_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARALLEL = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@UNSPEC = common dso_local global i64 0, align 8
@UNSPEC_PIC_BASE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@MEM = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @arm_cannot_copy_insn_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_cannot_copy_insn_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @PATTERN(i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @PARALLEL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @XVECEXP(i32 %13, i32 0, i32 0)
  %15 = call i64 @GET_CODE(i32 %14)
  %16 = load i64, i64* @SET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %53

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @XVECEXP(i32 %19, i32 0, i32 0)
  %21 = call i32 @SET_SRC(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @GET_CODE(i32 %22)
  %24 = load i64, i64* @UNSPEC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @XINT(i32 %27, i32 1)
  %29 = load i64, i64* @UNSPEC_PIC_BASE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @TRUE, align 4
  store i32 %32, i32* %2, align 4
  br label %55

33:                                               ; preds = %26, %18
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @GET_CODE(i32 %34)
  %36 = load i64, i64* @MEM, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @XEXP(i32 %39, i32 0)
  %41 = call i64 @GET_CODE(i32 %40)
  %42 = load i64, i64* @UNSPEC, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @XEXP(i32 %45, i32 0)
  %47 = call i64 @XINT(i32 %46, i32 1)
  %48 = load i64, i64* @UNSPEC_PIC_BASE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %2, align 4
  br label %55

52:                                               ; preds = %44, %38, %33
  br label %53

53:                                               ; preds = %52, %12, %1
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %50, %31
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @SET_SRC(i32) #1

declare dso_local i64 @XINT(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

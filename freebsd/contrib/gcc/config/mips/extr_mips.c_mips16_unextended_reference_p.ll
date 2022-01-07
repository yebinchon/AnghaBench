; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips16_unextended_reference_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips16_unextended_reference_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_MIPS16 = common dso_local global i64 0, align 8
@CONST_INT = common dso_local global i64 0, align 8
@stack_pointer_rtx = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @mips16_unextended_reference_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips16_unextended_reference_p(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* @TARGET_MIPS16, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %3
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @GET_CODE(i64 %11)
  %13 = load i64, i64* @CONST_INT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %51

15:                                               ; preds = %10
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @INTVAL(i64 %16)
  %18 = icmp sge i32 %17, 0
  br i1 %18, label %19, label %51

19:                                               ; preds = %15
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @INTVAL(i64 %20)
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @GET_MODE_SIZE(i32 %22)
  %24 = sub nsw i32 %23, 1
  %25 = and i32 %21, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @GET_MODE_SIZE(i32 %28)
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @stack_pointer_rtx, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @INTVAL(i64 %36)
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @GET_MODE_SIZE(i32 %38)
  %40 = mul nsw i32 256, %39
  %41 = icmp slt i32 %37, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %52

43:                                               ; preds = %31, %27
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @INTVAL(i64 %44)
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @GET_MODE_SIZE(i32 %46)
  %48 = mul nsw i32 32, %47
  %49 = icmp slt i32 %45, %48
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %19, %15, %10, %3
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %43, %35
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @INTVAL(i64) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

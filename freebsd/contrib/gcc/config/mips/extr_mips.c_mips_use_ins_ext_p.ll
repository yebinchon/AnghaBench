; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_use_ins_ext_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_use_ins_ext_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ISA_HAS_EXT_INS = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@BITS_PER_WORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_use_ins_ext_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @ISA_HAS_EXT_INS, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @VOIDmode, align 4
  %15 = call i32 @register_operand(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @GET_MODE(i32 %18)
  %20 = call i64 @GET_MODE_BITSIZE(i32 %19)
  %21 = load i64, i64* @BITS_PER_WORD, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %12, %3
  store i32 0, i32* %4, align 4
  br label %50

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @INTVAL(i32 %25)
  store i64 %26, i64* %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @INTVAL(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @GET_MODE(i32 %33)
  %35 = call i64 @GET_MODE_BITSIZE(i32 %34)
  %36 = icmp sge i64 %32, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %31
  %38 = load i64, i64* %9, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %8, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @GET_MODE(i32 %44)
  %46 = call i64 @GET_MODE_BITSIZE(i32 %45)
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40, %37, %31, %24
  store i32 0, i32* %4, align 4
  br label %50

49:                                               ; preds = %40
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %48, %23
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @register_operand(i32, i32) #1

declare dso_local i64 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @INTVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

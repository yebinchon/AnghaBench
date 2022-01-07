; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_pad_arg_upward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_pad_arg_upward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BYTES_BIG_ENDIAN = common dso_local global i32 0, align 4
@MODE_INT = common dso_local global i64 0, align 8
@mips_abi = common dso_local global i64 0, align 8
@ABI_O64 = common dso_local global i64 0, align 8
@MODE_FLOAT = common dso_local global i64 0, align 8
@ABI_EABI = common dso_local global i64 0, align 8
@BLKmode = common dso_local global i32 0, align 4
@PARM_BOUNDARY = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_pad_arg_upward(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @BYTES_BIG_ENDIAN, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %67

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @INTEGRAL_TYPE_P(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @POINTER_TYPE_P(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %26

20:                                               ; preds = %9
  %21 = load i32, i32* %4, align 4
  %22 = call i64 @GET_MODE_CLASS(i32 %21)
  %23 = load i64, i64* @MODE_INT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %16, %12
  store i32 0, i32* %3, align 4
  br label %67

26:                                               ; preds = %20, %16
  %27 = load i64, i64* @mips_abi, align 8
  %28 = load i64, i64* @ABI_O64, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @FLOAT_TYPE_P(i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = call i64 @GET_MODE_CLASS(i32 %38)
  %40 = load i64, i64* @MODE_FLOAT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %33
  store i32 0, i32* %3, align 4
  br label %67

43:                                               ; preds = %37, %33
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i64, i64* @mips_abi, align 8
  %46 = load i64, i64* @ABI_EABI, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %67

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @BLKmode, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @GET_MODE_BITSIZE(i32 %54)
  %56 = load i32, i32* @PARM_BOUNDARY, align 4
  %57 = icmp sge i32 %55, %56
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %3, align 4
  br label %67

59:                                               ; preds = %49
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @int_size_in_bytes(i64 %60)
  %62 = load i32, i32* @PARM_BOUNDARY, align 4
  %63 = load i32, i32* @BITS_PER_UNIT, align 4
  %64 = sdiv i32 %62, %63
  %65 = icmp sge i32 %61, %64
  %66 = zext i1 %65 to i32
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %59, %53, %48, %42, %25, %8
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @INTEGRAL_TYPE_P(i64) #1

declare dso_local i64 @POINTER_TYPE_P(i64) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @FLOAT_TYPE_P(i64) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @int_size_in_bytes(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

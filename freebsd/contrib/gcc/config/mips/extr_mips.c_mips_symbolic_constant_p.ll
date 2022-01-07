; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_symbolic_constant_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_symbolic_constant_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYMBOL_REF = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8
@Pmode = common dso_local global i32 0, align 4
@DImode = common dso_local global i32 0, align 4
@ABI_HAS_64BIT_SYMBOLS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_symbolic_constant_p(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @mips_split_const(i32 %7, i32* %4, i64* %6)
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @UNSPEC_ADDRESS_P(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @UNSPEC_ADDRESS_TYPE(i32 %13)
  %15 = load i32*, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @SYMBOL_REF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @GET_CODE(i32 %22)
  %24 = load i64, i64* @LABEL_REF, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %21, %16
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @mips_classify_symbol(i32 %27)
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 131
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %73

34:                                               ; preds = %26
  br label %36

35:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %73

36:                                               ; preds = %34
  br label %37

37:                                               ; preds = %36, %12
  %38 = load i64, i64* %6, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %73

41:                                               ; preds = %37
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %71 [
    i32 140, label %44
    i32 145, label %44
    i32 143, label %44
    i32 144, label %44
    i32 142, label %56
    i32 132, label %63
    i32 133, label %67
    i32 136, label %67
    i32 134, label %70
    i32 138, label %70
    i32 139, label %70
    i32 137, label %70
    i32 130, label %70
    i32 129, label %70
    i32 141, label %70
    i32 128, label %70
    i32 135, label %70
    i32 131, label %70
  ]

44:                                               ; preds = %41, %41, %41, %41
  %45 = load i32, i32* @Pmode, align 4
  %46 = load i32, i32* @DImode, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load i32, i32* @ABI_HAS_64BIT_SYMBOLS, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @mips_offset_within_object_p(i32 %52, i64 %53)
  store i32 %54, i32* %3, align 4
  br label %73

55:                                               ; preds = %48, %44
  store i32 1, i32* %3, align 4
  br label %73

56:                                               ; preds = %41
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @GET_CODE(i32 %57)
  %59 = load i64, i64* @LABEL_REF, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %73

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %41, %62
  %64 = load i32, i32* %4, align 4
  %65 = load i64, i64* %6, align 8
  %66 = call i32 @mips_offset_within_object_p(i32 %64, i64 %65)
  store i32 %66, i32* %3, align 4
  br label %73

67:                                               ; preds = %41, %41
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @SMALL_OPERAND(i64 %68)
  store i32 %69, i32* %3, align 4
  br label %73

70:                                               ; preds = %41, %41, %41, %41, %41, %41, %41, %41, %41, %41
  store i32 0, i32* %3, align 4
  br label %73

71:                                               ; preds = %41
  %72 = call i32 (...) @gcc_unreachable()
  br label %73

73:                                               ; preds = %71, %70, %67, %63, %61, %55, %51, %40, %35, %33
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @mips_split_const(i32, i32*, i64*) #1

declare dso_local i64 @UNSPEC_ADDRESS_P(i32) #1

declare dso_local i32 @UNSPEC_ADDRESS_TYPE(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @mips_classify_symbol(i32) #1

declare dso_local i32 @mips_offset_within_object_p(i32, i64) #1

declare dso_local i32 @SMALL_OPERAND(i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

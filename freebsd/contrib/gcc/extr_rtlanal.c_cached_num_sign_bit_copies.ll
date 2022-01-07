; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_cached_num_sign_bit_copies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_cached_num_sign_bit_copies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64, i32, i32)* @cached_num_sign_bit_copies to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cached_num_sign_bit_copies(i64 %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %6, align 4
  br label %107

23:                                               ; preds = %17, %5
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @ARITHMETIC_P(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %100

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @XEXP(i64 %28, i32 0)
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @XEXP(i64 %30, i32 1)
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i64, i64* %12, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i64, i64* %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @cached_num_sign_bit_copies(i64 %40, i32 %41, i64 %42, i32 %43, i32 %44)
  %46 = call i32 @num_sign_bit_copies1(i64 %36, i32 %37, i64 %38, i32 %39, i32 %45)
  store i32 %46, i32* %6, align 4
  br label %107

47:                                               ; preds = %27
  %48 = load i64, i64* %12, align 8
  %49 = call i64 @ARITHMETIC_P(i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %47
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i64 @XEXP(i64 %53, i32 0)
  %55 = icmp eq i64 %52, %54
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i64 @XEXP(i64 %58, i32 1)
  %60 = icmp eq i64 %57, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %56, %51
  %62 = load i64, i64* %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i64, i64* %13, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i64, i64* %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @cached_num_sign_bit_copies(i64 %66, i32 %67, i64 %68, i32 %69, i32 %70)
  %72 = call i32 @num_sign_bit_copies1(i64 %62, i32 %63, i64 %64, i32 %65, i32 %71)
  store i32 %72, i32* %6, align 4
  br label %107

73:                                               ; preds = %56, %47
  %74 = load i64, i64* %13, align 8
  %75 = call i64 @ARITHMETIC_P(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %99

77:                                               ; preds = %73
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i64 @XEXP(i64 %79, i32 0)
  %81 = icmp eq i64 %78, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = load i64, i64* %12, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i64 @XEXP(i64 %84, i32 1)
  %86 = icmp eq i64 %83, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %82, %77
  %88 = load i64, i64* %7, align 8
  %89 = load i32, i32* %8, align 4
  %90 = load i64, i64* %12, align 8
  %91 = load i32, i32* %8, align 4
  %92 = load i64, i64* %12, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i64, i64* %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @cached_num_sign_bit_copies(i64 %92, i32 %93, i64 %94, i32 %95, i32 %96)
  %98 = call i32 @num_sign_bit_copies1(i64 %88, i32 %89, i64 %90, i32 %91, i32 %97)
  store i32 %98, i32* %6, align 4
  br label %107

99:                                               ; preds = %82, %73
  br label %100

100:                                              ; preds = %99, %23
  %101 = load i64, i64* %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i64, i64* %9, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @num_sign_bit_copies1(i64 %101, i32 %102, i64 %103, i32 %104, i32 %105)
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %100, %87, %61, %35, %21
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i64 @ARITHMETIC_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @num_sign_bit_copies1(i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

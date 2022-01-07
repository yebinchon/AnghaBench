; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_output_constant_pool_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_varasm.c_output_constant_pool_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONST_DOUBLE = common dso_local global i32 0, align 4
@CONST_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @output_constant_pool_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_constant_pool_2(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @GET_MODE_CLASS(i32 %13)
  switch i32 %14, label %72 [
    i32 132, label %15
    i32 133, label %15
    i32 131, label %29
    i32 130, label %29
    i32 129, label %35
    i32 128, label %35
  ]

15:                                               ; preds = %3, %3
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @GET_CODE(i32 %16)
  %18 = load i32, i32* @CONST_DOUBLE, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @gcc_assert(i32 %20)
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32 %22, i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @assemble_real(i32 %25, i32 %26, i32 %27)
  br label %74

29:                                               ; preds = %3, %3
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @GET_MODE_SIZE(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @assemble_integer(i32 %30, i32 %32, i32 %33, i32 1)
  br label %74

35:                                               ; preds = %3, %3
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @GET_MODE_INNER(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @GET_MODE_BITSIZE(i32 %39)
  %41 = call i32 @MIN(i32 %38, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @GET_CODE(i32 %42)
  %44 = load i32, i32* @CONST_VECTOR, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @gcc_assert(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @CONST_VECTOR_NUNITS(i32 %48)
  store i32 %49, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %68, %35
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @CONST_VECTOR_ELT(i32 %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  br label %66

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  call void @output_constant_pool_2(i32 %58, i32 %59, i32 %67)
  br label %68

68:                                               ; preds = %66
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %50

71:                                               ; preds = %50
  br label %74

72:                                               ; preds = %3
  %73 = call i32 (...) @gcc_unreachable()
  br label %74

74:                                               ; preds = %72, %71, %29, %15
  ret void
}

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @REAL_VALUE_FROM_CONST_DOUBLE(i32, i32) #1

declare dso_local i32 @assemble_real(i32, i32, i32) #1

declare dso_local i32 @assemble_integer(i32, i32, i32, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @GET_MODE_BITSIZE(i32) #1

declare dso_local i32 @CONST_VECTOR_NUNITS(i32) #1

declare dso_local i32 @CONST_VECTOR_ELT(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

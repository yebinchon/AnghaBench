; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_gen_easy_altivec_constant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_gen_easy_altivec_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@V4SImode = common dso_local global i32 0, align 4
@SImode = common dso_local global i32 0, align 4
@V8HImode = common dso_local global i32 0, align 4
@HImode = common dso_local global i32 0, align 4
@V16QImode = common dso_local global i32 0, align 4
@QImode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gen_easy_altivec_constant(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GET_MODE(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @GET_MODE_NUNITS(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 1
  %16 = call i32 @CONST_VECTOR_ELT(i32 %13, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %17, 4
  store i32 %18, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @vspltis_constant(i32 %19, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load i32, i32* @V4SImode, align 4
  %26 = load i32, i32* @SImode, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @gen_lowpart(i32 %26, i32 %27)
  %29 = call i32 @gen_rtx_VEC_DUPLICATE(i32 %25, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %74

30:                                               ; preds = %1
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = shl i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = lshr i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i64 @vspltis_constant(i32 %40, i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32, i32* @V8HImode, align 4
  %47 = load i32, i32* @HImode, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @gen_lowpart(i32 %47, i32 %48)
  %50 = call i32 @gen_rtx_VEC_DUPLICATE(i32 %46, i32 %49)
  store i32 %50, i32* %2, align 4
  br label %74

51:                                               ; preds = %39
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = shl i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %60

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = lshr i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %54
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @vspltis_constant(i32 %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* @V16QImode, align 4
  %68 = load i32, i32* @QImode, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @gen_lowpart(i32 %68, i32 %69)
  %71 = call i32 @gen_rtx_VEC_DUPLICATE(i32 %67, i32 %70)
  store i32 %71, i32* %2, align 4
  br label %74

72:                                               ; preds = %60
  %73 = call i32 (...) @gcc_unreachable()
  br label %74

74:                                               ; preds = %72, %66, %45, %24
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i32 @GET_MODE_NUNITS(i32) #1

declare dso_local i32 @CONST_VECTOR_ELT(i32, i32) #1

declare dso_local i64 @vspltis_constant(i32, i32, i32) #1

declare dso_local i32 @gen_rtx_VEC_DUPLICATE(i32, i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

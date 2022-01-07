; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_expand_vector_init(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @GET_MODE(i64 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @GET_MODE_INNER(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @GET_MODE_NUNITS(i32 %20)
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %55, %3
  %23 = load i32, i32* %14, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* %14, align 4
  %29 = call i64 @XVECEXP(i64 %27, i32 0, i32 %28)
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %15, align 8
  %31 = call i32 @CONSTANT_P(i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %11, align 4
  br label %44

37:                                               ; preds = %26
  %38 = load i64, i64* %15, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @CONST0_RTX(i32 %39)
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %42, %37
  br label %44

44:                                               ; preds = %43, %33
  %45 = load i32, i32* %14, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load i64, i64* %15, align 8
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @XVECEXP(i64 %49, i32 0, i32 0)
  %51 = call i32 @rtx_equal_p(i64 %48, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  br label %54

54:                                               ; preds = %53, %47, %44
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  br label %22

58:                                               ; preds = %22
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @XVEC(i64 %64, i32 0)
  %66 = call i32 @gen_rtx_CONST_VECTOR(i32 %63, i32 %65)
  %67 = call i32 @emit_move_insn(i64 %62, i32 %66)
  br label %113

68:                                               ; preds = %58
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* %6, align 8
  %76 = call i64 @XVECEXP(i64 %75, i32 0, i32 0)
  %77 = call i64 @ix86_expand_vector_init_duplicate(i32 %72, i32 %73, i64 %74, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %113

80:                                               ; preds = %71, %68
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %107

83:                                               ; preds = %80
  %84 = load i32, i32* %13, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i32, i32* %11, align 4
  %92 = call i64 @XVECEXP(i64 %90, i32 0, i32 %91)
  %93 = load i32, i32* %11, align 4
  %94 = call i64 @ix86_expand_vector_init_one_nonzero(i32 %87, i32 %88, i64 %89, i64 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  br label %113

97:                                               ; preds = %86, %83
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i64, i64* %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i64 @ix86_expand_vector_init_one_var(i32 %98, i32 %99, i64 %100, i64 %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %113

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %80
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* %6, align 8
  %112 = call i32 @ix86_expand_vector_init_general(i32 %108, i32 %109, i64 %110, i64 %111)
  br label %113

113:                                              ; preds = %107, %105, %96, %79, %61
  ret void
}

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @GET_MODE_NUNITS(i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i32 @CONSTANT_P(i64) #1

declare dso_local i64 @CONST0_RTX(i32) #1

declare dso_local i32 @rtx_equal_p(i64, i64) #1

declare dso_local i32 @emit_move_insn(i64, i32) #1

declare dso_local i32 @gen_rtx_CONST_VECTOR(i32, i32) #1

declare dso_local i32 @XVEC(i64, i32) #1

declare dso_local i64 @ix86_expand_vector_init_duplicate(i32, i32, i64, i64) #1

declare dso_local i64 @ix86_expand_vector_init_one_nonzero(i32, i32, i64, i64, i32) #1

declare dso_local i64 @ix86_expand_vector_init_one_var(i32, i32, i64, i64, i32) #1

declare dso_local i32 @ix86_expand_vector_init_general(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

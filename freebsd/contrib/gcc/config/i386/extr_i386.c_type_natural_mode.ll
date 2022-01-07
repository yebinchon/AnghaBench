; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_type_natural_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_type_natural_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VECTOR_TYPE = common dso_local global i64 0, align 8
@REAL_TYPE = common dso_local global i64 0, align 8
@MIN_MODE_VECTOR_FLOAT = common dso_local global i32 0, align 4
@MIN_MODE_VECTOR_INT = common dso_local global i32 0, align 4
@VOIDmode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @type_natural_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_natural_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @TYPE_MODE(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = load i64, i64* @VECTOR_TYPE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %67

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @VECTOR_MODE_P(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %67, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @int_size_in_bytes(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 8
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 16
  br i1 %24, label %25, label %66

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @TYPE_VECTOR_SUBPARTS(i32 %26)
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %66

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @TREE_TYPE(i32 %30)
  %32 = call i32 @TYPE_MODE(i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @TREE_TYPE(i32 %33)
  %35 = call i64 @TREE_CODE(i32 %34)
  %36 = load i64, i64* @REAL_TYPE, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @MIN_MODE_VECTOR_FLOAT, align 4
  store i32 %39, i32* %4, align 4
  br label %42

40:                                               ; preds = %29
  %41 = load i32, i32* @MIN_MODE_VECTOR_INT, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %38
  br label %43

43:                                               ; preds = %61, %42
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @VOIDmode, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %43
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @GET_MODE_NUNITS(i32 %48)
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @TYPE_VECTOR_SUBPARTS(i32 %50)
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @GET_MODE_INNER(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %69

60:                                               ; preds = %53, %47
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @GET_MODE_WIDER_MODE(i32 %62)
  store i32 %63, i32* %4, align 4
  br label %43

64:                                               ; preds = %43
  %65 = call i32 (...) @gcc_unreachable()
  br label %66

66:                                               ; preds = %64, %25, %22
  br label %67

67:                                               ; preds = %66, %13, %1
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %58
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @VECTOR_MODE_P(i32) #1

declare dso_local i32 @int_size_in_bytes(i32) #1

declare dso_local i32 @TYPE_VECTOR_SUBPARTS(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @GET_MODE_NUNITS(i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

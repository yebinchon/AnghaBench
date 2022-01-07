; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_native_encode_vector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_native_encode_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @native_encode_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_encode_vector(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @TREE_VECTOR_CST_ELTS(i64 %15)
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @TREE_TYPE(i64 %17)
  %19 = call i32 @TYPE_VECTOR_SUBPARTS(i64 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @TREE_TYPE(i64 %20)
  %22 = call i64 @TREE_TYPE(i64 %21)
  store i64 %22, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @TYPE_MODE(i64 %23)
  %25 = call i32 @GET_MODE_SIZE(i32 %24)
  store i32 %25, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %75, %3
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %26
  %31 = load i64, i64* %14, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i64, i64* %14, align 8
  %35 = call i64 @TREE_VALUE(i64 %34)
  store i64 %35, i64* %13, align 8
  %36 = load i64, i64* %14, align 8
  %37 = call i64 @TREE_CHAIN(i64 %36)
  store i64 %37, i64* %14, align 8
  br label %40

38:                                               ; preds = %30
  %39 = load i64, i64* @NULL_TREE, align 8
  store i64 %39, i64* %13, align 8
  br label %40

40:                                               ; preds = %38, %33
  %41 = load i64, i64* %13, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i64, i64* %13, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %49, %50
  %52 = call i32 @native_encode_expr(i64 %44, i8* %48, i32 %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %80

56:                                               ; preds = %43
  br label %71

57:                                               ; preds = %40
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %80

64:                                               ; preds = %57
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @memset(i8* %68, i32 0, i32 %69)
  br label %71

71:                                               ; preds = %64, %56
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %10, align 4
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %26

78:                                               ; preds = %26
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %63, %55
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @TREE_VECTOR_CST_ELTS(i64) #1

declare dso_local i32 @TYPE_VECTOR_SUBPARTS(i64) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @TYPE_MODE(i64) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @native_encode_expr(i64, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

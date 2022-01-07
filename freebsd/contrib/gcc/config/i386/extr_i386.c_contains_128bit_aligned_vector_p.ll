; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_contains_128bit_aligned_vector_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_contains_128bit_aligned_vector_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIELD_DECL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @contains_128bit_aligned_vector_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @contains_128bit_aligned_vector_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TYPE_MODE(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @SSE_REG_MODE_P(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @TYPE_USER_ALIGN(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TYPE_ALIGN(i32 %19)
  %21 = icmp sgt i32 %20, 128
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14
  store i32 1, i32* %2, align 4
  br label %92

23:                                               ; preds = %18, %1
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @TYPE_ALIGN(i32 %24)
  %26 = icmp slt i32 %25, 128
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %92

28:                                               ; preds = %23
  %29 = load i32, i32* %3, align 4
  %30 = call i64 @AGGREGATE_TYPE_P(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %91

32:                                               ; preds = %28
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @TREE_CODE(i32 %33)
  switch i32 %34, label %88 [
    i32 129, label %35
    i32 128, label %35
    i32 130, label %35
    i32 131, label %81
  ]

35:                                               ; preds = %32, %32, %32
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @TYPE_BINFO(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @TYPE_BINFO(i32 %40)
  store i32 %41, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %55, %39
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @BINFO_BASE_ITERATE(i32 %43, i32 %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @BINFO_TYPE(i32 %49)
  %51 = call i32 @contains_128bit_aligned_vector_p(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %92

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %42

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %58, %35
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @TYPE_FIELDS(i32 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %77, %59
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @TREE_CODE(i32 %66)
  %68 = load i32, i32* @FIELD_DECL, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @TREE_TYPE(i32 %71)
  %73 = call i32 @contains_128bit_aligned_vector_p(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 1, i32* %2, align 4
  br label %92

76:                                               ; preds = %70, %65
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @TREE_CHAIN(i32 %78)
  store i32 %79, i32* %5, align 4
  br label %62

80:                                               ; preds = %62
  br label %90

81:                                               ; preds = %32
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @TREE_TYPE(i32 %82)
  %84 = call i32 @contains_128bit_aligned_vector_p(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 1, i32* %2, align 4
  br label %92

87:                                               ; preds = %81
  br label %90

88:                                               ; preds = %32
  %89 = call i32 (...) @gcc_unreachable()
  br label %90

90:                                               ; preds = %88, %87, %80
  br label %91

91:                                               ; preds = %90, %28
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %86, %75, %53, %27, %22
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i64 @SSE_REG_MODE_P(i32) #1

declare dso_local i32 @TYPE_USER_ALIGN(i32) #1

declare dso_local i32 @TYPE_ALIGN(i32) #1

declare dso_local i64 @AGGREGATE_TYPE_P(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_BINFO(i32) #1

declare dso_local i32 @BINFO_BASE_ITERATE(i32, i32, i32) #1

declare dso_local i32 @BINFO_TYPE(i32) #1

declare dso_local i32 @TYPE_FIELDS(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

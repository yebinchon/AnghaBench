; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_hfa_element_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/ia64/extr_ia64.c_hfa_element_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4
@MODE_COMPLEX_FLOAT = common dso_local global i32 0, align 4
@TCmode = common dso_local global i32 0, align 4
@TFmode = common dso_local global i32 0, align 4
@FIELD_DECL = common dso_local global i32 0, align 4
@MODE_FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @hfa_element_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfa_element_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @VOIDmode, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @TREE_CODE(i32 %12)
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @TYPE_SIZE(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @TYPE_SIZE(i32 %21)
  %23 = call i64 @integer_zerop(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %16
  %26 = load i32, i32* @VOIDmode, align 4
  store i32 %26, i32* %3, align 4
  br label %108

27:                                               ; preds = %20, %2
  %28 = load i32, i32* %8, align 4
  switch i32 %28, label %106 [
    i32 128, label %29
    i32 138, label %29
    i32 140, label %29
    i32 142, label %29
    i32 134, label %29
    i32 135, label %29
    i32 130, label %29
    i32 136, label %29
    i32 137, label %29
    i32 139, label %29
    i32 141, label %31
    i32 132, label %48
    i32 143, label %61
    i32 131, label %65
    i32 129, label %65
    i32 133, label %65
  ]

29:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %30 = load i32, i32* @VOIDmode, align 4
  store i32 %30, i32* %3, align 4
  br label %108

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @TYPE_MODE(i32 %32)
  %34 = call i32 @GET_MODE_CLASS(i32 %33)
  %35 = load i32, i32* @MODE_COMPLEX_FLOAT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %31
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @TYPE_MODE(i32 %38)
  %40 = load i32, i32* @TCmode, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @TYPE_MODE(i32 %43)
  %45 = call i32 @GET_MODE_INNER(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %108

46:                                               ; preds = %37, %31
  %47 = load i32, i32* @VOIDmode, align 4
  store i32 %47, i32* %3, align 4
  br label %108

48:                                               ; preds = %27
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @TYPE_MODE(i32 %52)
  %54 = load i32, i32* @TFmode, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @TYPE_MODE(i32 %57)
  store i32 %58, i32* %3, align 4
  br label %108

59:                                               ; preds = %51, %48
  %60 = load i32, i32* @VOIDmode, align 4
  store i32 %60, i32* %3, align 4
  br label %108

61:                                               ; preds = %27
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @TREE_TYPE(i32 %62)
  %64 = call i32 @hfa_element_mode(i32 %63, i32 1)
  store i32 %64, i32* %3, align 4
  br label %108

65:                                               ; preds = %27, %27, %27
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @TYPE_FIELDS(i32 %66)
  store i32 %67, i32* %10, align 4
  br label %68

68:                                               ; preds = %101, %65
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %68
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @TREE_CODE(i32 %72)
  %74 = load i32, i32* @FIELD_DECL, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %101

77:                                               ; preds = %71
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @TREE_TYPE(i32 %78)
  %80 = call i32 @hfa_element_mode(i32 %79, i32 1)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @VOIDmode, align 4
  store i32 %88, i32* %3, align 4
  br label %108

89:                                               ; preds = %83
  br label %100

90:                                               ; preds = %77
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @GET_MODE_CLASS(i32 %91)
  %93 = load i32, i32* @MODE_FLOAT, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* @VOIDmode, align 4
  store i32 %96, i32* %3, align 4
  br label %108

97:                                               ; preds = %90
  store i32 1, i32* %9, align 4
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %97
  br label %100

100:                                              ; preds = %99, %89
  br label %101

101:                                              ; preds = %100, %76
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @TREE_CHAIN(i32 %102)
  store i32 %103, i32* %10, align 4
  br label %68

104:                                              ; preds = %68
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %3, align 4
  br label %108

106:                                              ; preds = %27
  %107 = load i32, i32* @VOIDmode, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %106, %104, %95, %87, %61, %59, %56, %46, %42, %29, %25
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TYPE_SIZE(i32) #1

declare dso_local i64 @integer_zerop(i32) #1

declare dso_local i32 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @TYPE_MODE(i32) #1

declare dso_local i32 @GET_MODE_INNER(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TYPE_FIELDS(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

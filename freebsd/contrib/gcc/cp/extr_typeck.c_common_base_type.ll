; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_common_base_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_common_base_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @common_base_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @common_base_type(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i64, i64* @NULL_TREE, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @UNIQUELY_DERIVED_FROM_P(i64 %13, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %3, align 8
  br label %114

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i64 @UNIQUELY_DERIVED_FROM_P(i64 %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* %3, align 8
  br label %114

26:                                               ; preds = %19
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @TYPE_BINFO(i64 %27)
  %29 = call i32 @BINFO_N_BASE_BINFOS(i32 %28)
  %30 = sub nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %66, %26
  %32 = load i32, i32* %7, align 4
  %33 = icmp sge i32 %32, 0
  br i1 %33, label %34, label %69

34:                                               ; preds = %31
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @TYPE_BINFO(i64 %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @BINFO_BASE_BINFO(i32 %36, i32 %37)
  %39 = call i64 @BINFO_TYPE(i32 %38)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @common_base_type(i64 %40, i64 %41)
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %34
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @error_mark_node, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i64, i64* %9, align 8
  store i64 %50, i64* %3, align 8
  br label %114

51:                                               ; preds = %45
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @NULL_TREE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %6, align 8
  br label %64

57:                                               ; preds = %51
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %9, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i64, i64* @error_mark_node, align 8
  store i64 %62, i64* %3, align 8
  br label %114

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %55
  br label %65

65:                                               ; preds = %64, %34
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, -1
  store i32 %68, i32* %7, align 4
  br label %31

69:                                               ; preds = %31
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @TYPE_BINFO(i64 %70)
  %72 = call i32 @BINFO_N_BASE_BINFOS(i32 %71)
  %73 = sub nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %109, %69
  %75 = load i32, i32* %7, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %74
  %78 = load i64, i64* %5, align 8
  %79 = call i32 @TYPE_BINFO(i64 %78)
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @BINFO_BASE_BINFO(i32 %79, i32 %80)
  %82 = call i64 @BINFO_TYPE(i32 %81)
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @common_base_type(i64 %83, i64 %84)
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %11, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %77
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* @error_mark_node, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i64, i64* %11, align 8
  store i64 %93, i64* %3, align 8
  br label %114

94:                                               ; preds = %88
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @NULL_TREE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i64, i64* %11, align 8
  store i64 %99, i64* %6, align 8
  br label %107

100:                                              ; preds = %94
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* %11, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i64, i64* @error_mark_node, align 8
  store i64 %105, i64* %3, align 8
  br label %114

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %98
  br label %108

108:                                              ; preds = %107, %77
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %7, align 4
  br label %74

112:                                              ; preds = %74
  %113 = load i64, i64* %6, align 8
  store i64 %113, i64* %3, align 8
  br label %114

114:                                              ; preds = %112, %104, %92, %61, %49, %24, %17
  %115 = load i64, i64* %3, align 8
  ret i64 %115
}

declare dso_local i64 @UNIQUELY_DERIVED_FROM_P(i64, i64) #1

declare dso_local i32 @BINFO_N_BASE_BINFOS(i32) #1

declare dso_local i32 @TYPE_BINFO(i64) #1

declare dso_local i64 @BINFO_TYPE(i32) #1

declare dso_local i32 @BINFO_BASE_BINFO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_legitimate_indexed_address_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_legitimate_indexed_address_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i64 0, align 8
@reload_in_progress = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @legitimate_indexed_address_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legitimate_indexed_address_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @PLUS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @XEXP(i32 %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @XEXP(i32 %16, i32 1)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %13
  %21 = load i64, i64* @reload_in_progress, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @REG_P(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @GET_CODE(i32 %28)
  %30 = load i64, i64* @PLUS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %27, %23
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @REG_P(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %72

37:                                               ; preds = %32, %27, %20, %13
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @REG_P(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @REG_P(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @INT_REG_OK_FOR_BASE_P(i32 %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @INT_REG_OK_FOR_INDEX_P(i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @INT_REG_OK_FOR_BASE_P(i32 %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @INT_REG_OK_FOR_INDEX_P(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ false, %55 ], [ %64, %60 ]
  br label %67

67:                                               ; preds = %65, %50
  %68 = phi i1 [ true, %50 ], [ %66, %65 ]
  br label %69

69:                                               ; preds = %67, %41, %37
  %70 = phi i1 [ false, %41 ], [ false, %37 ], [ %68, %67 ]
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %36, %12
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @REG_P(i32) #1

declare dso_local i64 @INT_REG_OK_FOR_BASE_P(i32, i32) #1

declare dso_local i64 @INT_REG_OK_FOR_INDEX_P(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

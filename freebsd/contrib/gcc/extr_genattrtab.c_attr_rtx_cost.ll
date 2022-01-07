; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_attr_rtx_cost.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_attr_rtx_cost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@alternative_name = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @attr_rtx_cost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attr_rtx_cost(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %82

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @GET_CODE(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %33 [
    i32 128, label %16
    i32 129, label %24
    i32 130, label %25
  ]

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32* @XSTR(i32 %17, i32 1)
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 10, i32* %2, align 4
  br label %82

23:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %82

24:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %82

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4
  %27 = call i32* @XSTR(i32 %26, i32 0)
  %28 = load i32, i32* @alternative_name, align 4
  %29 = call i32 @strcmp_check(i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %82

32:                                               ; preds = %25
  store i32 5, i32* %2, align 4
  br label %82

33:                                               ; preds = %12
  %34 = load i32, i32* %5, align 4
  %35 = call i8* @GET_RTX_FORMAT(i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @GET_RTX_LENGTH(i32 %36)
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %76, %33
  %40 = load i32, i32* %6, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  switch i32 %48, label %75 [
    i32 86, label %49
    i32 69, label %49
    i32 101, label %68
  ]

49:                                               ; preds = %42, %42
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %64, %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @XVECLEN(i32 %52, i32 %53)
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %67

56:                                               ; preds = %50
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @XVECEXP(i32 %57, i32 %58, i32 %59)
  %61 = call i32 @attr_rtx_cost(i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %50

67:                                               ; preds = %50
  br label %75

68:                                               ; preds = %42
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @XEXP(i32 %69, i32 %70)
  %72 = call i32 @attr_rtx_cost(i32 %71)
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %42, %68, %67
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %6, align 4
  br label %39

79:                                               ; preds = %39
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %80, %32, %31, %24, %23, %22, %11
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32* @XSTR(i32, i32) #1

declare dso_local i32 @strcmp_check(i32*, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

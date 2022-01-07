; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_min_attr_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_min_attr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @min_attr_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @min_attr_value(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @GET_CODE(i32 %8)
  switch i32 %9, label %56 [
    i32 129, label %10
    i32 130, label %14
    i32 128, label %41
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @XSTR(i32 %11, i32 0)
  %13 = call i32 @atoi(i32 %12)
  store i32 %13, i32* %5, align 4
  br label %59

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @XEXP(i32 %15, i32 1)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @min_attr_value(i32 %16, i32* %17)
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %37, %14
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @XVECLEN(i32 %21, i32 0)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  %28 = call i32 @XVECEXP(i32 %25, i32 0, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @min_attr_value(i32 %28, i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 2
  store i32 %39, i32* %6, align 4
  br label %19

40:                                               ; preds = %19
  br label %59

41:                                               ; preds = %2
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @XEXP(i32 %42, i32 1)
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @min_attr_value(i32 %43, i32* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @XEXP(i32 %46, i32 2)
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @min_attr_value(i32 %47, i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %41
  br label %59

56:                                               ; preds = %2
  %57 = load i32*, i32** %4, align 8
  store i32 1, i32* %57, align 4
  %58 = load i32, i32* @INT_MAX, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %55, %40, %10
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @atoi(i32) #1

declare dso_local i32 @XSTR(i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

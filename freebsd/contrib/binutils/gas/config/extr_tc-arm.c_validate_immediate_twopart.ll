; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_validate_immediate_twopart.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-arm.c_validate_immediate_twopart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*)* @validate_immediate_twopart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_immediate_twopart(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %70, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp ult i32 %9, 32
  br i1 %10, label %11, label %73

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @rotate_left(i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = and i32 %14, 255
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %69

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 65280
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, -65536
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %70

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = lshr i32 %27, 8
  %29 = load i32, i32* %7, align 4
  %30 = add i32 %29, 24
  %31 = shl i32 %30, 7
  %32 = or i32 %28, %31
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  br label %63

34:                                               ; preds = %17
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 16711680
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, -16777216
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %70

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  %45 = lshr i32 %44, 16
  %46 = load i32, i32* %7, align 4
  %47 = add i32 %46, 16
  %48 = shl i32 %47, 7
  %49 = or i32 %45, %48
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %62

51:                                               ; preds = %34
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, -16777216
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = lshr i32 %55, 24
  %57 = load i32, i32* %7, align 4
  %58 = add i32 %57, 8
  %59 = shl i32 %58, 7
  %60 = or i32 %56, %59
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %51, %43
  br label %63

63:                                               ; preds = %62, %26
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 255
  %66 = load i32, i32* %7, align 4
  %67 = shl i32 %66, 7
  %68 = or i32 %65, %67
  store i32 %68, i32* %3, align 4
  br label %75

69:                                               ; preds = %11
  br label %70

70:                                               ; preds = %69, %42, %25
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %71, 2
  store i32 %72, i32* %7, align 4
  br label %8

73:                                               ; preds = %8
  %74 = load i32, i32* @FAIL, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %63
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @rotate_left(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

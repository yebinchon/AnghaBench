; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_get_rtx_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_get_rtx_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EQ = common dso_local global i32 0, align 4
@NE = common dso_local global i32 0, align 4
@LTU = common dso_local global i32 0, align 4
@LT = common dso_local global i32 0, align 4
@LEU = common dso_local global i32 0, align 4
@LE = common dso_local global i32 0, align 4
@GTU = common dso_local global i32 0, align 4
@GT = common dso_local global i32 0, align 4
@GEU = common dso_local global i32 0, align 4
@GE = common dso_local global i32 0, align 4
@UNORDERED = common dso_local global i32 0, align 4
@ORDERED = common dso_local global i32 0, align 4
@UNLT = common dso_local global i32 0, align 4
@UNLE = common dso_local global i32 0, align 4
@UNGT = common dso_local global i32 0, align 4
@UNGE = common dso_local global i32 0, align 4
@UNEQ = common dso_local global i32 0, align 4
@LTGT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @get_rtx_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rtx_code(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %63 [
    i32 141, label %7
    i32 135, label %9
    i32 136, label %11
    i32 138, label %20
    i32 139, label %29
    i32 140, label %38
    i32 128, label %47
    i32 134, label %49
    i32 129, label %51
    i32 130, label %53
    i32 131, label %55
    i32 132, label %57
    i32 133, label %59
    i32 137, label %61
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @EQ, align 4
  store i32 %8, i32* %5, align 4
  br label %65

9:                                                ; preds = %2
  %10 = load i32, i32* @NE, align 4
  store i32 %10, i32* %5, align 4
  br label %65

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i32, i32* @LTU, align 4
  br label %18

16:                                               ; preds = %11
  %17 = load i32, i32* @LT, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %5, align 4
  br label %65

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* @LEU, align 4
  br label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @LE, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  store i32 %28, i32* %5, align 4
  br label %65

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @GTU, align 4
  br label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @GT, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %5, align 4
  br label %65

38:                                               ; preds = %2
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @GEU, align 4
  br label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @GE, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %5, align 4
  br label %65

47:                                               ; preds = %2
  %48 = load i32, i32* @UNORDERED, align 4
  store i32 %48, i32* %5, align 4
  br label %65

49:                                               ; preds = %2
  %50 = load i32, i32* @ORDERED, align 4
  store i32 %50, i32* %5, align 4
  br label %65

51:                                               ; preds = %2
  %52 = load i32, i32* @UNLT, align 4
  store i32 %52, i32* %5, align 4
  br label %65

53:                                               ; preds = %2
  %54 = load i32, i32* @UNLE, align 4
  store i32 %54, i32* %5, align 4
  br label %65

55:                                               ; preds = %2
  %56 = load i32, i32* @UNGT, align 4
  store i32 %56, i32* %5, align 4
  br label %65

57:                                               ; preds = %2
  %58 = load i32, i32* @UNGE, align 4
  store i32 %58, i32* %5, align 4
  br label %65

59:                                               ; preds = %2
  %60 = load i32, i32* @UNEQ, align 4
  store i32 %60, i32* %5, align 4
  br label %65

61:                                               ; preds = %2
  %62 = load i32, i32* @LTGT, align 4
  store i32 %62, i32* %5, align 4
  br label %65

63:                                               ; preds = %2
  %64 = call i32 (...) @gcc_unreachable()
  br label %65

65:                                               ; preds = %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %36, %27, %18, %9, %7
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regmove.c_stable_and_no_regs_but_for_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regmove.c_stable_and_no_regs_but_for_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REG = common dso_local global i32 0, align 4
@MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @stable_and_no_regs_but_for_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stable_and_no_regs_but_for_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @GET_CODE(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @GET_RTX_CLASS(i32 %13)
  switch i32 %14, label %74 [
    i32 128, label %15
    i32 135, label %15
    i32 133, label %15
    i32 131, label %15
    i32 132, label %15
    i32 129, label %15
    i32 134, label %15
    i32 130, label %46
  ]

15:                                               ; preds = %3, %3, %3, %3, %3, %3, %3
  %16 = load i32, i32* %8, align 4
  %17 = call i8* @GET_RTX_FORMAT(i32 %16)
  store i8* %17, i8** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @GET_RTX_LENGTH(i32 %18)
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %42, %15
  %22 = load i32, i32* %9, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %21
  %25 = load i8*, i8** %10, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 101
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @XEXP(i32 %33, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @stable_and_no_regs_but_for_p(i32 %35, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %80

41:                                               ; preds = %32, %24
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %9, align 4
  br label %21

45:                                               ; preds = %21
  store i32 1, i32* %4, align 4
  br label %80

46:                                               ; preds = %3
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @REG, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %55, %56
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i1 [ true, %50 ], [ %57, %54 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %80

61:                                               ; preds = %46
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @MEM, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @XEXP(i32 %66, i32 0)
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @stable_and_no_regs_but_for_p(i32 %67, i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %80

73:                                               ; preds = %65, %61
  br label %74

74:                                               ; preds = %3, %73
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @rtx_unstable_p(i32 %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %74, %72, %58, %45, %40
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @GET_RTX_CLASS(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @rtx_unstable_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

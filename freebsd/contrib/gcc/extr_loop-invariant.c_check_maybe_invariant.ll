; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_check_maybe_invariant.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_check_maybe_invariant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_maybe_invariant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_maybe_invariant(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @GET_CODE(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %26 [
    i32 134, label %11
    i32 135, label %11
    i32 129, label %11
    i32 136, label %11
    i32 133, label %11
    i32 131, label %12
    i32 137, label %12
    i32 128, label %12
    i32 138, label %12
    i32 130, label %13
    i32 132, label %14
    i32 139, label %20
  ]

11:                                               ; preds = %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %86

12:                                               ; preds = %1, %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %86

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %86

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @MEM_READONLY_P(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %27

19:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %86

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @MEM_VOLATILE_P(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %86

25:                                               ; preds = %20
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %25, %18
  %28 = load i32, i32* %4, align 4
  %29 = call i8* @GET_RTX_FORMAT(i32 %28)
  store i8* %29, i8** %7, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @GET_RTX_LENGTH(i32 %30)
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %82, %27
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %85

36:                                               ; preds = %33
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 101
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @XEXP(i32 %45, i32 %46)
  %48 = call i32 @check_maybe_invariant(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %86

51:                                               ; preds = %44
  br label %81

52:                                               ; preds = %36
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 69
  br i1 %59, label %60, label %80

60:                                               ; preds = %52
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %76, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @XVECLEN(i32 %63, i32 %64)
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @XVECEXP(i32 %68, i32 %69, i32 %70)
  %72 = call i32 @check_maybe_invariant(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %86

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %61

79:                                               ; preds = %61
  br label %80

80:                                               ; preds = %79, %52
  br label %81

81:                                               ; preds = %80, %51
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %5, align 4
  br label %33

85:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %74, %50, %24, %19, %13, %12, %11
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @MEM_READONLY_P(i32) #1

declare dso_local i32 @MEM_VOLATILE_P(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

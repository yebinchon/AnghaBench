; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_inequality_comparisons_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_inequality_comparisons_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inequality_comparisons_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @GET_CODE(i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %14 [
    i32 130, label %12
    i32 129, label %12
    i32 131, label %12
    i32 145, label %12
    i32 142, label %12
    i32 143, label %12
    i32 141, label %12
    i32 144, label %12
    i32 136, label %12
    i32 128, label %12
    i32 133, label %13
    i32 132, label %13
    i32 138, label %13
    i32 137, label %13
    i32 135, label %13
    i32 134, label %13
    i32 140, label %13
    i32 139, label %13
  ]

12:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %75

13:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %75

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @GET_RTX_LENGTH(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i8* @GET_RTX_FORMAT(i32 %18)
  store i8* %19, i8** %4, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %71, %15
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %74

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 101
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @XEXP(i32 %33, i32 %34)
  %36 = call i32 @inequality_comparisons_p(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %75

39:                                               ; preds = %32
  br label %70

40:                                               ; preds = %24
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 69
  br i1 %47, label %48, label %69

48:                                               ; preds = %40
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @XVECLEN(i32 %49, i32 %50)
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %65, %48
  %54 = load i32, i32* %8, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @XVECEXP(i32 %57, i32 %58, i32 %59)
  %61 = call i32 @inequality_comparisons_p(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 1, i32* %2, align 4
  br label %75

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %8, align 4
  br label %53

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %40
  br label %70

70:                                               ; preds = %69, %39
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %20

74:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %74, %63, %38, %13, %12
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

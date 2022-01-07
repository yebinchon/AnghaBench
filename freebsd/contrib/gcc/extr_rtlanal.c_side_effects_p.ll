; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_side_effects_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_side_effects_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOIDmode = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @side_effects_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @GET_CODE(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %25 [
    i32 140, label %11
    i32 129, label %11
    i32 142, label %11
    i32 144, label %11
    i32 143, label %11
    i32 141, label %11
    i32 146, label %11
    i32 138, label %11
    i32 131, label %11
    i32 130, label %11
    i32 150, label %11
    i32 151, label %11
    i32 145, label %12
    i32 133, label %18
    i32 134, label %18
    i32 136, label %18
    i32 137, label %18
    i32 132, label %18
    i32 135, label %18
    i32 147, label %18
    i32 128, label %18
    i32 139, label %19
    i32 149, label %19
    i32 148, label %19
  ]

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %85

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @GET_MODE(i32 %13)
  %15 = load i32, i32* @VOIDmode, align 4
  %16 = icmp ne i32 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %85

18:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %85

19:                                               ; preds = %1, %1, %1
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @MEM_VOLATILE_P(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %85

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %1, %24
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = call i8* @GET_RTX_FORMAT(i32 %27)
  store i8* %28, i8** %5, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @GET_RTX_LENGTH(i32 %29)
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %81, %26
  %33 = load i32, i32* %6, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %84

35:                                               ; preds = %32
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %36, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 101
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @XEXP(i32 %44, i32 %45)
  %47 = call i32 @side_effects_p(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %85

50:                                               ; preds = %43
  br label %80

51:                                               ; preds = %35
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 69
  br i1 %58, label %59, label %79

59:                                               ; preds = %51
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %75, %59
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @XVECLEN(i32 %62, i32 %63)
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @XVECEXP(i32 %67, i32 %68, i32 %69)
  %71 = call i32 @side_effects_p(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store i32 1, i32* %2, align 4
  br label %85

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %60

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78, %51
  br label %80

80:                                               ; preds = %79, %50
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %6, align 4
  br label %32

84:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %73, %49, %23, %18, %12, %11
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

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

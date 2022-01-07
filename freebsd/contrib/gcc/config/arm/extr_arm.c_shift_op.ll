; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_shift_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_shift_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"asl\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"asr\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"lsr\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"ror\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*)* @shift_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @shift_op(i32 %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @GET_CODE(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @XEXP(i32 %10, i32 1)
  %12 = call i32 @GET_CODE(i32 %11)
  switch i32 %12, label %20 [
    i32 131, label %13
    i32 128, label %13
    i32 134, label %15
  ]

13:                                               ; preds = %2, %2
  %14 = load i32*, i32** %5, align 8
  store i32 -1, i32* %14, align 4
  br label %22

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @XEXP(i32 %16, i32 1)
  %18 = call i32 @INTVAL(i32 %17)
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  br label %22

20:                                               ; preds = %2
  %21 = call i32 (...) @gcc_unreachable()
  br label %22

22:                                               ; preds = %20, %15, %13
  %23 = load i32, i32* %7, align 4
  switch i32 %23, label %48 [
    i32 136, label %24
    i32 135, label %25
    i32 133, label %26
    i32 130, label %27
    i32 129, label %37
    i32 132, label %38
  ]

24:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %50

25:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %50

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %50

27:                                               ; preds = %22
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, -1
  %31 = zext i1 %30 to i32
  %32 = call i32 @gcc_assert(i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 32, %34
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %22, %27
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %50

38:                                               ; preds = %22
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, -1
  %42 = zext i1 %41 to i32
  %43 = call i32 @gcc_assert(i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @int_log2(i32 %45)
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %83

48:                                               ; preds = %22
  %49 = call i32 (...) @gcc_unreachable()
  br label %50

50:                                               ; preds = %48, %37, %26, %25, %24
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, -1
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %55, 129
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 31
  store i32 %60, i32* %58, align 4
  br label %75

61:                                               ; preds = %54
  %62 = load i32*, i32** %5, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 31
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, i32* %7, align 4
  %70 = icmp eq i32 %69, 136
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %72

72:                                               ; preds = %71, %68
  %73 = load i32*, i32** %5, align 8
  store i32 32, i32* %73, align 4
  br label %74

74:                                               ; preds = %72, %61
  br label %75

75:                                               ; preds = %74, %57
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i8* null, i8** %3, align 8
  br label %83

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %80, %50
  %82 = load i8*, i8** %6, align 8
  store i8* %82, i8** %3, align 8
  br label %83

83:                                               ; preds = %81, %79, %38
  %84 = load i8*, i8** %3, align 8
  ret i8* %84
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @int_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

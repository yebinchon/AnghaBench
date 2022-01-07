; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_computed_jump_p_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_computed_jump_p_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @computed_jump_p_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @computed_jump_p_1(i32 %0) #0 {
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
  switch i32 %10, label %40 [
    i32 132, label %11
    i32 130, label %11
    i32 137, label %12
    i32 135, label %12
    i32 136, label %12
    i32 134, label %12
    i32 128, label %12
    i32 129, label %12
    i32 131, label %13
    i32 133, label %27
  ]

11:                                               ; preds = %1, %1
  store i32 0, i32* %2, align 4
  br label %99

12:                                               ; preds = %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %99

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @XEXP(i32 %14, i32 0)
  %16 = call i32 @GET_CODE(i32 %15)
  %17 = icmp eq i32 %16, 128
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @XEXP(i32 %19, i32 0)
  %21 = call i32 @CONSTANT_POOL_ADDRESS_P(i32 %20)
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %99

27:                                               ; preds = %1
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @XEXP(i32 %28, i32 1)
  %30 = call i32 @computed_jump_p_1(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @XEXP(i32 %33, i32 2)
  %35 = call i32 @computed_jump_p_1(i32 %34)
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %32, %27
  %38 = phi i1 [ true, %27 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %2, align 4
  br label %99

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = call i8* @GET_RTX_FORMAT(i32 %42)
  store i8* %43, i8** %7, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @GET_RTX_LENGTH(i32 %44)
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %95, %41
  %48 = load i32, i32* %5, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %98

50:                                               ; preds = %47
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 101
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @XEXP(i32 %59, i32 %60)
  %62 = call i32 @computed_jump_p_1(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %99

65:                                               ; preds = %58, %50
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 69
  br i1 %72, label %73, label %93

73:                                               ; preds = %65
  store i32 0, i32* %6, align 4
  br label %74

74:                                               ; preds = %89, %73
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @XVECLEN(i32 %76, i32 %77)
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @XVECEXP(i32 %81, i32 %82, i32 %83)
  %85 = call i32 @computed_jump_p_1(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  store i32 1, i32* %2, align 4
  br label %99

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %74

92:                                               ; preds = %74
  br label %93

93:                                               ; preds = %92, %65
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %5, align 4
  br label %47

98:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %87, %64, %37, %23, %12, %11
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32 @CONSTANT_POOL_ADDRESS_P(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

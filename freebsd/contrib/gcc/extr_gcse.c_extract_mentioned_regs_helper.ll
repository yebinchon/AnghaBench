; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_extract_mentioned_regs_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_extract_mentioned_regs_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @extract_mentioned_regs_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @extract_mentioned_regs_helper(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  br label %11

11:                                               ; preds = %55, %24, %2
  %12 = load i64, i64* %4, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %3, align 8
  br label %94

16:                                               ; preds = %11
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @GET_CODE(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %31 [
    i32 129, label %20
    i32 135, label %24
    i32 131, label %27
    i32 130, label %27
    i32 133, label %27
    i32 132, label %27
    i32 134, label %29
    i32 141, label %29
    i32 140, label %29
    i32 138, label %29
    i32 139, label %29
    i32 137, label %29
    i32 128, label %29
    i32 136, label %29
    i32 142, label %29
    i32 143, label %29
  ]

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @alloc_EXPR_LIST(i32 0, i64 %21, i64 %22)
  store i64 %23, i64* %3, align 8
  br label %94

24:                                               ; preds = %16
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @XEXP(i64 %25, i32 0)
  store i64 %26, i64* %4, align 8
  br label %11

27:                                               ; preds = %16, %16, %16, %16
  %28 = call i32 (...) @gcc_unreachable()
  br label %29

29:                                               ; preds = %16, %16, %16, %16, %16, %16, %16, %16, %16, %16, %27
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %3, align 8
  br label %94

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @GET_RTX_LENGTH(i32 %33)
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i8* @GET_RTX_FORMAT(i32 %36)
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %89, %32
  %39 = load i32, i32* %6, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %92

41:                                               ; preds = %38
  %42 = load i8*, i8** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp eq i32 %47, 101
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load i64, i64* %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @XEXP(i64 %50, i32 %51)
  store i64 %52, i64* %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %4, align 8
  br label %11

57:                                               ; preds = %49
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i64 @extract_mentioned_regs_helper(i64 %58, i64 %59)
  store i64 %60, i64* %5, align 8
  br label %88

61:                                               ; preds = %41
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 69
  br i1 %68, label %69, label %87

69:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %70

70:                                               ; preds = %83, %69
  %71 = load i32, i32* %10, align 4
  %72 = load i64, i64* %4, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @XVECLEN(i64 %72, i32 %73)
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load i64, i64* %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %10, align 4
  %80 = call i64 @XVECEXP(i64 %77, i32 %78, i32 %79)
  %81 = load i64, i64* %5, align 8
  %82 = call i64 @extract_mentioned_regs_helper(i64 %80, i64 %81)
  store i64 %82, i64* %5, align 8
  br label %83

83:                                               ; preds = %76
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %70

86:                                               ; preds = %70
  br label %87

87:                                               ; preds = %86, %61
  br label %88

88:                                               ; preds = %87, %57
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %6, align 4
  br label %38

92:                                               ; preds = %38
  %93 = load i64, i64* %5, align 8
  store i64 %93, i64* %3, align 8
  br label %94

94:                                               ; preds = %92, %29, %20, %14
  %95 = load i64, i64* %3, align 8
  ret i64 %95
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @alloc_EXPR_LIST(i32, i64, i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

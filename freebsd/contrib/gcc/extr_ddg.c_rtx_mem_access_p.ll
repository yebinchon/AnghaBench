; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_rtx_mem_access_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ddg.c_rtx_mem_access_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @rtx_mem_access_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtx_mem_access_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %77

11:                                               ; preds = %1
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @MEM_P(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %77

16:                                               ; preds = %11
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @GET_CODE(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i8* @GET_RTX_FORMAT(i32 %19)
  store i8* %20, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @GET_RTX_LENGTH(i32 %21)
  %23 = sub nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %73, %16
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %76

27:                                               ; preds = %24
  %28 = load i8*, i8** %6, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 101
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load i64, i64* %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @XEXP(i64 %36, i32 %37)
  %39 = call i32 @rtx_mem_access_p(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %77

42:                                               ; preds = %35
  br label %72

43:                                               ; preds = %27
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 69
  br i1 %50, label %51, label %71

51:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %67, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @XVECLEN(i64 %54, i32 %55)
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i64, i64* %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @XVECEXP(i64 %59, i32 %60, i32 %61)
  %63 = call i32 @rtx_mem_access_p(i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %77

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %52

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71, %42
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %4, align 4
  br label %24

76:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %76, %65, %41, %15, %10
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

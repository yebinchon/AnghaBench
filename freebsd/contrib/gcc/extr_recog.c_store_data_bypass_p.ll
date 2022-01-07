; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_store_data_bypass_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_recog.c_store_data_bypass_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARALLEL = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @store_data_bypass_p(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @single_set(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @SET_DEST(i32 %15)
  %17 = call i32 @MEM_P(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @single_set(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @SET_DEST(i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @SET_DEST(i32 %28)
  %30 = call i64 @reg_mentioned_p(i32 %27, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %77

33:                                               ; preds = %25
  br label %76

34:                                               ; preds = %20
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @PATTERN(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @GET_CODE(i32 %37)
  %39 = load i64, i64* @PARALLEL, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @gcc_assert(i32 %41)
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %72, %34
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @XVECLEN(i32 %45, i32 0)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %75

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @XVECEXP(i32 %49, i32 0, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i64 @GET_CODE(i32 %52)
  %54 = load i64, i64* @CLOBBER, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %72

57:                                               ; preds = %48
  %58 = load i32, i32* %10, align 4
  %59 = call i64 @GET_CODE(i32 %58)
  %60 = load i64, i64* @SET, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @gcc_assert(i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @SET_DEST(i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @SET_DEST(i32 %66)
  %68 = call i64 @reg_mentioned_p(i32 %65, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %77

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %56
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %43

75:                                               ; preds = %43
  br label %76

76:                                               ; preds = %75, %33
  store i32 1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %70, %32, %19
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @single_set(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @MEM_P(i32) #1

declare dso_local i32 @SET_DEST(i32) #1

declare dso_local i64 @reg_mentioned_p(i32, i32) #1

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

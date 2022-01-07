; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_find_addr_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/rs6000/extr_rs6000.c_find_addr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLUS = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @find_addr_reg(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %3

3:                                                ; preds = %57, %1
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @GET_CODE(i32 %4)
  %6 = load i64, i64* @PLUS, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %58

8:                                                ; preds = %3
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @XEXP(i32 %9, i32 0)
  %11 = call i64 @GET_CODE(i32 %10)
  %12 = load i64, i64* @REG, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @XEXP(i32 %15, i32 0)
  %17 = call i64 @REGNO(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @XEXP(i32 %20, i32 0)
  store i32 %21, i32* %2, align 4
  br label %57

22:                                               ; preds = %14, %8
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @XEXP(i32 %23, i32 1)
  %25 = call i64 @GET_CODE(i32 %24)
  %26 = load i64, i64* @REG, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @XEXP(i32 %29, i32 1)
  %31 = call i64 @REGNO(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @XEXP(i32 %34, i32 1)
  store i32 %35, i32* %2, align 4
  br label %56

36:                                               ; preds = %28, %22
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @XEXP(i32 %37, i32 0)
  %39 = call i64 @CONSTANT_P(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @XEXP(i32 %42, i32 1)
  store i32 %43, i32* %2, align 4
  br label %55

44:                                               ; preds = %36
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @XEXP(i32 %45, i32 1)
  %47 = call i64 @CONSTANT_P(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %2, align 4
  %51 = call i32 @XEXP(i32 %50, i32 0)
  store i32 %51, i32* %2, align 4
  br label %54

52:                                               ; preds = %44
  %53 = call i32 (...) @gcc_unreachable()
  br label %54

54:                                               ; preds = %52, %49
  br label %55

55:                                               ; preds = %54, %41
  br label %56

56:                                               ; preds = %55, %33
  br label %57

57:                                               ; preds = %56, %19
  br label %3

58:                                               ; preds = %3
  %59 = load i32, i32* %2, align 4
  %60 = call i64 @GET_CODE(i32 %59)
  %61 = load i64, i64* @REG, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %2, align 4
  %65 = call i64 @REGNO(i32 %64)
  %66 = icmp ne i64 %65, 0
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi i1 [ false, %58 ], [ %66, %63 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @gcc_assert(i32 %69)
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @REGNO(i32) #1

declare dso_local i64 @CONSTANT_P(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

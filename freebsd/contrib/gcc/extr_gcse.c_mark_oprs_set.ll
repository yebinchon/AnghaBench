; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_mark_oprs_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_gcse.c_mark_oprs_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@CALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mark_oprs_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_oprs_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @PATTERN(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @SET, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @mark_set(i32 %13, i32 %14)
  br label %83

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @PARALLEL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %63

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %59, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @XVECLEN(i32 %24, i32 0)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %62

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @XVECEXP(i32 %28, i32 0, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i64 @GET_CODE(i32 %31)
  %33 = load i64, i64* @SET, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @mark_set(i32 %36, i32 %37)
  br label %58

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @GET_CODE(i32 %40)
  %42 = load i64, i64* @CLOBBER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @mark_clobber(i32 %45, i32 %46)
  br label %57

48:                                               ; preds = %39
  %49 = load i32, i32* %5, align 4
  %50 = call i64 @GET_CODE(i32 %49)
  %51 = load i64, i64* @CALL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @mark_call(i32 %54)
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56, %44
  br label %58

58:                                               ; preds = %57, %35
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %22

62:                                               ; preds = %22
  br label %82

63:                                               ; preds = %16
  %64 = load i32, i32* %3, align 4
  %65 = call i64 @GET_CODE(i32 %64)
  %66 = load i64, i64* @CLOBBER, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @mark_clobber(i32 %69, i32 %70)
  br label %81

72:                                               ; preds = %63
  %73 = load i32, i32* %3, align 4
  %74 = call i64 @GET_CODE(i32 %73)
  %75 = load i64, i64* @CALL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %2, align 4
  %79 = call i32 @mark_call(i32 %78)
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80, %68
  br label %82

82:                                               ; preds = %81, %62
  br label %83

83:                                               ; preds = %82, %12
  ret void
}

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @mark_set(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @mark_clobber(i32, i32) #1

declare dso_local i32 @mark_call(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

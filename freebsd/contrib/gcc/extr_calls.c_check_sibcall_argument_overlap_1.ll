; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_check_sibcall_argument_overlap_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_calls.c_check_sibcall_argument_overlap_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @check_sibcall_argument_overlap_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_sibcall_argument_overlap_1(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @NULL_RTX, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

12:                                               ; preds = %1
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @GET_CODE(i64 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @MEM, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @XEXP(i64 %19, i32 0)
  %21 = load i64, i64* %3, align 8
  %22 = call i32 @GET_MODE(i64 %21)
  %23 = call i32 @GET_MODE_SIZE(i32 %22)
  %24 = call i32 @mem_overlaps_already_clobbered_arg_p(i64 %20, i32 %23)
  store i32 %24, i32* %2, align 4
  br label %79

25:                                               ; preds = %12
  %26 = load i64, i64* %4, align 8
  %27 = call i8* @GET_RTX_FORMAT(i64 %26)
  store i8* %27, i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %73, %25
  %29 = load i32, i32* %5, align 4
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @GET_RTX_LENGTH(i64 %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %78

33:                                               ; preds = %28
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 101
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i64, i64* %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @XEXP(i64 %39, i32 %40)
  %42 = call i32 @check_sibcall_argument_overlap_1(i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %2, align 4
  br label %79

45:                                               ; preds = %38
  br label %72

46:                                               ; preds = %33
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 69
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %67, %51
  %53 = load i32, i32* %6, align 4
  %54 = load i64, i64* %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @XVECLEN(i64 %54, i32 %55)
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %52
  %59 = load i64, i64* %3, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @XVECEXP(i64 %59, i32 %60, i32 %61)
  %63 = call i32 @check_sibcall_argument_overlap_1(i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  store i32 1, i32* %2, align 4
  br label %79

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %52

70:                                               ; preds = %52
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71, %45
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %7, align 8
  br label %28

78:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %65, %44, %18, %11
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @mem_overlaps_already_clobbered_arg_p(i64, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @GET_MODE_SIZE(i32) #1

declare dso_local i32 @GET_MODE(i64) #1

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i64) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

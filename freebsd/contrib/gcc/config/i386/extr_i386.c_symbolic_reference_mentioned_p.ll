; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_symbolic_reference_mentioned_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_symbolic_reference_mentioned_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYMBOL_REF = common dso_local global i64 0, align 8
@LABEL_REF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @symbolic_reference_mentioned_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @GET_CODE(i32 %7)
  %9 = load i64, i64* @SYMBOL_REF, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @GET_CODE(i32 %12)
  %14 = load i64, i64* @LABEL_REF, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %1
  store i32 1, i32* %2, align 4
  br label %78

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @GET_CODE(i32 %18)
  %20 = call i8* @GET_RTX_FORMAT(i64 %19)
  store i8* %20, i8** %4, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @GET_CODE(i32 %21)
  %23 = call i32 @GET_RTX_LENGTH(i64 %22)
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %74, %17
  %26 = load i32, i32* %5, align 4
  %27 = icmp sge i32 %26, 0
  br i1 %27, label %28, label %77

28:                                               ; preds = %25
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 69
  br i1 %35, label %36, label %57

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @XVECLEN(i32 %37, i32 %38)
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %53, %36
  %42 = load i32, i32* %6, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @XVECEXP(i32 %45, i32 %46, i32 %47)
  %49 = call i32 @symbolic_reference_mentioned_p(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %78

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %6, align 4
  br label %41

56:                                               ; preds = %41
  br label %73

57:                                               ; preds = %28
  %58 = load i8*, i8** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 101
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @XEXP(i32 %66, i32 %67)
  %69 = call i32 @symbolic_reference_mentioned_p(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  store i32 1, i32* %2, align 4
  br label %78

72:                                               ; preds = %65, %57
  br label %73

73:                                               ; preds = %72, %56
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %5, align 4
  br label %25

77:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %71, %51, %16
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i64) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

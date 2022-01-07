; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_rtx_addr_varies_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_rtlanal.c_rtx_addr_varies_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MEM = common dso_local global i32 0, align 4
@BLKmode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtx_addr_varies_p(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i64, i64* %4, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @GET_CODE(i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @MEM, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %13
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @GET_MODE(i64 %20)
  %22 = load i64, i64* @BLKmode, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @XEXP(i64 %25, i32 0)
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @rtx_varies_p(i64 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i1 [ true, %19 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %94

33:                                               ; preds = %13
  %34 = load i32, i32* %6, align 4
  %35 = call i8* @GET_RTX_FORMAT(i32 %34)
  store i8* %35, i8** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @GET_RTX_LENGTH(i32 %36)
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %90, %33
  %40 = load i32, i32* %7, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %93

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 101
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load i64, i64* %4, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i64 @XEXP(i64 %51, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @rtx_addr_varies_p(i64 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %94

58:                                               ; preds = %50
  br label %89

59:                                               ; preds = %42
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 69
  br i1 %66, label %67, label %88

67:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %68

68:                                               ; preds = %84, %67
  %69 = load i32, i32* %9, align 4
  %70 = load i64, i64* %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @XVECLEN(i64 %70, i32 %71)
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %68
  %75 = load i64, i64* %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i64 @XVECEXP(i64 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @rtx_addr_varies_p(i64 %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  store i32 1, i32* %3, align 4
  br label %94

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %68

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87, %59
  br label %89

89:                                               ; preds = %88, %58
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %7, align 4
  br label %39

93:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %82, %57, %30, %12
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @rtx_varies_p(i64, i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_find_ltrel_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/s390/extr_s390.c_find_ltrel_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UNSPEC = common dso_local global i64 0, align 8
@UNSPEC_LTREL_BASE = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @find_ltrel_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_ltrel_base(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @GET_CODE(i64 %9)
  %11 = load i64, i64* @UNSPEC, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @XINT(i64 %14, i32 1)
  %16 = load i64, i64* @UNSPEC_LTREL_BASE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @XVECEXP(i64 %19, i32 0, i32 0)
  store i64 %20, i64* %2, align 8
  br label %87

21:                                               ; preds = %13, %1
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @GET_CODE(i64 %22)
  %24 = call i8* @GET_RTX_FORMAT(i64 %23)
  store i8* %24, i8** %6, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @GET_CODE(i64 %25)
  %27 = call i32 @GET_RTX_LENGTH(i64 %26)
  %28 = sub nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %82, %21
  %30 = load i32, i32* %4, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %85

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 101
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load i64, i64* %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i64 @XEXP(i64 %41, i32 %42)
  %44 = call i64 @find_ltrel_base(i64 %43)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, i64* %7, align 8
  store i64 %48, i64* %2, align 8
  br label %87

49:                                               ; preds = %40
  br label %81

50:                                               ; preds = %32
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 69
  br i1 %57, label %58, label %80

58:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %76, %58
  %60 = load i32, i32* %5, align 4
  %61 = load i64, i64* %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @XVECLEN(i64 %61, i32 %62)
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %59
  %66 = load i64, i64* %3, align 8
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i64 @XVECEXP(i64 %66, i32 %67, i32 %68)
  %70 = call i64 @find_ltrel_base(i64 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i64, i64* %8, align 8
  store i64 %74, i64* %2, align 8
  br label %87

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %59

79:                                               ; preds = %59
  br label %80

80:                                               ; preds = %79, %50
  br label %81

81:                                               ; preds = %80, %49
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %4, align 4
  br label %29

85:                                               ; preds = %29
  %86 = load i64, i64* @NULL_RTX, align 8
  store i64 %86, i64* %2, align 8
  br label %87

87:                                               ; preds = %85, %73, %47, %18
  %88 = load i64, i64* %2, align 8
  ret i64 %88
}

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i64 @XINT(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

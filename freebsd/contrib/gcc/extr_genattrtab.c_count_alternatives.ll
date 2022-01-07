; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_count_alternatives.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genattrtab.c_count_alternatives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MATCH_OPERAND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @count_alternatives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_alternatives(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i64 @GET_CODE(i32 %8)
  %10 = load i64, i64* @MATCH_OPERAND, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @XSTR(i32 %13, i32 2)
  %15 = call i32 @n_comma_elts(i32 %14)
  store i32 %15, i32* %2, align 4
  br label %74

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = call i8* @GET_RTX_FORMAT(i64 %18)
  store i8* %19, i8** %7, align 8
  br label %20

20:                                               ; preds = %70, %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @GET_CODE(i32 %22)
  %24 = call i32 @GET_RTX_LENGTH(i64 %23)
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %73

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %7, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  switch i32 %30, label %69 [
    i32 101, label %31
    i32 117, label %31
    i32 69, label %41
    i32 86, label %41
  ]

31:                                               ; preds = %26, %26
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @XEXP(i32 %32, i32 %33)
  %35 = call i32 @count_alternatives(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %2, align 4
  br label %74

40:                                               ; preds = %31
  br label %69

41:                                               ; preds = %26, %26
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32* @XVEC(i32 %42, i32 %43)
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %68

46:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %64, %46
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @XVECLEN(i32 %49, i32 %50)
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @XVECEXP(i32 %54, i32 %55, i32 %56)
  %58 = call i32 @count_alternatives(i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %74

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %47

67:                                               ; preds = %47
  br label %68

68:                                               ; preds = %67, %41
  br label %69

69:                                               ; preds = %68, %26, %40
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %20

73:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %61, %38, %12
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @n_comma_elts(i32) #1

declare dso_local i32 @XSTR(i32, i32) #1

declare dso_local i8* @GET_RTX_FORMAT(i64) #1

declare dso_local i32 @GET_RTX_LENGTH(i64) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i32* @XVEC(i32, i32) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

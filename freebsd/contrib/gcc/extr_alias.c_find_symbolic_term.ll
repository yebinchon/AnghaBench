; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_find_symbolic_term.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_alias.c_find_symbolic_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SYMBOL_REF = common dso_local global i32 0, align 4
@LABEL_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @find_symbolic_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_symbolic_term(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @GET_CODE(i64 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SYMBOL_REF, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @LABEL_REF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %1
  %18 = load i64, i64* %3, align 8
  store i64 %18, i64* %2, align 8
  br label %66

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = call i64 @OBJECT_P(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i64 0, i64* %2, align 8
  br label %66

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = call i8* @GET_RTX_FORMAT(i32 %25)
  store i8* %26, i8** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @GET_RTX_LENGTH(i32 %27)
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %62, %24
  %31 = load i32, i32* %4, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 101
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load i64, i64* %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @XEXP(i64 %42, i32 %43)
  %45 = call i64 @find_symbolic_term(i64 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i64, i64* %7, align 8
  store i64 %49, i64* %2, align 8
  br label %66

50:                                               ; preds = %41
  br label %61

51:                                               ; preds = %33
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 69
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  br label %65

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %4, align 4
  br label %30

65:                                               ; preds = %59, %30
  store i64 0, i64* %2, align 8
  br label %66

66:                                               ; preds = %65, %48, %23, %17
  %67 = load i64, i64* %2, align 8
  ret i64 %67
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @OBJECT_P(i64) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i64 @XEXP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

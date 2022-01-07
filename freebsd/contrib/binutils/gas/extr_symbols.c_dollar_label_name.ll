; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_dollar_label_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_dollar_label_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dollar_label_name.symbol_name_build = internal global [24 x i8] zeroinitializer, align 16
@DOLLAR_LABEL_CHAR = common dso_local global i32 0, align 4
@LOCAL_LABEL_PREFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dollar_label_name(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [20 x i8], align 16
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* %3, align 8
  %10 = icmp sge i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @know(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 1
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i1 [ true, %2 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @know(i32 %20)
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @dollar_label_name.symbol_name_build, i64 0, i64 0), i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %6, align 8
  store i8 76, i8* %22, align 1
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %7, align 8
  store i8 0, i8* %25, align 1
  %27 = load i64, i64* %3, align 8
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %39, %18
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i64, i64* %5, align 8
  %33 = srem i64 %32, 10
  %34 = add nsw i64 %33, 48
  %35 = trunc i64 %34 to i8
  %36 = load i8*, i8** %7, align 8
  store i8 %35, i8* %36, align 1
  %37 = load i64, i64* %5, align 8
  %38 = sdiv i64 %37, 10
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %31
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %7, align 8
  br label %28

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %50, %42
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 -1
  store i8* %45, i8** %7, align 8
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %6, align 8
  store i8 %46, i8* %47, align 1
  %48 = sext i8 %46 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  br label %43

53:                                               ; preds = %43
  %54 = load i32, i32* @DOLLAR_LABEL_CHAR, align 4
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  store i8 %55, i8* %56, align 1
  %58 = getelementptr inbounds [20 x i8], [20 x i8]* %8, i64 0, i64 0
  store i8* %58, i8** %7, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %7, align 8
  store i8 0, i8* %59, align 1
  %61 = load i64, i64* %3, align 8
  %62 = call i32 @dollar_label_instance(i64 %61)
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  store i64 %65, i64* %5, align 8
  br label %66

66:                                               ; preds = %77, %53
  %67 = load i64, i64* %5, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load i64, i64* %5, align 8
  %71 = srem i64 %70, 10
  %72 = add nsw i64 %71, 48
  %73 = trunc i64 %72 to i8
  %74 = load i8*, i8** %7, align 8
  store i8 %73, i8* %74, align 1
  %75 = load i64, i64* %5, align 8
  %76 = sdiv i64 %75, 10
  store i64 %76, i64* %5, align 8
  br label %77

77:                                               ; preds = %69
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %7, align 8
  br label %66

80:                                               ; preds = %66
  br label %81

81:                                               ; preds = %89, %80
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 -1
  store i8* %83, i8** %7, align 8
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %6, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %6, align 8
  store i8 %84, i8* %85, align 1
  %87 = sext i8 %84 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %81

90:                                               ; preds = %81
  ret i8* getelementptr inbounds ([24 x i8], [24 x i8]* @dollar_label_name.symbol_name_build, i64 0, i64 0)
}

declare dso_local i32 @know(i32) #1

declare dso_local i32 @dollar_label_instance(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_check_promotion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libcpp/extr_expr.c_check_promotion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@precision = common dso_local global i32 0, align 4
@CPP_DL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"the left operand of \22%s\22 changes sign when promoted\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"the right operand of \22%s\22 changes sign when promoted\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.op*)* @check_promotion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_promotion(i32* %0, %struct.op* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.op*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.op* %1, %struct.op** %4, align 8
  %5 = load %struct.op*, %struct.op** %4, align 8
  %6 = getelementptr inbounds %struct.op, %struct.op* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.op*, %struct.op** %4, align 8
  %10 = getelementptr inbounds %struct.op, %struct.op* %9, i64 -1
  %11 = getelementptr inbounds %struct.op, %struct.op* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %8, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.op*, %struct.op** %4, align 8
  %18 = getelementptr inbounds %struct.op, %struct.op* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.op*, %struct.op** %4, align 8
  %24 = getelementptr inbounds %struct.op, %struct.op* %23, i64 -1
  %25 = getelementptr inbounds %struct.op, %struct.op* %24, i32 0, i32 1
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @precision, align 4
  %28 = call i32 @CPP_OPTION(i32* %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @num_positive(i64 %30, i32 %28)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %22
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @CPP_DL_WARNING, align 4
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.op*, %struct.op** %4, align 8
  %38 = getelementptr inbounds %struct.op, %struct.op* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @cpp_token_as_text(i32* %36, i32 %39)
  %41 = call i32 @cpp_error(i32* %34, i32 %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %33, %22
  br label %63

43:                                               ; preds = %16
  %44 = load %struct.op*, %struct.op** %4, align 8
  %45 = getelementptr inbounds %struct.op, %struct.op* %44, i32 0, i32 1
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* @precision, align 4
  %48 = call i32 @CPP_OPTION(i32* %46, i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @num_positive(i64 %50, i32 %48)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %62, label %53

53:                                               ; preds = %43
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @CPP_DL_WARNING, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = load %struct.op*, %struct.op** %4, align 8
  %58 = getelementptr inbounds %struct.op, %struct.op* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @cpp_token_as_text(i32* %56, i32 %59)
  %61 = call i32 @cpp_error(i32* %54, i32 %55, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %53, %43
  br label %63

63:                                               ; preds = %15, %62, %42
  ret void
}

declare dso_local i32 @num_positive(i64, i32) #1

declare dso_local i32 @CPP_OPTION(i32*, i32) #1

declare dso_local i32 @cpp_error(i32*, i32, i8*, i32) #1

declare dso_local i32 @cpp_token_as_text(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

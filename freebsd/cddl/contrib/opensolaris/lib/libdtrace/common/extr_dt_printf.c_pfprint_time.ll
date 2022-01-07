; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfprint_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_printf.c_pfprint_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NANOSEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i32*, i8*, i64, i32)* @pfprint_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfprint_time(i32* %0, i32* %1, i8* %2, i32* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [32 x i8], align 16
  %16 = alloca [32 x i8], align 16
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  store i8* %21, i8** %17, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = load i32, i32* @NANOSEC, align 4
  %27 = sdiv i32 %25, %26
  store i32 %27, i32* %19, align 4
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  %29 = call i32 (i32*, i8*, ...) @ctime_r(i32* %19, i8* %28)
  store i32 20, i32* %20, align 4
  br label %30

30:                                               ; preds = %40, %7
  %31 = load i32, i32* %20, align 4
  %32 = icmp slt i32 %31, 24
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %20, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = load i8*, i8** %17, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %17, align 8
  store i8 %37, i8* %38, align 1
  br label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %20, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %20, align 4
  br label %30

43:                                               ; preds = %30
  store i32 3, i32* %20, align 4
  br label %44

44:                                               ; preds = %54, %43
  %45 = load i32, i32* %20, align 4
  %46 = icmp slt i32 %45, 19
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32, i32* %20, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = load i8*, i8** %17, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %17, align 8
  store i8 %51, i8* %52, align 1
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %20, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %20, align 4
  br label %44

57:                                               ; preds = %44
  %58 = load i8*, i8** %17, align 8
  store i8 0, i8* %58, align 1
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i64 0, i64 0
  %63 = call i32 @dt_printf(i32* %59, i32* %60, i8* %61, i8* %62)
  ret i32 %63
}

declare dso_local i32 @ctime_r(i32*, i8*, ...) #1

declare dso_local i32 @dt_printf(i32*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

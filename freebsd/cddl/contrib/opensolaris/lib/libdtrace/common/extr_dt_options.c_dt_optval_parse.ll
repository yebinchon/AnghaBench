; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dt_optval_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_options.c_dt_optval_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @dt_optval_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dt_optval_parse(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %7, align 8
  store i64 0, i64* @errno, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i64, i64* %7, align 8
  %13 = sub i64 %12, 1
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  switch i32 %16, label %29 [
    i32 116, label %17
    i32 84, label %17
    i32 103, label %20
    i32 71, label %20
    i32 109, label %23
    i32 77, label %23
    i32 107, label %26
    i32 75, label %26
  ]

17:                                               ; preds = %2, %2
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 %18, 1024
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %2, %2, %17
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 1024
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %2, %2, %20
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 1024
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %2, %2, %23
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 1024
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %2, %26
  br label %30

30:                                               ; preds = %29
  store i64 0, i64* @errno, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strtoull(i8* %31, i8** %8, i32 0)
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i64, i64* %7, align 8
  %42 = sub i64 %41, 1
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = icmp ne i8* %39, %43
  br i1 %44, label %60, label %45

45:                                               ; preds = %38, %30
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48, %45
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* @errno, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %53, %48, %38
  store i32 -1, i32* %3, align 4
  br label %62

61:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %60
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strtoull(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

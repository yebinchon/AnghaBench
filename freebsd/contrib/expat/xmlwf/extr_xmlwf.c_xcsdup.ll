; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_xmlwf.c_xcsdup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_xmlwf.c_xcsdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*)* @xcsdup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @xcsdup(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %15, %1
  %8 = load i64*, i64** %3, align 8
  %9 = load i32, i32* %5, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %5, align 4
  %11 = sext i32 %9 to i64
  %12 = getelementptr inbounds i64, i64* %8, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  br label %7

16:                                               ; preds = %7
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i64* @malloc(i32 %21)
  store i64* %22, i64** %4, align 8
  %23 = load i64*, i64** %4, align 8
  %24 = icmp eq i64* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i64* null, i64** %2, align 8
  br label %32

26:                                               ; preds = %16
  %27 = load i64*, i64** %4, align 8
  %28 = load i64*, i64** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @memcpy(i64* %27, i64* %28, i32 %29)
  %31 = load i64*, i64** %4, align 8
  store i64* %31, i64** %2, align 8
  br label %32

32:                                               ; preds = %26, %25
  %33 = load i64*, i64** %2, align 8
  ret i64* %33
}

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

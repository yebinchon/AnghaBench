; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_xmlfile.c_resolveSystemId.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/xmlwf/extr_xmlfile.c_resolveSystemId.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i64*, i64**)* @resolveSystemId to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @resolveSystemId(i64* %0, i64* %1, i64** %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i64*, align 8
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64** %2, i64*** %7, align 8
  %9 = load i64**, i64*** %7, align 8
  store i64* null, i64** %9, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i64*, i64** %6, align 8
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @T(i8 signext 47)
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %3
  %18 = load i64*, i64** %6, align 8
  store i64* %18, i64** %4, align 8
  br label %59

19:                                               ; preds = %12
  %20 = load i64*, i64** %5, align 8
  %21 = call i32 @tcslen(i64* %20)
  %22 = load i64*, i64** %6, align 8
  %23 = call i32 @tcslen(i64* %22)
  %24 = add nsw i32 %21, %23
  %25 = add nsw i32 %24, 2
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = call i64 @malloc(i32 %28)
  %30 = inttoptr i64 %29 to i64*
  %31 = load i64**, i64*** %7, align 8
  store i64* %30, i64** %31, align 8
  %32 = load i64**, i64*** %7, align 8
  %33 = load i64*, i64** %32, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %19
  %36 = load i64*, i64** %6, align 8
  store i64* %36, i64** %4, align 8
  br label %59

37:                                               ; preds = %19
  %38 = load i64**, i64*** %7, align 8
  %39 = load i64*, i64** %38, align 8
  %40 = load i64*, i64** %5, align 8
  %41 = call i32 @tcscpy(i64* %39, i64* %40)
  %42 = load i64**, i64*** %7, align 8
  %43 = load i64*, i64** %42, align 8
  store i64* %43, i64** %8, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = call i64 @T(i8 signext 47)
  %46 = call i64* @tcsrchr(i64* %44, i64 %45)
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %37
  %49 = load i64*, i64** %8, align 8
  %50 = call i64 @T(i8 signext 47)
  %51 = call i64* @tcsrchr(i64* %49, i64 %50)
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  store i64* %52, i64** %8, align 8
  br label %53

53:                                               ; preds = %48, %37
  %54 = load i64*, i64** %8, align 8
  %55 = load i64*, i64** %6, align 8
  %56 = call i32 @tcscpy(i64* %54, i64* %55)
  %57 = load i64**, i64*** %7, align 8
  %58 = load i64*, i64** %57, align 8
  store i64* %58, i64** %4, align 8
  br label %59

59:                                               ; preds = %53, %35, %17
  %60 = load i64*, i64** %4, align 8
  ret i64* %60
}

declare dso_local i64 @T(i8 signext) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @tcslen(i64*) #1

declare dso_local i32 @tcscpy(i64*, i64*) #1

declare dso_local i64* @tcsrchr(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

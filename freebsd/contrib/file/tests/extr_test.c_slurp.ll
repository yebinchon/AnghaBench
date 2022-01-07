; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/file/tests/extr_test.c_slurp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/file/tests/extr_test.c_slurp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i64*)* @slurp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @slurp(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  store i64 256, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = trunc i64 %9 to i32
  %11 = call i64 @xrealloc(i8* null, i32 %10)
  %12 = inttoptr i64 %11 to i8*
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @getc(i32* %14)
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %40, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @EOF, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  %25 = icmp eq i8* %21, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = mul i64 %28, 2
  %30 = trunc i64 %29 to i32
  %31 = call i64 @xrealloc(i8* %27, i32 %30)
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %7, align 8
  %33 = load i64, i64* %5, align 8
  %34 = mul i64 %33, 2
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %26, %20
  %36 = load i32, i32* %6, align 4
  %37 = trunc i32 %36 to i8
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %8, align 8
  store i8 %37, i8* %38, align 1
  br label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @getc(i32* %41)
  store i32 %42, i32* %6, align 4
  br label %16

43:                                               ; preds = %16
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = icmp eq i8* %44, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, 1
  %53 = trunc i64 %52 to i32
  %54 = call i64 @xrealloc(i8* %50, i32 %53)
  %55 = inttoptr i64 %54 to i8*
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %49, %43
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %8, align 8
  store i8 0, i8* %57, align 1
  %59 = load i8*, i8** %8, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = load i64*, i64** %4, align 8
  store i64 %63, i64* %64, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = ptrtoint i8* %66 to i64
  %69 = ptrtoint i8* %67 to i64
  %70 = sub i64 %68, %69
  %71 = trunc i64 %70 to i32
  %72 = call i64 @xrealloc(i8* %65, i32 %71)
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** %7, align 8
  %74 = load i8*, i8** %7, align 8
  ret i8* %74
}

declare dso_local i64 @xrealloc(i8*, i32) #1

declare dso_local i32 @getc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

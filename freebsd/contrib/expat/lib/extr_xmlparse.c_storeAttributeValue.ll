; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_storeAttributeValue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/expat/lib/extr_xmlparse.c_storeAttributeValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XML_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@XML_ERROR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i8*, i8*, i32*)* @storeAttributeValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @storeAttributeValue(i32 %0, i32* %1, i32 %2, i8* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i8*, i8** %11, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i32 @appendAttributeValue(i32 %15, i32* %16, i32 %17, i8* %18, i8* %19, i32* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %7, align 4
  br label %49

26:                                               ; preds = %6
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load i32*, i32** %13, align 8
  %31 = call i64 @poolLength(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32*, i32** %13, align 8
  %35 = call i32 @poolLastChar(i32* %34)
  %36 = icmp eq i32 %35, 32
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32*, i32** %13, align 8
  %39 = call i32 @poolChop(i32* %38)
  br label %40

40:                                               ; preds = %37, %33, %29, %26
  %41 = load i32*, i32** %13, align 8
  %42 = call i32 @XML_T(i8 signext 0)
  %43 = call i32 @poolAppendChar(i32* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @XML_ERROR_NO_MEMORY, align 4
  store i32 %46, i32* %7, align 4
  br label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @XML_ERROR_NONE, align 4
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %47, %45, %24
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @appendAttributeValue(i32, i32*, i32, i8*, i8*, i32*) #1

declare dso_local i64 @poolLength(i32*) #1

declare dso_local i32 @poolLastChar(i32*) #1

declare dso_local i32 @poolChop(i32*) #1

declare dso_local i32 @poolAppendChar(i32*, i32) #1

declare dso_local i32 @XML_T(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

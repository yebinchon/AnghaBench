; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_snarf_numeric_literal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cplus-dem.c_snarf_numeric_literal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@char_str = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*)* @snarf_numeric_literal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snarf_numeric_literal(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load i8**, i8*** %4, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 45
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load i8*, i8** @char_str, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 45, i8* %13, align 1
  %14 = load i32*, i32** %5, align 8
  %15 = load i8*, i8** @char_str, align 8
  %16 = call i32 @string_append(i32* %14, i8* %15)
  %17 = load i8**, i8*** %4, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %17, align 8
  br label %31

20:                                               ; preds = %2
  %21 = load i8**, i8*** %4, align 8
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 43
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i8**, i8*** %4, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %27, align 8
  br label %30

30:                                               ; preds = %26, %20
  br label %31

31:                                               ; preds = %30, %11
  %32 = load i8**, i8*** %4, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call i64 @ISDIGIT(i8 zeroext %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %58

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %45, %38
  %40 = load i8**, i8*** %4, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i64 @ISDIGIT(i8 zeroext %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load i8**, i8*** %4, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** @char_str, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 %48, i8* %50, align 1
  %51 = load i32*, i32** %5, align 8
  %52 = load i8*, i8** @char_str, align 8
  %53 = call i32 @string_append(i32* %51, i8* %52)
  %54 = load i8**, i8*** %4, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %54, align 8
  br label %39

57:                                               ; preds = %39
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @string_append(i32*, i8*) #1

declare dso_local i64 @ISDIGIT(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

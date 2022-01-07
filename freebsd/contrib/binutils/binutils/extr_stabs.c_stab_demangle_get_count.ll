; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_get_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_stabs.c_stab_demangle_get_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*)* @stab_demangle_get_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stab_demangle_get_count(i8** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i8**, i8*** %4, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = load i8, i8* %9, align 1
  %11 = call i64 @ISDIGIT(i8 signext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %65

15:                                               ; preds = %2
  %16 = load i8**, i8*** %4, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = sub nsw i32 %19, 48
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i8**, i8*** %4, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %22, align 8
  %25 = load i8**, i8*** %4, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8, i8* %26, align 1
  %28 = call i64 @ISDIGIT(i8 signext %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %15
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  %33 = load i8**, i8*** %4, align 8
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %7, align 8
  br label %35

35:                                               ; preds = %46, %30
  %36 = load i32, i32* %6, align 4
  %37 = mul i32 %36, 10
  store i32 %37, i32* %6, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = sub nsw i32 %40, 48
  %42 = load i32, i32* %6, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %7, align 8
  br label %46

46:                                               ; preds = %35
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = call i64 @ISDIGIT(i8 signext %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %35, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 95
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8**, i8*** %4, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32*, i32** %5, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %51
  br label %63

63:                                               ; preds = %62, %15
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @ISDIGIT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

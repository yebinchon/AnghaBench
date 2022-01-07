; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_numeric_forward.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_numeric_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sort_bfd = common dso_local global i32 0, align 4
@sort_dynamic = common dso_local global i32 0, align 4
@sort_x = common dso_local global i32 0, align 4
@sort_y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @numeric_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @numeric_forward(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @sort_bfd, align 4
  %11 = load i32, i32* @sort_dynamic, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load i32, i32* @sort_x, align 4
  %14 = call i32* @bfd_minisymbol_to_symbol(i32 %10, i32 %11, i8* %12, i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32, i32* @sort_bfd, align 4
  %16 = load i32, i32* @sort_dynamic, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* @sort_y, align 4
  %19 = call i32* @bfd_minisymbol_to_symbol(i32 %15, i32 %16, i8* %17, i32 %18)
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22, %2
  %26 = load i32, i32* @sort_bfd, align 4
  %27 = call i32 @bfd_get_filename(i32 %26)
  %28 = call i32 @bfd_fatal(i32 %27)
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32*, i32** %6, align 8
  %31 = call i32* @bfd_get_section(i32* %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32* @bfd_get_section(i32* %32)
  store i32* %33, i32** %9, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i64 @bfd_is_und_section(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @bfd_is_und_section(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %68

42:                                               ; preds = %37
  br label %64

43:                                               ; preds = %29
  %44 = load i32*, i32** %9, align 8
  %45 = call i64 @bfd_is_und_section(i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %3, align 4
  br label %68

48:                                               ; preds = %43
  %49 = load i32*, i32** %6, align 8
  %50 = call i64 @valueof(i32* %49)
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @valueof(i32* %51)
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @valueof(i32* %55)
  %57 = load i32*, i32** %7, align 8
  %58 = call i64 @valueof(i32* %57)
  %59 = icmp slt i64 %56, %58
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 -1, i32 1
  store i32 %61, i32* %3, align 4
  br label %68

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63, %42
  %65 = load i8*, i8** %4, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @non_numeric_forward(i8* %65, i8* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %54, %47, %41
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32* @bfd_minisymbol_to_symbol(i32, i32, i8*, i32) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i32 @bfd_get_filename(i32) #1

declare dso_local i32* @bfd_get_section(i32*) #1

declare dso_local i64 @bfd_is_und_section(i32*) #1

declare dso_local i64 @valueof(i32*) #1

declare dso_local i32 @non_numeric_forward(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

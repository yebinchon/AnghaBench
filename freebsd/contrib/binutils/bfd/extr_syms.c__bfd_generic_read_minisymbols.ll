; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_syms.c__bfd_generic_read_minisymbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_syms.c__bfd_generic_read_minisymbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bfd_error_no_symbols = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_generic_read_minisymbols(i32* %0, i64 %1, i8** %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32** null, i32*** %11, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @bfd_get_dynamic_symtab_upper_bound(i32* %16)
  store i64 %17, i64* %10, align 8
  br label %21

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call i64 @bfd_get_symtab_upper_bound(i32* %19)
  store i64 %20, i64* %10, align 8
  br label %21

21:                                               ; preds = %18, %15
  %22 = load i64, i64* %10, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %56

25:                                               ; preds = %21
  %26 = load i64, i64* %10, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  br label %65

29:                                               ; preds = %25
  %30 = load i64, i64* %10, align 8
  %31 = call i32** @bfd_malloc(i64 %30)
  store i32** %31, i32*** %11, align 8
  %32 = load i32**, i32*** %11, align 8
  %33 = icmp eq i32** %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %56

35:                                               ; preds = %29
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32*, i32** %6, align 8
  %40 = load i32**, i32*** %11, align 8
  %41 = call i64 @bfd_canonicalize_dynamic_symtab(i32* %39, i32** %40)
  store i64 %41, i64* %12, align 8
  br label %46

42:                                               ; preds = %35
  %43 = load i32*, i32** %6, align 8
  %44 = load i32**, i32*** %11, align 8
  %45 = call i64 @bfd_canonicalize_symtab(i32* %43, i32** %44)
  store i64 %45, i64* %12, align 8
  br label %46

46:                                               ; preds = %42, %38
  %47 = load i64, i64* %12, align 8
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %56

50:                                               ; preds = %46
  %51 = load i32**, i32*** %11, align 8
  %52 = bitcast i32** %51 to i8*
  %53 = load i8**, i8*** %8, align 8
  store i8* %52, i8** %53, align 8
  %54 = load i32*, i32** %9, align 8
  store i32 8, i32* %54, align 4
  %55 = load i64, i64* %12, align 8
  store i64 %55, i64* %5, align 8
  br label %65

56:                                               ; preds = %49, %34, %24
  %57 = load i32, i32* @bfd_error_no_symbols, align 4
  %58 = call i32 @bfd_set_error(i32 %57)
  %59 = load i32**, i32*** %11, align 8
  %60 = icmp ne i32** %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32**, i32*** %11, align 8
  %63 = call i32 @free(i32** %62)
  br label %64

64:                                               ; preds = %61, %56
  store i64 -1, i64* %5, align 8
  br label %65

65:                                               ; preds = %64, %50, %28
  %66 = load i64, i64* %5, align 8
  ret i64 %66
}

declare dso_local i64 @bfd_get_dynamic_symtab_upper_bound(i32*) #1

declare dso_local i64 @bfd_get_symtab_upper_bound(i32*) #1

declare dso_local i32** @bfd_malloc(i64) #1

declare dso_local i64 @bfd_canonicalize_dynamic_symtab(i32*, i32**) #1

declare dso_local i64 @bfd_canonicalize_symtab(i32*, i32**) #1

declare dso_local i32 @bfd_set_error(i32) #1

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

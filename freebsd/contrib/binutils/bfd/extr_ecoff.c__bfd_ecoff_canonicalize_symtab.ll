; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c__bfd_ecoff_canonicalize_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_ecoff.c__bfd_ecoff_canonicalize_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_bfd_ecoff_canonicalize_symtab(i32* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32**, i32*** %5, align 8
  store i32** %9, i32*** %8, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @_bfd_ecoff_slurp_symbol_table(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i64 -1, i64* %3, align 8
  br label %42

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i64 @bfd_get_symcount(i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %42

19:                                               ; preds = %14
  %20 = load i32*, i32** %4, align 8
  %21 = call %struct.TYPE_2__* @ecoff_data(i32* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  br label %24

24:                                               ; preds = %30, %19
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = load i32*, i32** %4, align 8
  %28 = call i64 @bfd_get_symcount(i32* %27)
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32*, i32** %7, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %7, align 8
  %33 = load i32**, i32*** %8, align 8
  %34 = getelementptr inbounds i32*, i32** %33, i32 1
  store i32** %34, i32*** %8, align 8
  store i32* %31, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %24

37:                                               ; preds = %24
  %38 = load i32**, i32*** %8, align 8
  %39 = getelementptr inbounds i32*, i32** %38, i32 1
  store i32** %39, i32*** %8, align 8
  store i32* null, i32** %38, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i64 @bfd_get_symcount(i32* %40)
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %37, %18, %13
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i32 @_bfd_ecoff_slurp_symbol_table(i32*) #1

declare dso_local i64 @bfd_get_symcount(i32*) #1

declare dso_local %struct.TYPE_2__* @ecoff_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

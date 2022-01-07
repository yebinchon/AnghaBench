; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_canonicalize_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_coff_canonicalize_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @coff_canonicalize_symtab(i32* %0, i32** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  store i32* %0, i32** %4, align 8
  store i32** %1, i32*** %5, align 8
  %9 = load i32**, i32*** %5, align 8
  store i32** %9, i32*** %8, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @bfd_coff_slurp_symbol_table(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i64 -1, i64* %3, align 8
  br label %33

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @obj_symbols(i32* %15)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i64 @bfd_get_symcount(i32* %17)
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %24, %14
  %21 = load i32, i32* %6, align 4
  %22 = add i32 %21, -1
  store i32 %22, i32* %6, align 4
  %23 = icmp ugt i32 %21, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %7, align 8
  %27 = load i32**, i32*** %8, align 8
  %28 = getelementptr inbounds i32*, i32** %27, i32 1
  store i32** %28, i32*** %8, align 8
  store i32* %25, i32** %27, align 8
  br label %20

29:                                               ; preds = %20
  %30 = load i32**, i32*** %8, align 8
  store i32* null, i32** %30, align 8
  %31 = load i32*, i32** %4, align 8
  %32 = call i64 @bfd_get_symcount(i32* %31)
  store i64 %32, i64* %3, align 8
  br label %33

33:                                               ; preds = %29, %13
  %34 = load i64, i64* %3, align 8
  ret i64 %34
}

declare dso_local i32 @bfd_coff_slurp_symbol_table(i32*) #1

declare dso_local i32* @obj_symbols(i32*) #1

declare dso_local i64 @bfd_get_symcount(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

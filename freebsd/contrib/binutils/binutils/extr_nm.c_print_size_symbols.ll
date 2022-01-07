; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_print_size_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_nm.c_print_size_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.size_sym = type { i64, i32 }

@bfd_target_elf_flavour = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, %struct.size_sym*, i64, i32*)* @print_size_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_size_symbols(i32* %0, i32 %1, %struct.size_sym* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.size_sym*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.size_sym*, align 8
  %13 = alloca %struct.size_sym*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.size_sym* %2, %struct.size_sym** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32* @bfd_make_empty_symbol(i32* %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @bfd_get_filename(i32* %21)
  %23 = call i32 @bfd_fatal(i32 %22)
  br label %24

24:                                               ; preds = %20, %5
  %25 = load %struct.size_sym*, %struct.size_sym** %8, align 8
  store %struct.size_sym* %25, %struct.size_sym** %12, align 8
  %26 = load %struct.size_sym*, %struct.size_sym** %12, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds %struct.size_sym, %struct.size_sym* %26, i64 %27
  store %struct.size_sym* %28, %struct.size_sym** %13, align 8
  br label %29

29:                                               ; preds = %71, %24
  %30 = load %struct.size_sym*, %struct.size_sym** %12, align 8
  %31 = load %struct.size_sym*, %struct.size_sym** %13, align 8
  %32 = icmp ult %struct.size_sym* %30, %31
  br i1 %32, label %33, label %74

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.size_sym*, %struct.size_sym** %12, align 8
  %37 = getelementptr inbounds %struct.size_sym, %struct.size_sym* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32* @bfd_minisymbol_to_symbol(i32* %34, i32 %35, i32 %38, i32* %39)
  store i32* %40, i32** %14, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %33
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @bfd_get_filename(i32* %44)
  %46 = call i32 @bfd_fatal(i32 %45)
  br label %47

47:                                               ; preds = %43, %33
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @bfd_get_flavour(i32* %48)
  %50 = load i64, i64* @bfd_target_elf_flavour, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.size_sym*, %struct.size_sym** %12, align 8
  %54 = getelementptr inbounds %struct.size_sym, %struct.size_sym* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %15, align 8
  br label %65

56:                                               ; preds = %47
  %57 = load %struct.size_sym*, %struct.size_sym** %12, align 8
  %58 = getelementptr inbounds %struct.size_sym, %struct.size_sym* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @bfd_get_section(i32* %61)
  %63 = call i64 @bfd_section_vma(i32* %60, i32 %62)
  %64 = sub nsw i64 %59, %63
  store i64 %64, i64* %15, align 8
  br label %65

65:                                               ; preds = %56, %52
  %66 = load i32*, i32** %6, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = call i32 @print_symbol(i32* %66, i32* %67, i64 %68, i32* %69)
  br label %71

71:                                               ; preds = %65
  %72 = load %struct.size_sym*, %struct.size_sym** %12, align 8
  %73 = getelementptr inbounds %struct.size_sym, %struct.size_sym* %72, i32 1
  store %struct.size_sym* %73, %struct.size_sym** %12, align 8
  br label %29

74:                                               ; preds = %29
  ret void
}

declare dso_local i32* @bfd_make_empty_symbol(i32*) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32* @bfd_minisymbol_to_symbol(i32*, i32, i32, i32*) #1

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local i64 @bfd_section_vma(i32*, i32) #1

declare dso_local i32 @bfd_get_section(i32*) #1

declare dso_local i32 @print_symbol(i32*, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

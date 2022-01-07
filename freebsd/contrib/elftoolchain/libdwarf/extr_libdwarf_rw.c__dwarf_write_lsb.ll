; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_rw.c__dwarf_write_lsb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_rw.c__dwarf_write_lsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_dwarf_write_lsb(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %10, i64 %13
  store i32* %14, i32** %9, align 8
  %15 = load i32, i32* %8, align 4
  switch i32 %15, label %59 [
    i32 8, label %16
    i32 4, label %37
    i32 2, label %48
    i32 1, label %54
  ]

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 56
  %19 = and i32 %18, 255
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 7
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 48
  %24 = and i32 %23, 255
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 6
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 40
  %29 = and i32 %28, 255
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 32
  %34 = and i32 %33, 255
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %4, %16
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 24
  %40 = and i32 %39, 255
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = ashr i32 %43, 16
  %45 = and i32 %44, 255
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %4, %37
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %4, %48
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, 255
  %57 = load i32*, i32** %9, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 %56, i32* %58, align 4
  br label %60

59:                                               ; preds = %4
  br label %65

60:                                               ; preds = %54
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %61
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %60, %59
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

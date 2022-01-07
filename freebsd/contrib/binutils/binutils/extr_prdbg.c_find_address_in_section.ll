; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_find_address_in_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_prdbg.c_find_address_in_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@found = common dso_local global i64 0, align 8
@SEC_ALLOC = common dso_local global i32 0, align 4
@pc = common dso_local global i64 0, align 8
@filename = common dso_local global i32 0, align 4
@functionname = common dso_local global i32 0, align 4
@line = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i8*)* @find_address_in_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_address_in_section(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32**
  store i32** %11, i32*** %9, align 8
  %12 = load i64, i64* @found, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %48

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @bfd_get_section_flags(i32* %16, i32* %17)
  %19 = load i32, i32* @SEC_ALLOC, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %48

23:                                               ; preds = %15
  %24 = load i32*, i32** %4, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i64 @bfd_get_section_vma(i32* %24, i32* %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* @pc, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp slt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %48

31:                                               ; preds = %23
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @bfd_get_section_size(i32* %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* @pc, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = add nsw i64 %35, %36
  %38 = icmp sge i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %48

40:                                               ; preds = %31
  %41 = load i32*, i32** %4, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = load i32**, i32*** %9, align 8
  %44 = load i64, i64* @pc, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub nsw i64 %44, %45
  %47 = call i64 @bfd_find_nearest_line(i32* %41, i32* %42, i32** %43, i64 %46, i32* @filename, i32* @functionname, i32* @line)
  store i64 %47, i64* @found, align 8
  br label %48

48:                                               ; preds = %40, %39, %30, %22, %14
  ret void
}

declare dso_local i32 @bfd_get_section_flags(i32*, i32*) #1

declare dso_local i64 @bfd_get_section_vma(i32*, i32*) #1

declare dso_local i64 @bfd_get_section_size(i32*) #1

declare dso_local i64 @bfd_find_nearest_line(i32*, i32*, i32**, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

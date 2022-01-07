; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_scan_all_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_dlltool.c_scan_all_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c".idata$4\00", align 1
@HAS_SYMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: no symbols\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @scan_all_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_all_symbols(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @bfd_get_section_by_name(i32* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %52

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @bfd_get_file_flags(i32* %11)
  %13 = load i32, i32* @HAS_SYMS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @bfd_get_filename(i32* %18)
  %20 = call i32 @non_fatal(i32 %17, i32 %19)
  br label %52

21:                                               ; preds = %10
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i64 @bfd_read_minisymbols(i32* %22, i32 %23, i8** %4, i32* %5)
  store i64 %24, i64* %3, align 8
  %25 = load i64, i64* %3, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @bfd_get_filename(i32* %28)
  %30 = call i32 @bfd_fatal(i32 %29)
  br label %31

31:                                               ; preds = %27, %21
  %32 = load i64, i64* %3, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @bfd_get_filename(i32* %36)
  %38 = call i32 @non_fatal(i32 %35, i32 %37)
  br label %52

39:                                               ; preds = %31
  %40 = load i32*, i32** %2, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @filter_symbols(i32* %40, i8* %41, i64 %42, i32 %43)
  store i64 %44, i64* %3, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = load i8*, i8** %4, align 8
  %47 = load i64, i64* %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @scan_filtered_symbols(i32* %45, i8* %46, i64 %47, i32 %48)
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @free(i8* %50)
  br label %52

52:                                               ; preds = %39, %34, %16, %9
  ret void
}

declare dso_local i64 @bfd_get_section_by_name(i32*, i8*) #1

declare dso_local i32 @bfd_get_file_flags(i32*) #1

declare dso_local i32 @non_fatal(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i64 @bfd_read_minisymbols(i32*, i32, i8**, i32*) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i64 @filter_symbols(i32*, i8*, i64, i32) #1

declare dso_local i32 @scan_filtered_symbols(i32*, i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

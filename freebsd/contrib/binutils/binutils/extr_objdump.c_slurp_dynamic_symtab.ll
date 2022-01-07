; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_slurp_dynamic_symtab.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_objdump.c_slurp_dynamic_symtab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DYNAMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: not a dynamic object\00", align 1
@dynsymcount = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32** (i32*)* @slurp_dynamic_symtab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32** @slurp_dynamic_symtab(i32* %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32** null, i32*** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i64 @bfd_get_dynamic_symtab_upper_bound(i32* %6)
  store i64 %7, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @bfd_get_file_flags(i32* %11)
  %13 = load i32, i32* @DYNAMIC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %10
  %17 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @bfd_get_filename(i32* %18)
  %20 = call i32 @non_fatal(i32 %17, i32 %19)
  store i64 0, i64* @dynsymcount, align 8
  store i32** null, i32*** %2, align 8
  br label %43

21:                                               ; preds = %10
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @bfd_get_filename(i32* %22)
  %24 = call i32 @bfd_fatal(i32 %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load i64, i64* %5, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i64, i64* %5, align 8
  %30 = call i32** @xmalloc(i64 %29)
  store i32** %30, i32*** %4, align 8
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32*, i32** %3, align 8
  %33 = load i32**, i32*** %4, align 8
  %34 = call i64 @bfd_canonicalize_dynamic_symtab(i32* %32, i32** %33)
  store i64 %34, i64* @dynsymcount, align 8
  %35 = load i64, i64* @dynsymcount, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @bfd_get_filename(i32* %38)
  %40 = call i32 @bfd_fatal(i32 %39)
  br label %41

41:                                               ; preds = %37, %31
  %42 = load i32**, i32*** %4, align 8
  store i32** %42, i32*** %2, align 8
  br label %43

43:                                               ; preds = %41, %16
  %44 = load i32**, i32*** %2, align 8
  ret i32** %44
}

declare dso_local i64 @bfd_get_dynamic_symtab_upper_bound(i32*) #1

declare dso_local i32 @bfd_get_file_flags(i32*) #1

declare dso_local i32 @non_fatal(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @bfd_get_filename(i32*) #1

declare dso_local i32 @bfd_fatal(i32) #1

declare dso_local i32** @xmalloc(i64) #1

declare dso_local i64 @bfd_canonicalize_dynamic_symtab(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_symbol_find_or_make.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_symbols.c_symbol_find_or_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag_keep_locals = common dso_local global i32 0, align 4
@stdoutput = common dso_local global i32 0, align 4
@undefined_section = common dso_local global i32 0, align 4
@zero_address_frag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @symbol_find_or_make(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32* @symbol_find(i8* %5)
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load i32, i32* @flag_keep_locals, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @stdoutput, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @bfd_is_local_label_name(i32 %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = call i32* @md_undefined_symbol(i8* %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  store i32* %23, i32** %2, align 8
  br label %37

24:                                               ; preds = %17
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* @undefined_section, align 4
  %27 = call i64 @local_symbol_make(i8* %25, i32 %26, i32 0, i32* @zero_address_frag)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  store i32* %29, i32** %2, align 8
  br label %37

30:                                               ; preds = %12, %9
  %31 = load i8*, i8** %3, align 8
  %32 = call i32* @symbol_make(i8* %31)
  store i32* %32, i32** %4, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @symbol_table_insert(i32* %33)
  br label %35

35:                                               ; preds = %30, %1
  %36 = load i32*, i32** %4, align 8
  store i32* %36, i32** %2, align 8
  br label %37

37:                                               ; preds = %35, %24, %22
  %38 = load i32*, i32** %2, align 8
  ret i32* %38
}

declare dso_local i32* @symbol_find(i8*) #1

declare dso_local i64 @bfd_is_local_label_name(i32, i8*) #1

declare dso_local i32* @md_undefined_symbol(i8*) #1

declare dso_local i64 @local_symbol_make(i8*, i32, i32, i32*) #1

declare dso_local i32* @symbol_make(i8*) #1

declare dso_local i32 @symbol_table_insert(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

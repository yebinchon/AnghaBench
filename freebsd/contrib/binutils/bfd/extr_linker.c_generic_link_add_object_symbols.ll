; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_generic_link_add_object_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_generic_link_add_object_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }
%struct.bfd_symbol = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, i32)* @generic_link_add_object_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_link_add_object_symbols(i32* %0, %struct.bfd_link_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.bfd_link_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bfd_symbol**, align 8
  store i32* %0, i32** %5, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = call i32 @generic_link_read_symbols(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %26

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @_bfd_generic_link_get_symcount(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = call %struct.bfd_symbol** @_bfd_generic_link_get_symbols(i32* %18)
  store %struct.bfd_symbol** %19, %struct.bfd_symbol*** %9, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load %struct.bfd_link_info*, %struct.bfd_link_info** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.bfd_symbol**, %struct.bfd_symbol*** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @generic_link_add_symbol_list(i32* %20, %struct.bfd_link_info* %21, i32 %22, %struct.bfd_symbol** %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %15, %13
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @generic_link_read_symbols(i32*) #1

declare dso_local i32 @_bfd_generic_link_get_symcount(i32*) #1

declare dso_local %struct.bfd_symbol** @_bfd_generic_link_get_symbols(i32*) #1

declare dso_local i32 @generic_link_add_symbol_list(i32*, %struct.bfd_link_info*, i32, %struct.bfd_symbol**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

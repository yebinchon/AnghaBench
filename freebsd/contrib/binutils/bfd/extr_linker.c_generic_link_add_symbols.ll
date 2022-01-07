; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_generic_link_add_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c_generic_link_add_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }

@generic_link_check_archive_element_collect = common dso_local global i32 0, align 4
@generic_link_check_archive_element_no_collect = common dso_local global i32 0, align 4
@bfd_error_wrong_format = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bfd_link_info*, i32)* @generic_link_add_symbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_link_add_symbols(i32* %0, %struct.bfd_link_info* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @bfd_get_format(i32* %8)
  switch i32 %9, label %27 [
    i32 128, label %10
    i32 129, label %15
  ]

10:                                               ; preds = %3
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @generic_link_add_object_symbols(i32* %11, %struct.bfd_link_info* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  br label %31

15:                                               ; preds = %3
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @generic_link_check_archive_element_collect, align 4
  br label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @generic_link_check_archive_element_no_collect, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = call i32 @_bfd_generic_link_add_archive_symbols(i32* %16, %struct.bfd_link_info* %17, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @bfd_error_wrong_format, align 4
  %29 = call i32 @bfd_set_error(i32 %28)
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %24, %10
  %32 = load i32, i32* %7, align 4
  ret i32 %32
}

declare dso_local i32 @bfd_get_format(i32*) #1

declare dso_local i32 @generic_link_add_object_symbols(i32*, %struct.bfd_link_info*, i32) #1

declare dso_local i32 @_bfd_generic_link_add_archive_symbols(i32*, %struct.bfd_link_info*, i32) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

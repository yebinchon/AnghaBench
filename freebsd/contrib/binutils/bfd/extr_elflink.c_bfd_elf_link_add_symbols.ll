; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_link_add_symbols.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elflink.c_bfd_elf_link_add_symbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_info = type { i32 }

@bfd_error_wrong_format = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfd_elf_link_add_symbols(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_link_info*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @bfd_get_format(i32* %6)
  switch i32 %7, label %16 [
    i32 128, label %8
    i32 129, label %12
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %11 = call i32 @elf_link_add_object_symbols(i32* %9, %struct.bfd_link_info* %10)
  store i32 %11, i32* %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.bfd_link_info*, %struct.bfd_link_info** %5, align 8
  %15 = call i32 @elf_link_add_archive_symbols(i32* %13, %struct.bfd_link_info* %14)
  store i32 %15, i32* %3, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @bfd_error_wrong_format, align 4
  %18 = call i32 @bfd_set_error(i32 %17)
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %16, %12, %8
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @bfd_get_format(i32*) #1

declare dso_local i32 @elf_link_add_object_symbols(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @elf_link_add_archive_symbols(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @bfd_set_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

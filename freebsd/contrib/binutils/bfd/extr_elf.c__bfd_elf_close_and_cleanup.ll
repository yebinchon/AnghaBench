; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_close_and_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elf.c__bfd_elf_close_and_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bfd_object = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_elf_close_and_cleanup(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i64 @bfd_get_format(i32* %3)
  %5 = load i64, i64* @bfd_object, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = load i32*, i32** %2, align 8
  %9 = call i32* @elf_tdata(i32* %8)
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = load i32*, i32** %2, align 8
  %13 = call i32* @elf_shstrtab(i32* %12)
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32*, i32** %2, align 8
  %17 = call i32* @elf_shstrtab(i32* %16)
  %18 = call i32 @_bfd_elf_strtab_free(i32* %17)
  br label %19

19:                                               ; preds = %15, %11, %7
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @_bfd_dwarf2_cleanup_debug_info(i32* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @_bfd_generic_close_and_cleanup(i32* %23)
  ret i32 %24
}

declare dso_local i64 @bfd_get_format(i32*) #1

declare dso_local i32* @elf_tdata(i32*) #1

declare dso_local i32* @elf_shstrtab(i32*) #1

declare dso_local i32 @_bfd_elf_strtab_free(i32*) #1

declare dso_local i32 @_bfd_dwarf2_cleanup_debug_info(i32*) #1

declare dso_local i32 @_bfd_generic_close_and_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

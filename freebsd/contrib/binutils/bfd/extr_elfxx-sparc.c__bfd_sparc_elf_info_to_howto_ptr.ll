; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_info_to_howto_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_elfxx-sparc.c__bfd_sparc_elf_info_to_howto_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sparc_vtinherit_howto = common dso_local global i32 0, align 4
@sparc_vtentry_howto = common dso_local global i32 0, align 4
@sparc_rev32_howto = common dso_local global i32 0, align 4
@R_SPARC_max_std = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"invalid relocation type %d\00", align 1
@R_SPARC_NONE = common dso_local global i32 0, align 4
@_bfd_sparc_elf_howto_table = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @_bfd_sparc_elf_info_to_howto_ptr(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %8 [
    i32 129, label %5
    i32 130, label %6
    i32 128, label %7
  ]

5:                                                ; preds = %1
  store i32* @sparc_vtinherit_howto, i32** %2, align 8
  br label %23

6:                                                ; preds = %1
  store i32* @sparc_vtentry_howto, i32** %2, align 8
  br label %23

7:                                                ; preds = %1
  store i32* @sparc_rev32_howto, i32** %2, align 8
  br label %23

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i64, i64* @R_SPARC_max_std, align 8
  %11 = trunc i64 %10 to i32
  %12 = icmp uge i32 %9, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @_bfd_error_handler(i32 %14, i32 %15)
  %17 = load i32, i32* @R_SPARC_NONE, align 4
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %13, %8
  %19 = load i32*, i32** @_bfd_sparc_elf_howto_table, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32* %22, i32** %2, align 8
  br label %23

23:                                               ; preds = %18, %7, %6, %5
  %24 = load i32*, i32** %2, align 8
  ret i32* %24
}

declare dso_local i32 @_bfd_error_handler(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

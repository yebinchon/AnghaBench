; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_reloc.c_bfd_default_reloc_type_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_reloc.c_bfd_default_reloc_type_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@bfd_howto_32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @bfd_default_reloc_type_lookup(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %20 [
    i32 128, label %7
  ]

7:                                                ; preds = %2
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.TYPE_2__* @bfd_get_arch_info(i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %17 [
    i32 64, label %12
    i32 32, label %14
    i32 16, label %15
  ]

12:                                               ; preds = %7
  %13 = call i32 (...) @BFD_FAIL()
  br label %14

14:                                               ; preds = %7, %12
  store i32* @bfd_howto_32, i32** %3, align 8
  br label %23

15:                                               ; preds = %7
  %16 = call i32 (...) @BFD_FAIL()
  br label %17

17:                                               ; preds = %7, %15
  %18 = call i32 (...) @BFD_FAIL()
  br label %19

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %2, %19
  %21 = call i32 (...) @BFD_FAIL()
  br label %22

22:                                               ; preds = %20
  store i32* null, i32** %3, align 8
  br label %23

23:                                               ; preds = %22, %14
  %24 = load i32*, i32** %3, align 8
  ret i32* %24
}

declare dso_local %struct.TYPE_2__* @bfd_get_arch_info(i32*) #1

declare dso_local i32 @BFD_FAIL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

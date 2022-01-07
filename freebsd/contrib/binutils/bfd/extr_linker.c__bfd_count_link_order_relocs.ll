; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c__bfd_count_link_order_relocs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_linker.c__bfd_count_link_order_relocs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfd_link_order = type { i64, %struct.bfd_link_order* }

@bfd_section_reloc_link_order = common dso_local global i64 0, align 8
@bfd_symbol_reloc_link_order = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_bfd_count_link_order_relocs(%struct.bfd_link_order* %0) #0 {
  %2 = alloca %struct.bfd_link_order*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfd_link_order*, align 8
  store %struct.bfd_link_order* %0, %struct.bfd_link_order** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.bfd_link_order*, %struct.bfd_link_order** %2, align 8
  store %struct.bfd_link_order* %5, %struct.bfd_link_order** %4, align 8
  br label %6

6:                                                ; preds = %25, %1
  %7 = load %struct.bfd_link_order*, %struct.bfd_link_order** %4, align 8
  %8 = icmp ne %struct.bfd_link_order* %7, null
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load %struct.bfd_link_order*, %struct.bfd_link_order** %4, align 8
  %11 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @bfd_section_reloc_link_order, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.bfd_link_order*, %struct.bfd_link_order** %4, align 8
  %17 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @bfd_symbol_reloc_link_order, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %9
  %22 = load i32, i32* %3, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %15
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.bfd_link_order*, %struct.bfd_link_order** %4, align 8
  %27 = getelementptr inbounds %struct.bfd_link_order, %struct.bfd_link_order* %26, i32 0, i32 1
  %28 = load %struct.bfd_link_order*, %struct.bfd_link_order** %27, align 8
  store %struct.bfd_link_order* %28, %struct.bfd_link_order** %4, align 8
  br label %6

29:                                               ; preds = %6
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

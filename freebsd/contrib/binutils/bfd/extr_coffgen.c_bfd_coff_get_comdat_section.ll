; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_bfd_coff_get_comdat_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/bfd/extr_coffgen.c_bfd_coff_get_comdat_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coff_comdat_info = type { i32 }
%struct.bfd_section = type { i32 }
%struct.TYPE_2__ = type { %struct.coff_comdat_info* }

@bfd_target_coff_flavour = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.coff_comdat_info* @bfd_coff_get_comdat_section(i32* %0, %struct.bfd_section* %1) #0 {
  %3 = alloca %struct.coff_comdat_info*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bfd_section*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bfd_section* %1, %struct.bfd_section** %5, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i64 @bfd_get_flavour(i32* %6)
  %8 = load i64, i64* @bfd_target_coff_flavour, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %13 = call %struct.TYPE_2__* @coff_section_data(i32* %11, %struct.bfd_section* %12)
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %10
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.bfd_section*, %struct.bfd_section** %5, align 8
  %18 = call %struct.TYPE_2__* @coff_section_data(i32* %16, %struct.bfd_section* %17)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.coff_comdat_info*, %struct.coff_comdat_info** %19, align 8
  store %struct.coff_comdat_info* %20, %struct.coff_comdat_info** %3, align 8
  br label %22

21:                                               ; preds = %10, %2
  store %struct.coff_comdat_info* null, %struct.coff_comdat_info** %3, align 8
  br label %22

22:                                               ; preds = %21, %15
  %23 = load %struct.coff_comdat_info*, %struct.coff_comdat_info** %3, align 8
  ret %struct.coff_comdat_info* %23
}

declare dso_local i64 @bfd_get_flavour(i32*) #1

declare dso_local %struct.TYPE_2__* @coff_section_data(i32*, %struct.bfd_section*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pep_exe_fill_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pep_exe_fill_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.bfd_link_info = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@image_base = common dso_local global i32 0, align 4
@reloc_sz = common dso_local global i64 0, align 8
@filler_bfd = common dso_local global i32 0, align 4
@reloc_s = common dso_local global %struct.TYPE_6__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@reloc_d = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pe_exe_fill_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @bfd_get_target(i32* %5)
  %7 = call i32 @pe_dll_id_target(i32 %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_7__* @pe_data(i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @image_base, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %15 = call i32 @generate_reloc(i32* %13, %struct.bfd_link_info* %14)
  %16 = load i64, i64* @reloc_sz, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load i32, i32* @filler_bfd, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @reloc_s, align 8
  %21 = load i64, i64* @reloc_sz, align 8
  %22 = call i32 @bfd_set_section_size(i32 %19, %struct.TYPE_6__* %20, i64 %21)
  %23 = call i32 (...) @lang_reset_memory_regions()
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @lang_size_sections(i32* null, i32 %24)
  %26 = call i32 (...) @ldemul_after_allocation()
  %27 = call i32 (...) @lang_do_assignments()
  br label %28

28:                                               ; preds = %18, %2
  %29 = load i32, i32* @reloc_d, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @reloc_s, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local i32 @pe_dll_id_target(i32) #1

declare dso_local i32 @bfd_get_target(i32*) #1

declare dso_local %struct.TYPE_7__* @pe_data(i32*) #1

declare dso_local i32 @generate_reloc(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @bfd_set_section_size(i32, %struct.TYPE_6__*, i64) #1

declare dso_local i32 @lang_reset_memory_regions(...) #1

declare dso_local i32 @lang_size_sections(i32*, i32) #1

declare dso_local i32 @ldemul_after_allocation(...) #1

declare dso_local i32 @lang_do_assignments(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

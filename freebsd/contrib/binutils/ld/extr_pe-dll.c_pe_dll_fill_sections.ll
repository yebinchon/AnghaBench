; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pe_dll_fill_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/ld/extr_pe-dll.c_pe_dll_fill_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.bfd_link_info = type { i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@image_base = common dso_local global i32 0, align 4
@reloc_sz = common dso_local global i64 0, align 8
@filler_bfd = common dso_local global i32 0, align 4
@reloc_s = common dso_local global %struct.TYPE_7__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@edata_d = common dso_local global i32 0, align 4
@edata_s = common dso_local global %struct.TYPE_9__* null, align 8
@reloc_d = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pe_dll_fill_sections(i32* %0, %struct.bfd_link_info* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bfd_link_info*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.bfd_link_info* %1, %struct.bfd_link_info** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @bfd_get_target(i32* %5)
  %7 = call i32 @pe_dll_id_target(i32 %6)
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_8__* @pe_data(i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
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
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** @reloc_s, align 8
  %21 = load i64, i64* @reloc_sz, align 8
  %22 = call i32 @bfd_set_section_size(i32 %19, %struct.TYPE_7__* %20, i64 %21)
  %23 = call i32 (...) @lang_reset_memory_regions()
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @lang_size_sections(i32* null, i32 %24)
  %26 = call i32 (...) @ldemul_after_allocation()
  %27 = call i32 (...) @lang_do_assignments()
  br label %28

28:                                               ; preds = %18, %2
  %29 = load i32*, i32** %3, align 8
  %30 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %31 = call i32 @fill_edata(i32* %29, %struct.bfd_link_info* %30)
  %32 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %33 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %28
  %37 = load %struct.bfd_link_info*, %struct.bfd_link_info** %4, align 8
  %38 = getelementptr inbounds %struct.bfd_link_info, %struct.bfd_link_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i32*, i32** %3, align 8
  %43 = call %struct.TYPE_8__* @pe_data(i32* %42)
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %41, %36, %28
  %46 = load i32, i32* @edata_d, align 4
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** @edata_s, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @reloc_d, align 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** @reloc_s, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  ret void
}

declare dso_local i32 @pe_dll_id_target(i32) #1

declare dso_local i32 @bfd_get_target(i32*) #1

declare dso_local %struct.TYPE_8__* @pe_data(i32*) #1

declare dso_local i32 @generate_reloc(i32*, %struct.bfd_link_info*) #1

declare dso_local i32 @bfd_set_section_size(i32, %struct.TYPE_7__*, i64) #1

declare dso_local i32 @lang_reset_memory_regions(...) #1

declare dso_local i32 @lang_size_sections(i32*, i32) #1

declare dso_local i32 @ldemul_after_allocation(...) #1

declare dso_local i32 @lang_do_assignments(...) #1

declare dso_local i32 @fill_edata(i32*, %struct.bfd_link_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

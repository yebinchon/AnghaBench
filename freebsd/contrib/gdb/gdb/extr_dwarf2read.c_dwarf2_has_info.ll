; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_has_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_has_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dwarf_info_section = common dso_local global i32* null, align 8
@dwarf_abbrev_section = common dso_local global i32* null, align 8
@dwarf_line_section = common dso_local global i64 0, align 8
@dwarf_str_section = common dso_local global i64 0, align 8
@dwarf_macinfo_section = common dso_local global i64 0, align 8
@dwarf_frame_section = common dso_local global i64 0, align 8
@dwarf_eh_frame_section = common dso_local global i64 0, align 8
@dwarf_ranges_section = common dso_local global i64 0, align 8
@dwarf_loc_section = common dso_local global i64 0, align 8
@dwarf2_locate_sections = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf2_has_info(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  store i32* null, i32** @dwarf_info_section, align 8
  store i32* null, i32** @dwarf_abbrev_section, align 8
  store i64 0, i64* @dwarf_line_section, align 8
  store i64 0, i64* @dwarf_str_section, align 8
  store i64 0, i64* @dwarf_macinfo_section, align 8
  store i64 0, i64* @dwarf_frame_section, align 8
  store i64 0, i64* @dwarf_eh_frame_section, align 8
  store i64 0, i64* @dwarf_ranges_section, align 8
  store i64 0, i64* @dwarf_loc_section, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @dwarf2_locate_sections, align 4
  %5 = call i32 @bfd_map_over_sections(i32* %3, i32 %4, i32* null)
  %6 = load i32*, i32** @dwarf_info_section, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32*, i32** @dwarf_abbrev_section, align 8
  %10 = icmp ne i32* %9, null
  br label %11

11:                                               ; preds = %8, %1
  %12 = phi i1 [ false, %1 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i32 @bfd_map_over_sections(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

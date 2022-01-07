; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_build_psymtabs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_build_psymtabs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@dwarf_info_section = common dso_local global i64 0, align 8
@dwarf_info_buffer = common dso_local global i8* null, align 8
@dwarf_abbrev_section = common dso_local global i64 0, align 8
@dwarf_abbrev_buffer = common dso_local global i8* null, align 8
@dwarf_line_section = common dso_local global i64 0, align 8
@dwarf_line_buffer = common dso_local global i32* null, align 8
@dwarf_str_section = common dso_local global i64 0, align 8
@dwarf_str_buffer = common dso_local global i32* null, align 8
@dwarf_macinfo_section = common dso_local global i64 0, align 8
@dwarf_macinfo_buffer = common dso_local global i32* null, align 8
@dwarf_ranges_section = common dso_local global i64 0, align 8
@dwarf_ranges_buffer = common dso_local global i32* null, align 8
@dwarf_loc_section = common dso_local global i64 0, align 8
@dwarf_loc_buffer = common dso_local global i32* null, align 8
@dwarf_aranges_offset = common dso_local global i64 0, align 8
@dwarf_pubnames_offset = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwarf2_build_psymtabs(%struct.objfile* %0, i32 %1) #0 {
  %3 = alloca %struct.objfile*, align 8
  %4 = alloca i32, align 4
  store %struct.objfile* %0, %struct.objfile** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.objfile*, %struct.objfile** %3, align 8
  %6 = load i64, i64* @dwarf_info_section, align 8
  %7 = call i8* @dwarf2_read_section(%struct.objfile* %5, i64 %6)
  store i8* %7, i8** @dwarf_info_buffer, align 8
  %8 = load %struct.objfile*, %struct.objfile** %3, align 8
  %9 = load i64, i64* @dwarf_abbrev_section, align 8
  %10 = call i8* @dwarf2_read_section(%struct.objfile* %8, i64 %9)
  store i8* %10, i8** @dwarf_abbrev_buffer, align 8
  %11 = load i64, i64* @dwarf_line_section, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.objfile*, %struct.objfile** %3, align 8
  %15 = load i64, i64* @dwarf_line_section, align 8
  %16 = call i8* @dwarf2_read_section(%struct.objfile* %14, i64 %15)
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** @dwarf_line_buffer, align 8
  br label %19

18:                                               ; preds = %2
  store i32* null, i32** @dwarf_line_buffer, align 8
  br label %19

19:                                               ; preds = %18, %13
  %20 = load i64, i64* @dwarf_str_section, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load %struct.objfile*, %struct.objfile** %3, align 8
  %24 = load i64, i64* @dwarf_str_section, align 8
  %25 = call i8* @dwarf2_read_section(%struct.objfile* %23, i64 %24)
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** @dwarf_str_buffer, align 8
  br label %28

27:                                               ; preds = %19
  store i32* null, i32** @dwarf_str_buffer, align 8
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i64, i64* @dwarf_macinfo_section, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.objfile*, %struct.objfile** %3, align 8
  %33 = load i64, i64* @dwarf_macinfo_section, align 8
  %34 = call i8* @dwarf2_read_section(%struct.objfile* %32, i64 %33)
  %35 = bitcast i8* %34 to i32*
  store i32* %35, i32** @dwarf_macinfo_buffer, align 8
  br label %37

36:                                               ; preds = %28
  store i32* null, i32** @dwarf_macinfo_buffer, align 8
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i64, i64* @dwarf_ranges_section, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.objfile*, %struct.objfile** %3, align 8
  %42 = load i64, i64* @dwarf_ranges_section, align 8
  %43 = call i8* @dwarf2_read_section(%struct.objfile* %41, i64 %42)
  %44 = bitcast i8* %43 to i32*
  store i32* %44, i32** @dwarf_ranges_buffer, align 8
  br label %46

45:                                               ; preds = %37
  store i32* null, i32** @dwarf_ranges_buffer, align 8
  br label %46

46:                                               ; preds = %45, %40
  %47 = load i64, i64* @dwarf_loc_section, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.objfile*, %struct.objfile** %3, align 8
  %51 = load i64, i64* @dwarf_loc_section, align 8
  %52 = call i8* @dwarf2_read_section(%struct.objfile* %50, i64 %51)
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** @dwarf_loc_buffer, align 8
  br label %55

54:                                               ; preds = %46
  store i32* null, i32** @dwarf_loc_buffer, align 8
  br label %55

55:                                               ; preds = %54, %49
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %55
  %59 = load %struct.objfile*, %struct.objfile** %3, align 8
  %60 = getelementptr inbounds %struct.objfile, %struct.objfile* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.objfile*, %struct.objfile** %3, align 8
  %66 = getelementptr inbounds %struct.objfile, %struct.objfile* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %64, %55
  %71 = load %struct.objfile*, %struct.objfile** %3, align 8
  %72 = call i32 @init_psymbol_list(%struct.objfile* %71, i32 1024)
  br label %73

73:                                               ; preds = %70, %64, %58
  %74 = load %struct.objfile*, %struct.objfile** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @dwarf2_build_psymtabs_hard(%struct.objfile* %74, i32 %75)
  ret void
}

declare dso_local i8* @dwarf2_read_section(%struct.objfile*, i64) #1

declare dso_local i32 @init_psymbol_list(%struct.objfile*, i32) #1

declare dso_local i32 @dwarf2_build_psymtabs_hard(%struct.objfile*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_locate_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_dwarf2_locate_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }

@INFO_SECTION = common dso_local global i32 0, align 4
@dwarf_info_size = common dso_local global i8* null, align 8
@dwarf_info_section = common dso_local global %struct.TYPE_16__* null, align 8
@ABBREV_SECTION = common dso_local global i32 0, align 4
@dwarf_abbrev_size = common dso_local global i8* null, align 8
@dwarf_abbrev_section = common dso_local global %struct.TYPE_16__* null, align 8
@LINE_SECTION = common dso_local global i32 0, align 4
@dwarf_line_size = common dso_local global i8* null, align 8
@dwarf_line_section = common dso_local global %struct.TYPE_16__* null, align 8
@PUBNAMES_SECTION = common dso_local global i32 0, align 4
@dwarf_pubnames_size = common dso_local global i8* null, align 8
@dwarf_pubnames_section = common dso_local global %struct.TYPE_16__* null, align 8
@ARANGES_SECTION = common dso_local global i32 0, align 4
@dwarf_aranges_size = common dso_local global i8* null, align 8
@dwarf_aranges_section = common dso_local global %struct.TYPE_16__* null, align 8
@LOC_SECTION = common dso_local global i32 0, align 4
@dwarf_loc_size = common dso_local global i8* null, align 8
@dwarf_loc_section = common dso_local global %struct.TYPE_16__* null, align 8
@MACINFO_SECTION = common dso_local global i32 0, align 4
@dwarf_macinfo_size = common dso_local global i8* null, align 8
@dwarf_macinfo_section = common dso_local global %struct.TYPE_16__* null, align 8
@STR_SECTION = common dso_local global i32 0, align 4
@dwarf_str_size = common dso_local global i8* null, align 8
@dwarf_str_section = common dso_local global %struct.TYPE_16__* null, align 8
@FRAME_SECTION = common dso_local global i32 0, align 4
@dwarf_frame_size = common dso_local global i8* null, align 8
@dwarf_frame_section = common dso_local global %struct.TYPE_16__* null, align 8
@EH_FRAME_SECTION = common dso_local global i32 0, align 4
@SEC_HAS_CONTENTS = common dso_local global i32 0, align 4
@dwarf_eh_frame_size = common dso_local global i8* null, align 8
@dwarf_eh_frame_section = common dso_local global %struct.TYPE_16__* null, align 8
@RANGES_SECTION = common dso_local global i32 0, align 4
@dwarf_ranges_size = common dso_local global i8* null, align 8
@dwarf_ranges_section = common dso_local global %struct.TYPE_16__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_16__*, i8*)* @dwarf2_locate_sections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwarf2_locate_sections(i32* %0, %struct.TYPE_16__* %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @INFO_SECTION, align 4
  %12 = call i64 @strcmp(i32 %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = call i8* @bfd_get_section_size(%struct.TYPE_16__* %15)
  store i8* %16, i8** @dwarf_info_size, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** @dwarf_info_section, align 8
  br label %147

18:                                               ; preds = %3
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ABBREV_SECTION, align 4
  %23 = call i64 @strcmp(i32 %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %18
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = call i8* @bfd_get_section_size(%struct.TYPE_16__* %26)
  store i8* %27, i8** @dwarf_abbrev_size, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** @dwarf_abbrev_section, align 8
  br label %146

29:                                               ; preds = %18
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @LINE_SECTION, align 4
  %34 = call i64 @strcmp(i32 %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %38 = call i8* @bfd_get_section_size(%struct.TYPE_16__* %37)
  store i8* %38, i8** @dwarf_line_size, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %39, %struct.TYPE_16__** @dwarf_line_section, align 8
  br label %145

40:                                               ; preds = %29
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PUBNAMES_SECTION, align 4
  %45 = call i64 @strcmp(i32 %43, i32 %44)
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %49 = call i8* @bfd_get_section_size(%struct.TYPE_16__* %48)
  store i8* %49, i8** @dwarf_pubnames_size, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** @dwarf_pubnames_section, align 8
  br label %144

51:                                               ; preds = %40
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ARANGES_SECTION, align 4
  %56 = call i64 @strcmp(i32 %54, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %60 = call i8* @bfd_get_section_size(%struct.TYPE_16__* %59)
  store i8* %60, i8** @dwarf_aranges_size, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %61, %struct.TYPE_16__** @dwarf_aranges_section, align 8
  br label %143

62:                                               ; preds = %51
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @LOC_SECTION, align 4
  %67 = call i64 @strcmp(i32 %65, i32 %66)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %62
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %71 = call i8* @bfd_get_section_size(%struct.TYPE_16__* %70)
  store i8* %71, i8** @dwarf_loc_size, align 8
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %72, %struct.TYPE_16__** @dwarf_loc_section, align 8
  br label %142

73:                                               ; preds = %62
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MACINFO_SECTION, align 4
  %78 = call i64 @strcmp(i32 %76, i32 %77)
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = call i8* @bfd_get_section_size(%struct.TYPE_16__* %81)
  store i8* %82, i8** @dwarf_macinfo_size, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** @dwarf_macinfo_section, align 8
  br label %141

84:                                               ; preds = %73
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @STR_SECTION, align 4
  %89 = call i64 @strcmp(i32 %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %93 = call i8* @bfd_get_section_size(%struct.TYPE_16__* %92)
  store i8* %93, i8** @dwarf_str_size, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** @dwarf_str_section, align 8
  br label %140

95:                                               ; preds = %84
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @FRAME_SECTION, align 4
  %100 = call i64 @strcmp(i32 %98, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = call i8* @bfd_get_section_size(%struct.TYPE_16__* %103)
  store i8* %104, i8** @dwarf_frame_size, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %105, %struct.TYPE_16__** @dwarf_frame_section, align 8
  br label %139

106:                                              ; preds = %95
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @EH_FRAME_SECTION, align 4
  %111 = call i64 @strcmp(i32 %109, i32 %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %106
  %114 = load i32*, i32** %4, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %116 = call i32 @bfd_get_section_flags(i32* %114, %struct.TYPE_16__* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @SEC_HAS_CONTENTS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %123 = call i8* @bfd_get_section_size(%struct.TYPE_16__* %122)
  store i8* %123, i8** @dwarf_eh_frame_size, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %124, %struct.TYPE_16__** @dwarf_eh_frame_section, align 8
  br label %125

125:                                              ; preds = %121, %113
  br label %138

126:                                              ; preds = %106
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @RANGES_SECTION, align 4
  %131 = call i64 @strcmp(i32 %129, i32 %130)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = call i8* @bfd_get_section_size(%struct.TYPE_16__* %134)
  store i8* %135, i8** @dwarf_ranges_size, align 8
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %136, %struct.TYPE_16__** @dwarf_ranges_section, align 8
  br label %137

137:                                              ; preds = %133, %126
  br label %138

138:                                              ; preds = %137, %125
  br label %139

139:                                              ; preds = %138, %102
  br label %140

140:                                              ; preds = %139, %91
  br label %141

141:                                              ; preds = %140, %80
  br label %142

142:                                              ; preds = %141, %69
  br label %143

143:                                              ; preds = %142, %58
  br label %144

144:                                              ; preds = %143, %47
  br label %145

145:                                              ; preds = %144, %36
  br label %146

146:                                              ; preds = %145, %25
  br label %147

147:                                              ; preds = %146, %14
  ret void
}

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i8* @bfd_get_section_size(%struct.TYPE_16__*) #1

declare dso_local i32 @bfd_get_section_flags(i32*, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

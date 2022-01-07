; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_dwarf2_build_frame_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2-frame.c_dwarf2_build_frame_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.objfile = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.comp_unit = type { i32, i8*, i32, i8*, i32*, i64, %struct.TYPE_7__*, i64, %struct.objfile* }
%struct.TYPE_6__ = type { i64 }

@dwarf_eh_frame_section = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [5 x i8] c".got\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c".text\00", align 1
@dwarf_frame_section = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dwarf2_build_frame_info(%struct.objfile* %0) #0 {
  %2 = alloca %struct.objfile*, align 8
  %3 = alloca %struct.comp_unit, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store %struct.objfile* %0, %struct.objfile** %2, align 8
  %7 = load %struct.objfile*, %struct.objfile** %2, align 8
  %8 = getelementptr inbounds %struct.objfile, %struct.objfile* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 6
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %10, align 8
  %11 = load %struct.objfile*, %struct.objfile** %2, align 8
  %12 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 8
  store %struct.objfile* %11, %struct.objfile** %12, align 8
  %13 = load %struct.objfile*, %struct.objfile** %2, align 8
  %14 = getelementptr inbounds %struct.objfile, %struct.objfile* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 %19, 8
  %21 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 7
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load i8*, i8** @dwarf_eh_frame_section, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %75

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = load %struct.objfile*, %struct.objfile** %2, align 8
  %29 = load i8*, i8** @dwarf_eh_frame_section, align 8
  %30 = call i8* @dwarf2_read_section(%struct.objfile* %28, i8* %29)
  %31 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** @dwarf_eh_frame_section, align 8
  %33 = call i8* @bfd_get_section_size(i8* %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load i8*, i8** @dwarf_eh_frame_section, align 8
  %37 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 3
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 6
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = call %struct.TYPE_6__* @bfd_get_section_by_name(%struct.TYPE_7__* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %40, %struct.TYPE_6__** %5, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = icmp ne %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %26
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 7
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %26
  %49 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 6
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call %struct.TYPE_6__* @bfd_get_section_by_name(%struct.TYPE_7__* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %6, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 5
  store i64 %57, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %48
  %60 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %4, align 8
  br label %62

62:                                               ; preds = %71, %59
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %65, i64 %68
  %70 = icmp ult i8* %63, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = load i8*, i8** %4, align 8
  %73 = call i8* @decode_frame_entry(%struct.comp_unit* %3, i8* %72, i32 1)
  store i8* %73, i8** %4, align 8
  br label %62

74:                                               ; preds = %62
  br label %75

75:                                               ; preds = %74, %1
  %76 = load i8*, i8** @dwarf_frame_section, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %105

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 4
  store i32* null, i32** %79, align 8
  %80 = load %struct.objfile*, %struct.objfile** %2, align 8
  %81 = load i8*, i8** @dwarf_frame_section, align 8
  %82 = call i8* @dwarf2_read_section(%struct.objfile* %80, i8* %81)
  %83 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 1
  store i8* %82, i8** %83, align 8
  %84 = load i8*, i8** @dwarf_frame_section, align 8
  %85 = call i8* @bfd_get_section_size(i8* %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 2
  store i32 %86, i32* %87, align 8
  %88 = load i8*, i8** @dwarf_frame_section, align 8
  %89 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 3
  store i8* %88, i8** %89, align 8
  %90 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  store i8* %91, i8** %4, align 8
  br label %92

92:                                               ; preds = %101, %78
  %93 = load i8*, i8** %4, align 8
  %94 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds %struct.comp_unit, %struct.comp_unit* %3, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  %100 = icmp ult i8* %93, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i8*, i8** %4, align 8
  %103 = call i8* @decode_frame_entry(%struct.comp_unit* %3, i8* %102, i32 0)
  store i8* %103, i8** %4, align 8
  br label %92

104:                                              ; preds = %92
  br label %105

105:                                              ; preds = %104, %75
  ret void
}

declare dso_local i8* @dwarf2_read_section(%struct.objfile*, i8*) #1

declare dso_local i8* @bfd_get_section_size(i8*) #1

declare dso_local %struct.TYPE_6__* @bfd_get_section_by_name(%struct.TYPE_7__*, i8*) #1

declare dso_local i8* @decode_frame_entry(%struct.comp_unit*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

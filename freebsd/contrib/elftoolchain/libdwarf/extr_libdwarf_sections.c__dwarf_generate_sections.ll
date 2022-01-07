; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_sections.c__dwarf_generate_sections.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_sections.c__dwarf_generate_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, i32, i8*, i32, i32, i32, i32, i32 }

@DW_DLE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c".debug_pubnames\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c".debug_weaknames\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c".debug_funcnames\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c".debug_typenames\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c".debug_varnames\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_dwarf_generate_sections(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @_dwarf_info_gen(%struct.TYPE_12__* %7, i32* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @DW_DLE_NONE, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %137

14:                                               ; preds = %2
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @_dwarf_abbrev_gen(%struct.TYPE_12__* %15, i32* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @DW_DLE_NONE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %137

22:                                               ; preds = %14
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @_dwarf_lineno_gen(%struct.TYPE_12__* %23, i32* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @DW_DLE_NONE, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %137

30:                                               ; preds = %22
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @_dwarf_frame_gen(%struct.TYPE_12__* %31, i32* %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @DW_DLE_NONE, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %137

38:                                               ; preds = %30
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @_dwarf_arange_gen(%struct.TYPE_12__* %39, i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @DW_DLE_NONE, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %137

46:                                               ; preds = %38
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @_dwarf_macinfo_gen(%struct.TYPE_12__* %47, i32* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @DW_DLE_NONE, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %137

54:                                               ; preds = %46
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 8
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @_dwarf_nametbl_gen(%struct.TYPE_12__* %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %58, i32* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @DW_DLE_NONE, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %137

65:                                               ; preds = %54
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @_dwarf_nametbl_gen(%struct.TYPE_12__* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @DW_DLE_NONE, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %137

76:                                               ; preds = %65
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 @_dwarf_nametbl_gen(%struct.TYPE_12__* %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* @DW_DLE_NONE, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %137

87:                                               ; preds = %76
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @_dwarf_nametbl_gen(%struct.TYPE_12__* %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32* %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @DW_DLE_NONE, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %137

98:                                               ; preds = %87
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @_dwarf_nametbl_gen(%struct.TYPE_12__* %99, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %102, i32* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* @DW_DLE_NONE, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %98
  %108 = load i32, i32* %6, align 4
  store i32 %108, i32* %3, align 4
  br label %137

109:                                              ; preds = %98
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @_dwarf_strtab_gen(%struct.TYPE_12__* %110, i32* %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* @DW_DLE_NONE, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %3, align 4
  br label %137

117:                                              ; preds = %109
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @_dwarf_reloc_gen(%struct.TYPE_12__* %118, i32* %119)
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* @DW_DLE_NONE, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  br label %137

125:                                              ; preds = %117
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = call i8* @STAILQ_FIRST(i32* %127)
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 3
  store i8* %128, i8** %130, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = call i8* @STAILQ_FIRST(i32* %132)
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %125, %123, %115, %107, %96, %85, %74, %63, %52, %44, %36, %28, %20, %12
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @_dwarf_info_gen(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @_dwarf_abbrev_gen(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @_dwarf_lineno_gen(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @_dwarf_frame_gen(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @_dwarf_arange_gen(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @_dwarf_macinfo_gen(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @_dwarf_nametbl_gen(%struct.TYPE_12__*, i8*, i32, i32*) #1

declare dso_local i32 @_dwarf_strtab_gen(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @_dwarf_reloc_gen(%struct.TYPE_12__*, i32*) #1

declare dso_local i8* @STAILQ_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

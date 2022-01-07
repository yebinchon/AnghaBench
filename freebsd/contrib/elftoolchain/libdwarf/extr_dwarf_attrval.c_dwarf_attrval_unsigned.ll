; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_attrval.c_dwarf_attrval_unsigned.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_attrval.c_dwarf_attrval_unsigned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_AT_type = common dso_local global i64 0, align 8
@DW_AT_abstract_origin = common dso_local global i64 0, align 8
@DW_AT_specification = common dso_local global i64 0, align 8
@DW_DLA_DIE = common dso_local global i32 0, align 4
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_ATTR_FORM_BAD = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_attrval_unsigned(%struct.TYPE_11__* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  br label %22

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32* [ %20, %17 ], [ null, %21 ]
  store i32* %23, i32** %13, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = icmp eq %struct.TYPE_11__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i64*, i64** %8, align 8
  %28 = icmp eq i64* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26, %22
  %30 = load i32*, i32** %13, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %33 = call i32 @DWARF_SET_ERROR(i32* %30, i32* %31, i32 %32)
  %34 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %34, i32* %5, align 4
  br label %145

35:                                               ; preds = %26
  %36 = load i64*, i64** %8, align 8
  store i64 0, i64* %36, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %11, align 8
  br label %37

37:                                               ; preds = %99, %35
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call %struct.TYPE_12__* @_dwarf_attr_find(%struct.TYPE_11__* %38, i64 %39)
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %10, align 8
  %41 = icmp ne %struct.TYPE_12__* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %37
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @DW_AT_type, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42, %37
  br label %100

47:                                               ; preds = %42
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %49 = load i64, i64* @DW_AT_abstract_origin, align 8
  %50 = call %struct.TYPE_12__* @_dwarf_attr_find(%struct.TYPE_11__* %48, i64 %49)
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %10, align 8
  %51 = icmp eq %struct.TYPE_12__* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %54 = load i64, i64* @DW_AT_specification, align 8
  %55 = call %struct.TYPE_12__* @_dwarf_attr_find(%struct.TYPE_11__* %53, i64 %54)
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %10, align 8
  %56 = icmp eq %struct.TYPE_12__* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %100

58:                                               ; preds = %52, %47
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %93 [
    i32 133, label %62
    i32 132, label %62
    i32 131, label %62
    i32 130, label %62
    i32 129, label %62
  ]

62:                                               ; preds = %58, %58, %58, %58, %58
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %12, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %70 = icmp eq %struct.TYPE_11__* %69, null
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %14, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call %struct.TYPE_11__* @_dwarf_die_find(%struct.TYPE_11__* %72, i64 %73)
  store %struct.TYPE_11__* %74, %struct.TYPE_11__** %11, align 8
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %62
  %78 = load i32*, i32** %13, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = load i32, i32* @DW_DLA_DIE, align 4
  %81 = call i32 @dwarf_dealloc(i32* %78, %struct.TYPE_11__* %79, i32 %80)
  br label %82

82:                                               ; preds = %77, %62
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %84 = icmp eq %struct.TYPE_11__* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load i32*, i32** %13, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %89 = call i32 @DWARF_SET_ERROR(i32* %86, i32* %87, i32 %88)
  %90 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %90, i32* %5, align 4
  br label %145

91:                                               ; preds = %82
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %6, align 8
  br label %99

93:                                               ; preds = %58
  %94 = load i32*, i32** %13, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load i32, i32* @DW_DLE_ATTR_FORM_BAD, align 4
  %97 = call i32 @DWARF_SET_ERROR(i32* %94, i32* %95, i32 %96)
  %98 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %98, i32* %5, align 4
  br label %145

99:                                               ; preds = %91
  br label %37

100:                                              ; preds = %57, %46
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %102 = icmp eq %struct.TYPE_12__* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32*, i32** %13, align 8
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %107 = call i32 @DWARF_SET_ERROR(i32* %104, i32* %105, i32 %106)
  %108 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %108, i32* %5, align 4
  br label %145

109:                                              ; preds = %100
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  switch i32 %112, label %121 [
    i32 138, label %113
    i32 137, label %113
    i32 136, label %113
    i32 135, label %113
    i32 134, label %113
    i32 128, label %113
    i32 133, label %113
    i32 132, label %113
    i32 131, label %113
    i32 130, label %113
    i32 129, label %113
  ]

113:                                              ; preds = %109, %109, %109, %109, %109, %109, %109, %109, %109, %109, %109
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %8, align 8
  store i64 %119, i64* %120, align 8
  br label %135

121:                                              ; preds = %109
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %123 = icmp ne %struct.TYPE_11__* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i32*, i32** %13, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %127 = load i32, i32* @DW_DLA_DIE, align 4
  %128 = call i32 @dwarf_dealloc(i32* %125, %struct.TYPE_11__* %126, i32 %127)
  br label %129

129:                                              ; preds = %124, %121
  %130 = load i32*, i32** %13, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = load i32, i32* @DW_DLE_ATTR_FORM_BAD, align 4
  %133 = call i32 @DWARF_SET_ERROR(i32* %130, i32* %131, i32 %132)
  %134 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %134, i32* %5, align 4
  br label %145

135:                                              ; preds = %113
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %137 = icmp ne %struct.TYPE_11__* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32*, i32** %13, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %141 = load i32, i32* @DW_DLA_DIE, align 4
  %142 = call i32 @dwarf_dealloc(i32* %139, %struct.TYPE_11__* %140, i32 %141)
  br label %143

143:                                              ; preds = %138, %135
  %144 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %143, %129, %103, %93, %85, %29
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @DWARF_SET_ERROR(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_12__* @_dwarf_attr_find(%struct.TYPE_11__*, i64) #1

declare dso_local %struct.TYPE_11__* @_dwarf_die_find(%struct.TYPE_11__*, i64) #1

declare dso_local i32 @dwarf_dealloc(i32*, %struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

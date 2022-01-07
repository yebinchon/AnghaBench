; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_die.c_dwarf_siblingof_b.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_dwarf_die.c_dwarf_siblingof_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_23__*, %struct.TYPE_23__*, i32*, i32* }
%struct.TYPE_23__ = type { i32, i32, i64, i32 }
%struct.TYPE_21__ = type { i32, i64, %struct.TYPE_19__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }

@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLV_ERROR = common dso_local global i32 0, align 4
@DW_DLE_DIE_NO_CU_CONTEXT = common dso_local global i32 0, align 4
@DW_CHILDREN_no = common dso_local global i64 0, align 8
@DW_AT_sibling = common dso_local global i32 0, align 4
@DW_FORM_ref_addr = common dso_local global i64 0, align 8
@DW_DLE_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLV_NO_ENTRY = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwarf_siblingof_b(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, %struct.TYPE_21__** %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_23__*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__** %2, %struct.TYPE_21__*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %19 = icmp eq %struct.TYPE_22__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %22 = icmp eq %struct.TYPE_21__** %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20, %5
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %27 = call i32 @DWARF_SET_ERROR(%struct.TYPE_22__* %24, i32* %25, i32 %26)
  %28 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %28, i32* %6, align 4
  br label %170

29:                                               ; preds = %20
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  br label %40

36:                                               ; preds = %29
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32* [ %35, %32 ], [ %39, %36 ]
  store i32* %41, i32** %14, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %46, align 8
  br label %52

48:                                               ; preds = %40
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %50, align 8
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi %struct.TYPE_23__* [ %47, %44 ], [ %51, %48 ]
  store %struct.TYPE_23__* %53, %struct.TYPE_23__** %12, align 8
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %55 = icmp eq %struct.TYPE_23__* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* @DW_DLE_DIE_NO_CU_CONTEXT, align 4
  %60 = call i32 @DWARF_SET_ERROR(%struct.TYPE_22__* %57, i32* %58, i32 %59)
  %61 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %61, i32* %6, align 4
  br label %170

62:                                               ; preds = %52
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %64 = icmp eq %struct.TYPE_21__* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 @dwarf_offdie_b(%struct.TYPE_22__* %66, i32 %69, i64 %70, %struct.TYPE_21__** %71, i32* %72)
  store i32 %73, i32* %6, align 4
  br label %170

74:                                               ; preds = %62
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %75, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %74
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %86 = call i32 @DWARF_SET_ERROR(%struct.TYPE_22__* %83, i32* %84, i32 %85)
  %87 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %87, i32* %6, align 4
  br label %170

88:                                               ; preds = %74
  store i32 0, i32* %17, align 4
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @DW_CHILDREN_no, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %15, align 8
  br label %135

100:                                              ; preds = %88
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %102 = load i32, i32* @DW_AT_sibling, align 4
  %103 = call %struct.TYPE_24__* @_dwarf_attr_find(%struct.TYPE_21__* %101, i32 %102)
  store %struct.TYPE_24__* %103, %struct.TYPE_24__** %13, align 8
  %104 = icmp ne %struct.TYPE_24__* %103, null
  br i1 %104, label %105, label %130

105:                                              ; preds = %100
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DW_FORM_ref_addr, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %117, %120
  store i64 %121, i64* %15, align 8
  br label %129

122:                                              ; preds = %105
  %123 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i64 0
  %127 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %15, align 8
  br label %129

129:                                              ; preds = %122, %111
  br label %134

130:                                              ; preds = %100
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %15, align 8
  store i32 1, i32* %17, align 4
  br label %134

134:                                              ; preds = %130, %129
  br label %135

135:                                              ; preds = %134, %96
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32*, i32** %14, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i64, i64* %15, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %9, align 8
  %149 = load i32, i32* %17, align 4
  %150 = load i32*, i32** %11, align 8
  %151 = call i32 @_dwarf_die_parse(i32 %138, i32* %139, %struct.TYPE_23__* %140, i32 %143, i64 %144, i32 %147, %struct.TYPE_21__** %148, i32 %149, i32* %150)
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %135
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* @DW_DLE_NO_ENTRY, align 4
  %159 = call i32 @DWARF_SET_ERROR(%struct.TYPE_22__* %156, i32* %157, i32 %158)
  %160 = load i32, i32* @DW_DLV_NO_ENTRY, align 4
  store i32 %160, i32* %6, align 4
  br label %170

161:                                              ; preds = %135
  %162 = load i32, i32* %16, align 4
  %163 = load i32, i32* @DW_DLE_NONE, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = load i32, i32* @DW_DLV_ERROR, align 4
  store i32 %166, i32* %6, align 4
  br label %170

167:                                              ; preds = %161
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* @DW_DLV_OK, align 4
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %168, %165, %155, %82, %65, %56, %23
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_22__*, i32*, i32) #1

declare dso_local i32 @dwarf_offdie_b(%struct.TYPE_22__*, i32, i64, %struct.TYPE_21__**, i32*) #1

declare dso_local %struct.TYPE_24__* @_dwarf_attr_find(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @_dwarf_die_parse(i32, i32*, %struct.TYPE_23__*, i32, i64, i32, %struct.TYPE_21__**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

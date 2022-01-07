; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_loclist.c__dwarf_loclist_add_locdesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_loclist.c__dwarf_loclist_add_locdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 (i64, i64*, i32)* }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64 }

@DW_DLE_DEBUG_LOC_SECTION_SHORT = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, %struct.TYPE_12__*, i64*, %struct.TYPE_13__**, i32*, i64*, i32*)* @_dwarf_loclist_add_locdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwarf_loclist_add_locdesc(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, %struct.TYPE_12__* %2, i64* %3, %struct.TYPE_13__** %4, i32* %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_13__**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %11, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %12, align 8
  store i64* %3, i64** %13, align 8
  store %struct.TYPE_13__** %4, %struct.TYPE_13__*** %14, align 8
  store i32* %5, i32** %15, align 8
  store i64* %6, i64** %16, align 8
  store i32* %7, i32** %17, align 8
  %23 = load i64*, i64** %16, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %8
  %26 = load i64*, i64** %16, align 8
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %25, %8
  store i32 0, i32* %20, align 4
  br label %28

28:                                               ; preds = %190, %27
  %29 = load i64*, i64** %13, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %193

35:                                               ; preds = %28
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i64 (i64, i64*, i32)*, i64 (i64, i64*, i32)** %37, align 8
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64*, i64** %13, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 %38(i64 %41, i64* %42, i32 %45)
  store i64 %46, i64* %18, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i64 (i64, i64*, i32)*, i64 (i64, i64*, i32)** %48, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %13, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 %49(i64 %52, i64* %53, i32 %56)
  store i64 %57, i64* %19, align 8
  %58 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %14, align 8
  %59 = icmp ne %struct.TYPE_13__** %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %35
  %61 = load i64, i64* %18, align 8
  %62 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %14, align 8
  %63 = load i32, i32* %20, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %62, i64 %64
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  store i64 %61, i64* %67, align 8
  %68 = load i64, i64* %19, align 8
  %69 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %14, align 8
  %70 = load i32, i32* %20, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %69, i64 %71
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  store i64 %68, i64* %74, align 8
  br label %75

75:                                               ; preds = %60, %35
  %76 = load i64*, i64** %16, align 8
  %77 = icmp ne i64* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 2, %81
  %83 = sext i32 %82 to i64
  %84 = load i64*, i64** %16, align 8
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %83
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %78, %75
  %88 = load i64, i64* %18, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i64, i64* %19, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32, i32* %20, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %20, align 4
  br label %193

96:                                               ; preds = %90, %87
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 4
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i64, i64* %18, align 8
  %103 = icmp eq i64 %102, 4294967295
  br i1 %103, label %112, label %104

104:                                              ; preds = %101, %96
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 8
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i64, i64* %18, align 8
  %111 = icmp eq i64 %110, -1
  br i1 %111, label %112, label %113

112:                                              ; preds = %109, %101
  br label %190

113:                                              ; preds = %109, %104
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64 (i64, i64*, i32)*, i64 (i64, i64*, i32)** %115, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64*, i64** %13, align 8
  %121 = call i64 %116(i64 %119, i64* %120, i32 2)
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %21, align 4
  %123 = load i64*, i64** %13, align 8
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %21, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp sgt i64 %127, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %113
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %134 = load i32*, i32** %17, align 8
  %135 = load i32, i32* @DW_DLE_DEBUG_LOC_SECTION_SHORT, align 4
  %136 = call i32 @DWARF_SET_ERROR(%struct.TYPE_14__* %133, i32* %134, i32 %135)
  %137 = load i32, i32* @DW_DLE_DEBUG_LOC_SECTION_SHORT, align 4
  store i32 %137, i32* %9, align 4
  br label %201

138:                                              ; preds = %113
  %139 = load i64*, i64** %16, align 8
  %140 = icmp ne i64* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i32, i32* %21, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64*, i64** %16, align 8
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, %143
  store i64 %146, i64* %144, align 8
  br label %147

147:                                              ; preds = %141, %138
  %148 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %14, align 8
  %149 = icmp ne %struct.TYPE_13__** %148, null
  br i1 %149, label %150, label %184

150:                                              ; preds = %147
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %152 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %14, align 8
  %153 = load i32, i32* %20, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %152, i64 %154
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %155, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64*, i64** %13, align 8
  %161 = load i64, i64* %160, align 8
  %162 = add nsw i64 %159, %161
  %163 = load i32, i32* %21, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 4
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 4, i32 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %17, align 8
  %177 = call i32 @_dwarf_loc_fill_locdesc(%struct.TYPE_14__* %151, %struct.TYPE_13__* %156, i64 %162, i32 %163, i32 %166, i32 %172, i32 %175, i32* %176)
  store i32 %177, i32* %22, align 4
  %178 = load i32, i32* %22, align 4
  %179 = load i32, i32* @DW_DLE_NONE, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %150
  %182 = load i32, i32* %22, align 4
  store i32 %182, i32* %9, align 4
  br label %201

183:                                              ; preds = %150
  br label %184

184:                                              ; preds = %183, %147
  %185 = load i32, i32* %21, align 4
  %186 = sext i32 %185 to i64
  %187 = load i64*, i64** %13, align 8
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, %186
  store i64 %189, i64* %187, align 8
  br label %190

190:                                              ; preds = %184, %112
  %191 = load i32, i32* %20, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %20, align 4
  br label %28

193:                                              ; preds = %93, %28
  %194 = load i32*, i32** %15, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %20, align 4
  %198 = load i32*, i32** %15, align 8
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %196, %193
  %200 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %200, i32* %9, align 4
  br label %201

201:                                              ; preds = %199, %181, %132
  %202 = load i32, i32* %9, align 4
  ret i32 %202
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @_dwarf_loc_fill_locdesc(%struct.TYPE_14__*, %struct.TYPE_13__*, i64, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

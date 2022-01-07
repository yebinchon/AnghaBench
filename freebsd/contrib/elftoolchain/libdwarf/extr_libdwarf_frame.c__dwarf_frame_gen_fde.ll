; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_frame.c__dwarf_frame_gen_fde.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_frame.c__dwarf_frame_gen_fde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 (i32, i64*, i32, i32)* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_14__ = type { i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }

@dwarf_drt_data_reloc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c".debug_frame\00", align 1
@DW_CFA_nop = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_13__*, i32*, %struct.TYPE_14__*, i32*)* @_dwarf_frame_gen_fde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwarf_frame_gen_fde(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, i32* %2, %struct.TYPE_14__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_14__* %3, %struct.TYPE_14__** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %19 = icmp ne %struct.TYPE_13__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32*, i32** %9, align 8
  %22 = icmp ne i32* %21, null
  br label %23

23:                                               ; preds = %20, %17, %5
  %24 = phi i1 [ false, %17 ], [ false, %5 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %28 = icmp ne %struct.TYPE_14__* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 10
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = icmp ne %struct.TYPE_12__* %32, null
  br label %34

34:                                               ; preds = %29, %23
  %35 = phi i1 [ false, %23 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %13, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  store i32 0, i32* %44, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 10
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @WRITE_VALUE(i32 %54, i32 4)
  %56 = call i32 @RCHECK(i32 %55)
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = load i32, i32* @dwarf_drt_data_reloc, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 9
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @_dwarf_reloc_entry_add(%struct.TYPE_15__* %57, i32* %58, %struct.TYPE_13__* %59, i32 %60, i32 4, i64 %63, i32 0, i32 %66, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %67)
  %69 = call i32 @RCHECK(i32 %68)
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = load i32, i32* @dwarf_drt_data_reloc, align 4
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @_dwarf_reloc_entry_add(%struct.TYPE_15__* %70, i32* %71, %struct.TYPE_13__* %72, i32 %73, i32 %76, i64 %79, i32 %82, i32 %85, i8* null, i32* %86)
  %88 = call i32 @RCHECK(i32 %87)
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp sgt i64 %91, 0
  br i1 %92, label %93, label %118

93:                                               ; preds = %34
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %95 = load i32*, i32** %9, align 8
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 7
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %11, align 8
  %116 = call i32 @_dwarf_reloc_entry_add_pair(%struct.TYPE_15__* %94, i32* %95, %struct.TYPE_13__* %96, i32 %99, i64 %102, i32 %105, i64 %108, i32 %111, i32 %114, i32* %115)
  %117 = call i32 @RCHECK(i32 %116)
  br label %127

118:                                              ; preds = %34
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @WRITE_VALUE(i32 %121, i32 %124)
  %126 = call i32 @RCHECK(i32 %125)
  br label %127

127:                                              ; preds = %118, %93
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @WRITE_BLOCK(i32 %130, i32 %133)
  %135 = call i32 @RCHECK(i32 %134)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = sub nsw i64 %138, %141
  %143 = sub nsw i64 %142, 4
  store i64 %143, i64* %12, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @roundup(i64 %144, i32 %147)
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %159, %127
  %152 = load i64, i64* %12, align 8
  %153 = add nsw i64 %152, 1
  store i64 %153, i64* %12, align 8
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = icmp slt i64 %152, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = load i32, i32* @DW_CFA_nop, align 4
  %161 = call i32 @WRITE_VALUE(i32 %160, i32 1)
  %162 = call i32 @RCHECK(i32 %161)
  br label %151

163:                                              ; preds = %151
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  %166 = load i32 (i32, i64*, i32, i32)*, i32 (i32, i64*, i32, i32)** %165, align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 %166(i32 %169, i64* %13, i32 %172, i32 4)
  %174 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %174, i32* %6, align 4
  br label %177

175:                                              ; No predecessors!
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %175, %163
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @RCHECK(i32) #1

declare dso_local i32 @WRITE_VALUE(i32, i32) #1

declare dso_local i32 @_dwarf_reloc_entry_add(%struct.TYPE_15__*, i32*, %struct.TYPE_13__*, i32, i32, i64, i32, i32, i8*, i32*) #1

declare dso_local i32 @_dwarf_reloc_entry_add_pair(%struct.TYPE_15__*, i32*, %struct.TYPE_13__*, i32, i64, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @WRITE_BLOCK(i32, i32) #1

declare dso_local i32 @roundup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

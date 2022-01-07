; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_init.c__dwarf_consumer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_init.c__dwarf_consumer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_16__*, i32, i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_16__ = type { i32*, i32, i32, i32 }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64 (i8*)*, i32 (i8*)*, i64 (i8*, i32, %struct.TYPE_13__*, i32*)*, i64 (i8*, i32, i32*, i32*)*, i32 (i8*)*, i32 (i8*)* }
%struct.TYPE_13__ = type { i32*, i32, i32 }

@DW_OBJECT_MSB = common dso_local global i64 0, align 8
@_dwarf_read_msb = common dso_local global i32 0, align 4
@_dwarf_write_msb = common dso_local global i32 0, align 4
@_dwarf_decode_msb = common dso_local global i32 0, align 4
@_dwarf_read_lsb = common dso_local global i32 0, align 4
@_dwarf_write_lsb = common dso_local global i32 0, align 4
@_dwarf_decode_lsb = common dso_local global i32 0, align 4
@DW_DLE_DEBUG_INFO_NULL = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@DW_DLV_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c".debug_info\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*)* @_dwarf_consumer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwarf_consumer_init(%struct.TYPE_15__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %13 = icmp ne %struct.TYPE_15__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 9
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = icmp ne %struct.TYPE_12__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 9
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  store %struct.TYPE_14__* %26, %struct.TYPE_14__** %6, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 9
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %8, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %33 = icmp ne %struct.TYPE_14__* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64 (i8*)*, i64 (i8*)** %41, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 %42(i8* %43)
  %45 = load i64, i64* @DW_OBJECT_MSB, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %2
  %48 = load i32, i32* @_dwarf_read_msb, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* @_dwarf_write_msb, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @_dwarf_decode_msb, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  br label %67

57:                                               ; preds = %2
  %58 = load i32, i32* @_dwarf_read_lsb, align 4
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @_dwarf_write_lsb, align 4
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 7
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @_dwarf_decode_lsb, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  br label %67

67:                                               ; preds = %57, %47
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 5
  %70 = load i32 (i8*)*, i32 (i8*)** %69, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i32 %70(i8* %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  %77 = load i32 (i8*)*, i32 (i8*)** %76, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 %77(i8* %78)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 1
  %84 = load i32 (i8*)*, i32 (i8*)** %83, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = call i32 %84(i8* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %67
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = load i32, i32* @DW_DLE_DEBUG_INFO_NULL, align 4
  %93 = call i32 @DWARF_SET_ERROR(%struct.TYPE_15__* %90, i32* %91, i32 %92)
  %94 = load i32, i32* @DW_DLE_DEBUG_INFO_NULL, align 4
  store i32 %94, i32* %3, align 4
  br label %204

95:                                               ; preds = %67
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  %101 = call %struct.TYPE_16__* @calloc(i32 %100, i32 4)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  store %struct.TYPE_16__* %101, %struct.TYPE_16__** %103, align 8
  %104 = icmp eq %struct.TYPE_16__* %101, null
  br i1 %104, label %105, label %111

105:                                              ; preds = %95
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = load i32, i32* @DW_DLE_MEMORY, align 4
  %109 = call i32 @DWARF_SET_ERROR(%struct.TYPE_15__* %106, i32* %107, i32 %108)
  %110 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %110, i32* %3, align 4
  br label %204

111:                                              ; preds = %95
  store i32 0, i32* %10, align 4
  br label %112

112:                                              ; preds = %181, %111
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %184

116:                                              ; preds = %112
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i64 (i8*, i32, %struct.TYPE_13__*, i32*)*, i64 (i8*, i32, %struct.TYPE_13__*, i32*)** %118, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i64 %119(i8* %120, i32 %121, %struct.TYPE_13__* %7, i32* %11)
  %123 = load i64, i64* @DW_DLV_OK, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %116
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = load i32*, i32** %5, align 8
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @DWARF_SET_ERROR(%struct.TYPE_15__* %126, i32* %127, i32 %128)
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %3, align 4
  br label %204

131:                                              ; preds = %116
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 3
  store i32 %133, i32* %140, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 2
  store i32 %142, i32* %149, align 4
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  store i32* %151, i32** %158, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 3
  %161 = load i64 (i8*, i32, i32*, i32*)*, i64 (i8*, i32, i32*, i32*)** %160, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = call i64 %161(i8* %162, i32 %163, i32* %170, i32* %11)
  %172 = load i64, i64* @DW_DLV_OK, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %131
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %176 = load i32*, i32** %5, align 8
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @DWARF_SET_ERROR(%struct.TYPE_15__* %175, i32* %176, i32 %177)
  %179 = load i32, i32* %11, align 4
  store i32 %179, i32* %3, align 4
  br label %204

180:                                              ; preds = %131
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %112

184:                                              ; preds = %112
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 3
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 0
  store i32* null, i32** %191, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %193 = call i32 @_dwarf_find_section(%struct.TYPE_15__* %192, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %197 = call i32 @_dwarf_find_next_types_section(%struct.TYPE_15__* %196, i32* null)
  %198 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %201 = call i32 @_dwarf_frame_params_init(%struct.TYPE_15__* %200)
  %202 = load i64, i64* @DW_DLV_OK, align 8
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %184, %174, %125, %105, %89
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local %struct.TYPE_16__* @calloc(i32, i32) #1

declare dso_local i32 @_dwarf_find_section(%struct.TYPE_15__*, i8*) #1

declare dso_local i32 @_dwarf_find_next_types_section(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @_dwarf_frame_params_init(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

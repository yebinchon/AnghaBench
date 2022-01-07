; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_init.c__dwarf_producer_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/libdwarf/extr_libdwarf_init.c__dwarf_producer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@DW_DLC_SIZE_32 = common dso_local global i32 0, align 4
@DW_DLC_SIZE_64 = common dso_local global i32 0, align 4
@DW_DLE_ARGUMENT = common dso_local global i32 0, align 4
@DW_DLC_ISA_IA64 = common dso_local global i32 0, align 4
@DW_DLC_ISA_MIPS = common dso_local global i32 0, align 4
@DW_ISA_IA64 = common dso_local global i32 0, align 4
@DW_ISA_MIPS = common dso_local global i32 0, align 4
@DW_DLC_TARGET_BIGENDIAN = common dso_local global i32 0, align 4
@DW_DLC_TARGET_LITTLEENDIAN = common dso_local global i32 0, align 4
@_dwarf_write_msb = common dso_local global i32 0, align 4
@_dwarf_write_msb_alloc = common dso_local global i32 0, align 4
@_dwarf_write_lsb = common dso_local global i32 0, align 4
@_dwarf_write_lsb_alloc = common dso_local global i32 0, align 4
@DW_DLC_STREAM_RELOCATIONS = common dso_local global i32 0, align 4
@DW_DLC_SYMBOLIC_RELOCATIONS = common dso_local global i32 0, align 4
@DW_DLE_MEMORY = common dso_local global i32 0, align 4
@DW_DLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32*)* @_dwarf_producer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwarf_producer_init(%struct.TYPE_8__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 4, i32* %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @DW_DLC_SIZE_32, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @DW_DLC_SIZE_64, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %23 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %20, i32* %21, i32 %22)
  %24 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  store i32 %24, i32* %4, align 4
  br label %228

25:                                               ; preds = %14, %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @DW_DLC_SIZE_32, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @DW_DLC_SIZE_64, align 4
  %33 = and i32 %31, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @DW_DLC_SIZE_32, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %30, %25
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @DW_DLC_SIZE_64, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i32 8, i32* %46, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 4, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @DW_DLC_ISA_IA64, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @DW_DLC_ISA_MIPS, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %64 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %61, i32* %62, i32 %63)
  %65 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  store i32 %65, i32* %4, align 4
  br label %228

66:                                               ; preds = %55, %50
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @DW_DLC_ISA_IA64, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @DW_ISA_IA64, align 4
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 13
  store i32 %72, i32* %74, align 8
  br label %79

75:                                               ; preds = %66
  %76 = load i32, i32* @DW_ISA_MIPS, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 13
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @DW_DLC_TARGET_BIGENDIAN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @DW_DLC_TARGET_LITTLEENDIAN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %93 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %90, i32* %91, i32 %92)
  %94 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  store i32 %94, i32* %4, align 4
  br label %228

95:                                               ; preds = %84, %79
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @DW_DLC_TARGET_BIGENDIAN, align 4
  %98 = and i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %95
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @DW_DLC_TARGET_LITTLEENDIAN, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load i32, i32* @DW_DLC_TARGET_BIGENDIAN, align 4
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %105, %100, %95
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @DW_DLC_TARGET_BIGENDIAN, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %109
  %115 = load i32, i32* @_dwarf_write_msb, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 12
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @_dwarf_write_msb_alloc, align 4
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 11
  store i32 %118, i32* %120, align 8
  br label %136

121:                                              ; preds = %109
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @DW_DLC_TARGET_LITTLEENDIAN, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load i32, i32* @_dwarf_write_lsb, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 12
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @_dwarf_write_lsb_alloc, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 11
  store i32 %130, i32* %132, align 8
  br label %135

133:                                              ; preds = %121
  %134 = call i32 @assert(i32 0)
  br label %135

135:                                              ; preds = %133, %126
  br label %136

136:                                              ; preds = %135, %114
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @DW_DLC_STREAM_RELOCATIONS, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %136
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @DW_DLC_SYMBOLIC_RELOCATIONS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = load i32*, i32** %7, align 8
  %149 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  %150 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %147, i32* %148, i32 %149)
  %151 = load i32, i32* @DW_DLE_ARGUMENT, align 4
  store i32 %151, i32* %4, align 4
  br label %228

152:                                              ; preds = %141, %136
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* @DW_DLC_STREAM_RELOCATIONS, align 4
  %155 = and i32 %153, %154
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %152
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @DW_DLC_SYMBOLIC_RELOCATIONS, align 4
  %160 = and i32 %158, %159
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157
  %163 = load i32, i32* @DW_DLC_STREAM_RELOCATIONS, align 4
  %164 = load i32, i32* %6, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %162, %157, %152
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 10
  %172 = call i32 @STAILQ_INIT(i32* %171)
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 9
  %175 = call i32 @STAILQ_INIT(i32* %174)
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 8
  %178 = call i32 @STAILQ_INIT(i32* %177)
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 7
  %181 = call i32 @STAILQ_INIT(i32* %180)
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 6
  %184 = call i32 @STAILQ_INIT(i32* %183)
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 5
  %187 = call i32 @STAILQ_INIT(i32* %186)
  %188 = call i8* @calloc(i32 1, i32 4)
  %189 = bitcast i8* %188 to %struct.TYPE_6__*
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 4
  store %struct.TYPE_6__* %189, %struct.TYPE_6__** %191, align 8
  %192 = icmp eq %struct.TYPE_6__* %189, null
  br i1 %192, label %193, label %199

193:                                              ; preds = %166
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %195 = load i32*, i32** %7, align 8
  %196 = load i32, i32* @DW_DLE_MEMORY, align 4
  %197 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %194, i32* %195, i32 %196)
  %198 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %198, i32* %4, align 4
  br label %228

199:                                              ; preds = %166
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 4
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 1
  %204 = call i32 @STAILQ_INIT(i32* %203)
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 4
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = call i32 @STAILQ_INIT(i32* %208)
  %210 = call i8* @calloc(i32 1, i32 4)
  %211 = bitcast i8* %210 to %struct.TYPE_7__*
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 3
  store %struct.TYPE_7__* %211, %struct.TYPE_7__** %213, align 8
  %214 = icmp eq %struct.TYPE_7__* %211, null
  br i1 %214, label %215, label %221

215:                                              ; preds = %199
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %217 = load i32*, i32** %7, align 8
  %218 = load i32, i32* @DW_DLE_MEMORY, align 4
  %219 = call i32 @DWARF_SET_ERROR(%struct.TYPE_8__* %216, i32* %217, i32 %218)
  %220 = load i32, i32* @DW_DLE_MEMORY, align 4
  store i32 %220, i32* %4, align 4
  br label %228

221:                                              ; preds = %199
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 3
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 0
  %226 = call i32 @STAILQ_INIT(i32* %225)
  %227 = load i32, i32* @DW_DLE_NONE, align 4
  store i32 %227, i32* %4, align 4
  br label %228

228:                                              ; preds = %221, %215, %193, %146, %89, %60, %19
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local i32 @DWARF_SET_ERROR(%struct.TYPE_8__*, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i8* @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

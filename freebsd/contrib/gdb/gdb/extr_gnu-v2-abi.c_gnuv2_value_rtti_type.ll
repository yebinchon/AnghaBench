; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v2-abi.c_gnuv2_value_rtti_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v2-abi.c_gnuv2_value_rtti_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }
%struct.minimal_symbol = type { i32 }
%struct.symbol = type { i32 }

@TYPE_CODE_CLASS = common dso_local global i64 0, align 8
@DMGL_PARAMS = common dso_local global i32 0, align 4
@DMGL_ANSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.value*, i32*, i32*, i32*)* @gnuv2_value_rtti_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @gnuv2_value_rtti_type(%struct.value* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.type*, align 8
  %11 = alloca %struct.type*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.value*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca %struct.minimal_symbol*, align 8
  %18 = alloca %struct.symbol*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 0, i64* %14, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %4
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  store i32 -1, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32*, i32** %9, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32*, i32** %9, align 8
  store i32 0, i32* %34, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load %struct.value*, %struct.value** %6, align 8
  %37 = call %struct.type* @VALUE_TYPE(%struct.value* %36)
  store %struct.type* %37, %struct.type** %10, align 8
  %38 = load %struct.type*, %struct.type** %10, align 8
  %39 = call i32 @CHECK_TYPEDEF(%struct.type* %38)
  %40 = load %struct.type*, %struct.type** %10, align 8
  %41 = call i64 @TYPE_CODE(%struct.type* %40)
  %42 = load i64, i64* @TYPE_CODE_CLASS, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store %struct.type* null, %struct.type** %5, align 8
  br label %170

45:                                               ; preds = %35
  %46 = load %struct.type*, %struct.type** %10, align 8
  %47 = call i64 @TYPE_VPTR_FIELDNO(%struct.type* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.type*, %struct.type** %10, align 8
  %51 = call i32 @fill_in_vptr_fieldno(%struct.type* %50)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.type*, %struct.type** %10, align 8
  %54 = call i64 @TYPE_VPTR_FIELDNO(%struct.type* %53)
  %55 = icmp slt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store %struct.type* null, %struct.type** %5, align 8
  br label %170

57:                                               ; preds = %52
  %58 = load %struct.type*, %struct.type** %10, align 8
  %59 = call %struct.type* @TYPE_VPTR_BASETYPE(%struct.type* %58)
  store %struct.type* %59, %struct.type** %20, align 8
  %60 = load %struct.type*, %struct.type** %20, align 8
  %61 = call i32 @CHECK_TYPEDEF(%struct.type* %60)
  %62 = load %struct.type*, %struct.type** %20, align 8
  %63 = load %struct.type*, %struct.type** %10, align 8
  %64 = icmp ne %struct.type* %62, %63
  br i1 %64, label %65, label %74

65:                                               ; preds = %57
  %66 = load %struct.type*, %struct.type** %20, align 8
  %67 = load %struct.value*, %struct.value** %6, align 8
  %68 = call %struct.value* @value_cast(%struct.type* %66, %struct.value* %67)
  store %struct.value* %68, %struct.value** %6, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i32*, i32** %9, align 8
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %71, %65
  br label %74

74:                                               ; preds = %73, %57
  %75 = load %struct.value*, %struct.value** %6, align 8
  %76 = load %struct.type*, %struct.type** %10, align 8
  %77 = call i64 @TYPE_VPTR_FIELDNO(%struct.type* %76)
  %78 = call i32 @value_field(%struct.value* %75, i64 %77)
  %79 = call i64 @VALUE_ADDRESS(i32 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  store %struct.type* null, %struct.type** %5, align 8
  br label %170

82:                                               ; preds = %74
  %83 = load %struct.value*, %struct.value** %6, align 8
  %84 = load %struct.type*, %struct.type** %10, align 8
  %85 = call i64 @TYPE_VPTR_FIELDNO(%struct.type* %84)
  %86 = call i32 @value_field(%struct.value* %83, i64 %85)
  %87 = call i32 @value_as_address(i32 %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32 %88)
  store %struct.minimal_symbol* %89, %struct.minimal_symbol** %17, align 8
  %90 = load %struct.minimal_symbol*, %struct.minimal_symbol** %17, align 8
  %91 = icmp eq %struct.minimal_symbol* %90, null
  br i1 %91, label %100, label %92

92:                                               ; preds = %82
  %93 = load %struct.minimal_symbol*, %struct.minimal_symbol** %17, align 8
  %94 = call i8* @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol* %93)
  store i8* %94, i8** %19, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %100, label %96

96:                                               ; preds = %92
  %97 = load i8*, i8** %19, align 8
  %98 = call i32 @is_vtable_name(i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %96, %92, %82
  store %struct.type* null, %struct.type** %5, align 8
  br label %170

101:                                              ; preds = %96
  %102 = load i8*, i8** %19, align 8
  %103 = load i32, i32* @DMGL_PARAMS, align 4
  %104 = load i32, i32* @DMGL_ANSI, align 4
  %105 = or i32 %103, %104
  %106 = call i8* @cplus_demangle(i8* %102, i32 %105)
  store i8* %106, i8** %19, align 8
  %107 = load i8*, i8** %19, align 8
  %108 = call i64* @strchr(i8* %107, i8 signext 32)
  store i64 0, i64* %108, align 8
  %109 = load i8*, i8** %19, align 8
  %110 = call %struct.type* @cp_lookup_rtti_type(i8* %109, i32* null)
  store %struct.type* %110, %struct.type** %11, align 8
  %111 = load %struct.type*, %struct.type** %11, align 8
  %112 = icmp eq %struct.type* %111, null
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  store %struct.type* null, %struct.type** %5, align 8
  br label %170

114:                                              ; preds = %101
  %115 = load %struct.type*, %struct.type** %11, align 8
  %116 = call i32 @TYPE_N_BASECLASSES(%struct.type* %115)
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %118, label %162

118:                                              ; preds = %114
  %119 = load i32*, i32** %7, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %162

121:                                              ; preds = %118
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 1
  br i1 %124, label %125, label %162

125:                                              ; preds = %121
  %126 = load i32*, i32** %8, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load %struct.type*, %struct.type** %11, align 8
  %130 = load %struct.type*, %struct.type** %11, align 8
  %131 = call i64 @TYPE_VPTR_FIELDNO(%struct.type* %130)
  %132 = call i32 @TYPE_BASECLASS_BITPOS(%struct.type* %129, i64 %131)
  %133 = sdiv i32 %132, 8
  %134 = load i32*, i32** %8, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %128, %125
  %136 = load i32*, i32** %8, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %161

138:                                              ; preds = %135
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %139, align 4
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %138
  %143 = load %struct.type*, %struct.type** %11, align 8
  %144 = call i64 @TYPE_LENGTH(%struct.type* %143)
  %145 = load %struct.type*, %struct.type** %10, align 8
  %146 = call i64 @TYPE_LENGTH(%struct.type* %145)
  %147 = icmp sgt i64 %144, %146
  br i1 %147, label %148, label %154

148:                                              ; preds = %142
  %149 = load i32*, i32** %7, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %148
  %152 = load i32*, i32** %7, align 8
  store i32 0, i32* %152, align 4
  br label %153

153:                                              ; preds = %151, %148
  br label %160

154:                                              ; preds = %142
  %155 = load i32*, i32** %7, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = load i32*, i32** %7, align 8
  store i32 1, i32* %158, align 4
  br label %159

159:                                              ; preds = %157, %154
  br label %160

160:                                              ; preds = %159, %153
  br label %161

161:                                              ; preds = %160, %138, %135
  br label %168

162:                                              ; preds = %121, %118, %114
  %163 = load i32*, i32** %7, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i32*, i32** %7, align 8
  store i32 1, i32* %166, align 4
  br label %167

167:                                              ; preds = %165, %162
  br label %168

168:                                              ; preds = %167, %161
  %169 = load %struct.type*, %struct.type** %11, align 8
  store %struct.type* %169, %struct.type** %5, align 8
  br label %170

170:                                              ; preds = %168, %113, %100, %81, %56, %44
  %171 = load %struct.type*, %struct.type** %5, align 8
  ret %struct.type* %171
}

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @TYPE_VPTR_FIELDNO(%struct.type*) #1

declare dso_local i32 @fill_in_vptr_fieldno(%struct.type*) #1

declare dso_local %struct.type* @TYPE_VPTR_BASETYPE(%struct.type*) #1

declare dso_local %struct.value* @value_cast(%struct.type*, %struct.value*) #1

declare dso_local i64 @VALUE_ADDRESS(i32) #1

declare dso_local i32 @value_field(%struct.value*, i64) #1

declare dso_local i32 @value_as_address(i32) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32) #1

declare dso_local i8* @DEPRECATED_SYMBOL_NAME(%struct.minimal_symbol*) #1

declare dso_local i32 @is_vtable_name(i8*) #1

declare dso_local i8* @cplus_demangle(i8*, i32) #1

declare dso_local i64* @strchr(i8*, i8 signext) #1

declare dso_local %struct.type* @cp_lookup_rtti_type(i8*, i32*) #1

declare dso_local i32 @TYPE_N_BASECLASSES(%struct.type*) #1

declare dso_local i32 @TYPE_BASECLASS_BITPOS(%struct.type*, i64) #1

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

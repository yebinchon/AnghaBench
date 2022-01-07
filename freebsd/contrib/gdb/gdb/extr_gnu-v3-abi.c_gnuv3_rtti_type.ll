; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v3-abi.c_gnuv3_rtti_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_gnu-v3-abi.c_gnuv3_rtti_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }
%struct.minimal_symbol = type { i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@vtable_type_gdbarch_data = common dso_local global i32 0, align 4
@TYPE_CODE_CLASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"vtable for \00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"can't find linker symbol for virtual table for `%s' value\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"  found `%s' instead\00", align 1
@vtable_field_offset_to_top = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.value*, i32*, i32*, i32*)* @gnuv3_rtti_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @gnuv3_rtti_type(%struct.value* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.type*, align 8
  %11 = alloca %struct.type*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.value*, align 8
  %14 = alloca %struct.minimal_symbol*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.type*, align 8
  %18 = alloca %struct.type*, align 8
  %19 = alloca i32, align 4
  store %struct.value* %0, %struct.value** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load i32, i32* @current_gdbarch, align 4
  %21 = load i32, i32* @vtable_type_gdbarch_data, align 4
  %22 = call %struct.type* @gdbarch_data(i32 %20, i32 %21)
  store %struct.type* %22, %struct.type** %10, align 8
  %23 = load %struct.value*, %struct.value** %6, align 8
  %24 = call i32 @VALUE_TYPE(%struct.value* %23)
  %25 = call %struct.type* @check_typedef(i32 %24)
  store %struct.type* %25, %struct.type** %11, align 8
  %26 = load %struct.type*, %struct.type** %11, align 8
  %27 = call i64 @TYPE_CODE(%struct.type* %26)
  %28 = load i64, i64* @TYPE_CODE_CLASS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store %struct.type* null, %struct.type** %5, align 8
  br label %144

31:                                               ; preds = %4
  %32 = load %struct.type*, %struct.type** %11, align 8
  %33 = call i32 @fill_in_vptr_fieldno(%struct.type* %32)
  %34 = load %struct.type*, %struct.type** %11, align 8
  %35 = call i32 @TYPE_VPTR_FIELDNO(%struct.type* %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store %struct.type* null, %struct.type** %5, align 8
  br label %144

38:                                               ; preds = %31
  %39 = load i32*, i32** %9, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32*, i32** %9, align 8
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %41, %38
  %44 = load %struct.type*, %struct.type** %11, align 8
  %45 = call i32 @TYPE_VPTR_BASETYPE(%struct.type* %44)
  %46 = call %struct.type* @check_typedef(i32 %45)
  store %struct.type* %46, %struct.type** %18, align 8
  %47 = load %struct.type*, %struct.type** %11, align 8
  %48 = load %struct.type*, %struct.type** %18, align 8
  %49 = icmp ne %struct.type* %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load %struct.type*, %struct.type** %18, align 8
  %52 = load %struct.value*, %struct.value** %6, align 8
  %53 = call %struct.value* @value_cast(%struct.type* %51, %struct.value* %52)
  store %struct.value* %53, %struct.value** %6, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32*, i32** %9, align 8
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %56, %50
  br label %59

59:                                               ; preds = %58, %43
  %60 = load %struct.value*, %struct.value** %6, align 8
  %61 = load %struct.type*, %struct.type** %11, align 8
  %62 = call i32 @TYPE_VPTR_FIELDNO(%struct.type* %61)
  %63 = call i32 @value_field(%struct.value* %60, i32 %62)
  %64 = call i64 @value_as_address(i32 %63)
  store i64 %64, i64* %12, align 8
  %65 = load %struct.type*, %struct.type** %10, align 8
  %66 = load i64, i64* %12, align 8
  %67 = call i64 (...) @vtable_address_point_offset()
  %68 = sub nsw i64 %66, %67
  %69 = load %struct.value*, %struct.value** %6, align 8
  %70 = call i32 @VALUE_BFD_SECTION(%struct.value* %69)
  %71 = call %struct.value* @value_at_lazy(%struct.type* %65, i64 %68, i32 %70)
  store %struct.value* %71, %struct.value** %13, align 8
  %72 = load %struct.value*, %struct.value** %13, align 8
  %73 = call i32 @VALUE_ADDRESS(%struct.value* %72)
  %74 = load %struct.value*, %struct.value** %13, align 8
  %75 = call i32 @VALUE_OFFSET(%struct.value* %74)
  %76 = add nsw i32 %73, %75
  %77 = load %struct.value*, %struct.value** %13, align 8
  %78 = call i32 @VALUE_EMBEDDED_OFFSET(%struct.value* %77)
  %79 = add nsw i32 %76, %78
  %80 = call %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32 %79)
  store %struct.minimal_symbol* %80, %struct.minimal_symbol** %14, align 8
  %81 = load %struct.minimal_symbol*, %struct.minimal_symbol** %14, align 8
  %82 = icmp ne %struct.minimal_symbol* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %59
  store %struct.type* null, %struct.type** %5, align 8
  br label %144

84:                                               ; preds = %59
  %85 = load %struct.minimal_symbol*, %struct.minimal_symbol** %14, align 8
  %86 = call i8* @SYMBOL_DEMANGLED_NAME(%struct.minimal_symbol* %85)
  store i8* %86, i8** %15, align 8
  %87 = load i8*, i8** %15, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = load i8*, i8** %15, align 8
  %91 = call i64 @strncmp(i8* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %89, %84
  %94 = load %struct.type*, %struct.type** %11, align 8
  %95 = call i8* @TYPE_NAME(%struct.type* %94)
  %96 = call i32 @warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  %97 = load i8*, i8** %15, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i8*, i8** %15, align 8
  %101 = call i32 @warning(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %100)
  br label %102

102:                                              ; preds = %99, %93
  store %struct.type* null, %struct.type** %5, align 8
  br label %144

103:                                              ; preds = %89
  %104 = load i8*, i8** %15, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 11
  store i8* %105, i8** %16, align 8
  %106 = load i8*, i8** %16, align 8
  %107 = call %struct.type* @cp_lookup_rtti_type(i8* %106, i32* null)
  store %struct.type* %107, %struct.type** %17, align 8
  %108 = load %struct.type*, %struct.type** %17, align 8
  %109 = icmp eq %struct.type* %108, null
  br i1 %109, label %110, label %111

110:                                              ; preds = %103
  store %struct.type* null, %struct.type** %5, align 8
  br label %144

111:                                              ; preds = %103
  %112 = load %struct.value*, %struct.value** %13, align 8
  %113 = load i32, i32* @vtable_field_offset_to_top, align 4
  %114 = call i32 @value_field(%struct.value* %112, i32 %113)
  %115 = call i32 @value_as_long(i32 %114)
  store i32 %115, i32* %19, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %135

118:                                              ; preds = %111
  %119 = load i32, i32* %19, align 4
  %120 = sub nsw i32 0, %119
  %121 = load %struct.value*, %struct.value** %6, align 8
  %122 = call i32 @VALUE_EMBEDDED_OFFSET(%struct.value* %121)
  %123 = icmp eq i32 %120, %122
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load %struct.value*, %struct.value** %6, align 8
  %126 = call %struct.type* @VALUE_ENCLOSING_TYPE(%struct.value* %125)
  %127 = call i64 @TYPE_LENGTH(%struct.type* %126)
  %128 = load %struct.type*, %struct.type** %17, align 8
  %129 = call i64 @TYPE_LENGTH(%struct.type* %128)
  %130 = icmp sge i64 %127, %129
  br label %131

131:                                              ; preds = %124, %118
  %132 = phi i1 [ false, %118 ], [ %130, %124 ]
  %133 = zext i1 %132 to i32
  %134 = load i32*, i32** %7, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %131, %111
  %136 = load i32*, i32** %8, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i32, i32* %19, align 4
  %140 = sub nsw i32 0, %139
  %141 = load i32*, i32** %8, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %138, %135
  %143 = load %struct.type*, %struct.type** %17, align 8
  store %struct.type* %143, %struct.type** %5, align 8
  br label %144

144:                                              ; preds = %142, %110, %102, %83, %37, %30
  %145 = load %struct.type*, %struct.type** %5, align 8
  ret %struct.type* %145
}

declare dso_local %struct.type* @gdbarch_data(i32, i32) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @fill_in_vptr_fieldno(%struct.type*) #1

declare dso_local i32 @TYPE_VPTR_FIELDNO(%struct.type*) #1

declare dso_local i32 @TYPE_VPTR_BASETYPE(%struct.type*) #1

declare dso_local %struct.value* @value_cast(%struct.type*, %struct.value*) #1

declare dso_local i64 @value_as_address(i32) #1

declare dso_local i32 @value_field(%struct.value*, i32) #1

declare dso_local %struct.value* @value_at_lazy(%struct.type*, i64, i32) #1

declare dso_local i64 @vtable_address_point_offset(...) #1

declare dso_local i32 @VALUE_BFD_SECTION(%struct.value*) #1

declare dso_local %struct.minimal_symbol* @lookup_minimal_symbol_by_pc(i32) #1

declare dso_local i32 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i32 @VALUE_OFFSET(%struct.value*) #1

declare dso_local i32 @VALUE_EMBEDDED_OFFSET(%struct.value*) #1

declare dso_local i8* @SYMBOL_DEMANGLED_NAME(%struct.minimal_symbol*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i8* @TYPE_NAME(%struct.type*) #1

declare dso_local %struct.type* @cp_lookup_rtti_type(i8*, i32*) #1

declare dso_local i32 @value_as_long(i32) #1

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.type* @VALUE_ENCLOSING_TYPE(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

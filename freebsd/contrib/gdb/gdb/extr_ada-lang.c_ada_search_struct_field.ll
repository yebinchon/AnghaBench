; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_search_struct_field.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_search_struct_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @ada_search_struct_field(i8* %0, %struct.value* %1, i32 %2, %struct.type* %3) #0 {
  %5 = alloca %struct.value*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.value*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.value*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.type*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.value*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.value* %1, %struct.value** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.type* %3, %struct.type** %9, align 8
  %17 = load %struct.type*, %struct.type** %9, align 8
  %18 = call i32 @CHECK_TYPEDEF(%struct.type* %17)
  %19 = load %struct.type*, %struct.type** %9, align 8
  %20 = call i32 @TYPE_NFIELDS(%struct.type* %19)
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %114, %4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %117

25:                                               ; preds = %22
  %26 = load %struct.type*, %struct.type** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = call i8* @TYPE_FIELD_NAME(%struct.type* %26, i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %114

32:                                               ; preds = %25
  %33 = load i8*, i8** %11, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @field_name_match(i8* %33, i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.value*, %struct.value** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.type*, %struct.type** %9, align 8
  %42 = call %struct.value* @ada_value_primitive_field(%struct.value* %38, i32 %39, i32 %40, %struct.type* %41)
  store %struct.value* %42, %struct.value** %5, align 8
  br label %118

43:                                               ; preds = %32
  %44 = load %struct.type*, %struct.type** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i64 @ada_is_wrapper_field(%struct.type* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %66

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.value*, %struct.value** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.type*, %struct.type** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %52, i32 %53)
  %55 = sdiv i32 %54, 8
  %56 = add nsw i32 %51, %55
  %57 = load %struct.type*, %struct.type** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %57, i32 %58)
  %60 = call %struct.value* @ada_search_struct_field(i8* %49, %struct.value* %50, i32 %56, %struct.type* %59)
  store %struct.value* %60, %struct.value** %12, align 8
  %61 = load %struct.value*, %struct.value** %12, align 8
  %62 = icmp ne %struct.value* %61, null
  br i1 %62, label %63, label %65

63:                                               ; preds = %48
  %64 = load %struct.value*, %struct.value** %12, align 8
  store %struct.value* %64, %struct.value** %5, align 8
  br label %118

65:                                               ; preds = %48
  br label %111

66:                                               ; preds = %43
  %67 = load %struct.type*, %struct.type** %9, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i64 @ada_is_variant_part(%struct.type* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %110

71:                                               ; preds = %66
  %72 = load %struct.type*, %struct.type** %9, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %72, i32 %73)
  %75 = call %struct.type* @check_typedef(%struct.type* %74)
  store %struct.type* %75, %struct.type** %14, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.type*, %struct.type** %9, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %77, i32 %78)
  %80 = sdiv i32 %79, 8
  %81 = add nsw i32 %76, %80
  store i32 %81, i32* %15, align 4
  %82 = load %struct.type*, %struct.type** %14, align 8
  %83 = call i32 @TYPE_NFIELDS(%struct.type* %82)
  %84 = sub nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %106, %71
  %86 = load i32, i32* %13, align 4
  %87 = icmp sge i32 %86, 0
  br i1 %87, label %88, label %109

88:                                               ; preds = %85
  %89 = load i8*, i8** %6, align 8
  %90 = load %struct.value*, %struct.value** %7, align 8
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.type*, %struct.type** %14, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %92, i32 %93)
  %95 = sdiv i32 %94, 8
  %96 = add nsw i32 %91, %95
  %97 = load %struct.type*, %struct.type** %14, align 8
  %98 = load i32, i32* %13, align 4
  %99 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %97, i32 %98)
  %100 = call %struct.value* @ada_search_struct_field(i8* %89, %struct.value* %90, i32 %96, %struct.type* %99)
  store %struct.value* %100, %struct.value** %16, align 8
  %101 = load %struct.value*, %struct.value** %16, align 8
  %102 = icmp ne %struct.value* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %88
  %104 = load %struct.value*, %struct.value** %16, align 8
  store %struct.value* %104, %struct.value** %5, align 8
  br label %118

105:                                              ; preds = %88
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %13, align 4
  %108 = sub nsw i32 %107, 1
  store i32 %108, i32* %13, align 4
  br label %85

109:                                              ; preds = %85
  br label %110

110:                                              ; preds = %109, %66
  br label %111

111:                                              ; preds = %110, %65
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %31
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %22

117:                                              ; preds = %22
  store %struct.value* null, %struct.value** %5, align 8
  br label %118

118:                                              ; preds = %117, %103, %63, %37
  %119 = load %struct.value*, %struct.value** %5, align 8
  ret %struct.value* %119
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i8* @TYPE_FIELD_NAME(%struct.type*, i32) #1

declare dso_local i64 @field_name_match(i8*, i8*) #1

declare dso_local %struct.value* @ada_value_primitive_field(%struct.value*, i32, i32, %struct.type*) #1

declare dso_local i64 @ada_is_wrapper_field(%struct.type*, i32) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i64 @ada_is_variant_part(%struct.type*, i32) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

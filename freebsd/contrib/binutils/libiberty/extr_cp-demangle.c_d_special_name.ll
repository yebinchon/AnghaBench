; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_special_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_special_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_VTABLE = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_VTT = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TYPEINFO = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TYPEINFO_NAME = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_THUNK = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_VIRTUAL_THUNK = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_COVARIANT_THUNK = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_CONSTRUCTION_VTABLE = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_TYPEINFO_FN = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_JAVA_CLASS = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_GUARD = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_REFTEMP = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_HIDDEN_ALIAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_special_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_special_name(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %7 = load %struct.d_info*, %struct.d_info** %3, align 8
  %8 = getelementptr inbounds %struct.d_info, %struct.d_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 20
  store i32 %10, i32* %8, align 4
  %11 = load %struct.d_info*, %struct.d_info** %3, align 8
  %12 = call i64 @d_check_char(%struct.d_info* %11, i8 signext 84)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %125

14:                                               ; preds = %1
  %15 = load %struct.d_info*, %struct.d_info** %3, align 8
  %16 = call i32 @d_next_char(%struct.d_info* %15)
  switch i32 %16, label %124 [
    i32 86, label %17
    i32 84, label %27
    i32 73, label %37
    i32 83, label %43
    i32 104, label %49
    i32 118, label %60
    i32 99, label %71
    i32 67, label %87
    i32 70, label %112
    i32 74, label %118
  ]

17:                                               ; preds = %14
  %18 = load %struct.d_info*, %struct.d_info** %3, align 8
  %19 = getelementptr inbounds %struct.d_info, %struct.d_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 5
  store i32 %21, i32* %19, align 4
  %22 = load %struct.d_info*, %struct.d_info** %3, align 8
  %23 = load i32, i32* @DEMANGLE_COMPONENT_VTABLE, align 4
  %24 = load %struct.d_info*, %struct.d_info** %3, align 8
  %25 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %24)
  %26 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %22, i32 %23, %struct.demangle_component* %25, %struct.demangle_component* null)
  store %struct.demangle_component* %26, %struct.demangle_component** %2, align 8
  br label %152

27:                                               ; preds = %14
  %28 = load %struct.d_info*, %struct.d_info** %3, align 8
  %29 = getelementptr inbounds %struct.d_info, %struct.d_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 10
  store i32 %31, i32* %29, align 4
  %32 = load %struct.d_info*, %struct.d_info** %3, align 8
  %33 = load i32, i32* @DEMANGLE_COMPONENT_VTT, align 4
  %34 = load %struct.d_info*, %struct.d_info** %3, align 8
  %35 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %34)
  %36 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %32, i32 %33, %struct.demangle_component* %35, %struct.demangle_component* null)
  store %struct.demangle_component* %36, %struct.demangle_component** %2, align 8
  br label %152

37:                                               ; preds = %14
  %38 = load %struct.d_info*, %struct.d_info** %3, align 8
  %39 = load i32, i32* @DEMANGLE_COMPONENT_TYPEINFO, align 4
  %40 = load %struct.d_info*, %struct.d_info** %3, align 8
  %41 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %40)
  %42 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %38, i32 %39, %struct.demangle_component* %41, %struct.demangle_component* null)
  store %struct.demangle_component* %42, %struct.demangle_component** %2, align 8
  br label %152

43:                                               ; preds = %14
  %44 = load %struct.d_info*, %struct.d_info** %3, align 8
  %45 = load i32, i32* @DEMANGLE_COMPONENT_TYPEINFO_NAME, align 4
  %46 = load %struct.d_info*, %struct.d_info** %3, align 8
  %47 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %46)
  %48 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %44, i32 %45, %struct.demangle_component* %47, %struct.demangle_component* null)
  store %struct.demangle_component* %48, %struct.demangle_component** %2, align 8
  br label %152

49:                                               ; preds = %14
  %50 = load %struct.d_info*, %struct.d_info** %3, align 8
  %51 = call i32 @d_call_offset(%struct.d_info* %50, i8 signext 104)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %152

54:                                               ; preds = %49
  %55 = load %struct.d_info*, %struct.d_info** %3, align 8
  %56 = load i32, i32* @DEMANGLE_COMPONENT_THUNK, align 4
  %57 = load %struct.d_info*, %struct.d_info** %3, align 8
  %58 = call %struct.demangle_component* @d_encoding(%struct.d_info* %57, i32 0)
  %59 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %55, i32 %56, %struct.demangle_component* %58, %struct.demangle_component* null)
  store %struct.demangle_component* %59, %struct.demangle_component** %2, align 8
  br label %152

60:                                               ; preds = %14
  %61 = load %struct.d_info*, %struct.d_info** %3, align 8
  %62 = call i32 @d_call_offset(%struct.d_info* %61, i8 signext 118)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %152

65:                                               ; preds = %60
  %66 = load %struct.d_info*, %struct.d_info** %3, align 8
  %67 = load i32, i32* @DEMANGLE_COMPONENT_VIRTUAL_THUNK, align 4
  %68 = load %struct.d_info*, %struct.d_info** %3, align 8
  %69 = call %struct.demangle_component* @d_encoding(%struct.d_info* %68, i32 0)
  %70 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %66, i32 %67, %struct.demangle_component* %69, %struct.demangle_component* null)
  store %struct.demangle_component* %70, %struct.demangle_component** %2, align 8
  br label %152

71:                                               ; preds = %14
  %72 = load %struct.d_info*, %struct.d_info** %3, align 8
  %73 = call i32 @d_call_offset(%struct.d_info* %72, i8 signext 0)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %152

76:                                               ; preds = %71
  %77 = load %struct.d_info*, %struct.d_info** %3, align 8
  %78 = call i32 @d_call_offset(%struct.d_info* %77, i8 signext 0)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %152

81:                                               ; preds = %76
  %82 = load %struct.d_info*, %struct.d_info** %3, align 8
  %83 = load i32, i32* @DEMANGLE_COMPONENT_COVARIANT_THUNK, align 4
  %84 = load %struct.d_info*, %struct.d_info** %3, align 8
  %85 = call %struct.demangle_component* @d_encoding(%struct.d_info* %84, i32 0)
  %86 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %82, i32 %83, %struct.demangle_component* %85, %struct.demangle_component* null)
  store %struct.demangle_component* %86, %struct.demangle_component** %2, align 8
  br label %152

87:                                               ; preds = %14
  %88 = load %struct.d_info*, %struct.d_info** %3, align 8
  %89 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %88)
  store %struct.demangle_component* %89, %struct.demangle_component** %4, align 8
  %90 = load %struct.d_info*, %struct.d_info** %3, align 8
  %91 = call i64 @d_number(%struct.d_info* %90)
  store i64 %91, i64* %5, align 8
  %92 = load i64, i64* %5, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %152

95:                                               ; preds = %87
  %96 = load %struct.d_info*, %struct.d_info** %3, align 8
  %97 = call i64 @d_check_char(%struct.d_info* %96, i8 signext 95)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %152

100:                                              ; preds = %95
  %101 = load %struct.d_info*, %struct.d_info** %3, align 8
  %102 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %101)
  store %struct.demangle_component* %102, %struct.demangle_component** %6, align 8
  %103 = load %struct.d_info*, %struct.d_info** %3, align 8
  %104 = getelementptr inbounds %struct.d_info, %struct.d_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 5
  store i32 %106, i32* %104, align 4
  %107 = load %struct.d_info*, %struct.d_info** %3, align 8
  %108 = load i32, i32* @DEMANGLE_COMPONENT_CONSTRUCTION_VTABLE, align 4
  %109 = load %struct.demangle_component*, %struct.demangle_component** %6, align 8
  %110 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %111 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %107, i32 %108, %struct.demangle_component* %109, %struct.demangle_component* %110)
  store %struct.demangle_component* %111, %struct.demangle_component** %2, align 8
  br label %152

112:                                              ; preds = %14
  %113 = load %struct.d_info*, %struct.d_info** %3, align 8
  %114 = load i32, i32* @DEMANGLE_COMPONENT_TYPEINFO_FN, align 4
  %115 = load %struct.d_info*, %struct.d_info** %3, align 8
  %116 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %115)
  %117 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %113, i32 %114, %struct.demangle_component* %116, %struct.demangle_component* null)
  store %struct.demangle_component* %117, %struct.demangle_component** %2, align 8
  br label %152

118:                                              ; preds = %14
  %119 = load %struct.d_info*, %struct.d_info** %3, align 8
  %120 = load i32, i32* @DEMANGLE_COMPONENT_JAVA_CLASS, align 4
  %121 = load %struct.d_info*, %struct.d_info** %3, align 8
  %122 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %121)
  %123 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %119, i32 %120, %struct.demangle_component* %122, %struct.demangle_component* null)
  store %struct.demangle_component* %123, %struct.demangle_component** %2, align 8
  br label %152

124:                                              ; preds = %14
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %152

125:                                              ; preds = %1
  %126 = load %struct.d_info*, %struct.d_info** %3, align 8
  %127 = call i64 @d_check_char(%struct.d_info* %126, i8 signext 71)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %151

129:                                              ; preds = %125
  %130 = load %struct.d_info*, %struct.d_info** %3, align 8
  %131 = call i32 @d_next_char(%struct.d_info* %130)
  switch i32 %131, label %150 [
    i32 86, label %132
    i32 82, label %138
    i32 65, label %144
  ]

132:                                              ; preds = %129
  %133 = load %struct.d_info*, %struct.d_info** %3, align 8
  %134 = load i32, i32* @DEMANGLE_COMPONENT_GUARD, align 4
  %135 = load %struct.d_info*, %struct.d_info** %3, align 8
  %136 = call %struct.demangle_component* @d_name(%struct.d_info* %135)
  %137 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %133, i32 %134, %struct.demangle_component* %136, %struct.demangle_component* null)
  store %struct.demangle_component* %137, %struct.demangle_component** %2, align 8
  br label %152

138:                                              ; preds = %129
  %139 = load %struct.d_info*, %struct.d_info** %3, align 8
  %140 = load i32, i32* @DEMANGLE_COMPONENT_REFTEMP, align 4
  %141 = load %struct.d_info*, %struct.d_info** %3, align 8
  %142 = call %struct.demangle_component* @d_name(%struct.d_info* %141)
  %143 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %139, i32 %140, %struct.demangle_component* %142, %struct.demangle_component* null)
  store %struct.demangle_component* %143, %struct.demangle_component** %2, align 8
  br label %152

144:                                              ; preds = %129
  %145 = load %struct.d_info*, %struct.d_info** %3, align 8
  %146 = load i32, i32* @DEMANGLE_COMPONENT_HIDDEN_ALIAS, align 4
  %147 = load %struct.d_info*, %struct.d_info** %3, align 8
  %148 = call %struct.demangle_component* @d_encoding(%struct.d_info* %147, i32 0)
  %149 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %145, i32 %146, %struct.demangle_component* %148, %struct.demangle_component* null)
  store %struct.demangle_component* %149, %struct.demangle_component** %2, align 8
  br label %152

150:                                              ; preds = %129
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %152

151:                                              ; preds = %125
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %152

152:                                              ; preds = %151, %150, %144, %138, %132, %124, %118, %112, %100, %99, %94, %81, %80, %75, %65, %64, %54, %53, %43, %37, %27, %17
  %153 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %153
}

declare dso_local i64 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local i32 @d_next_char(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @cplus_demangle_type(%struct.d_info*) #1

declare dso_local i32 @d_call_offset(%struct.d_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @d_encoding(%struct.d_info*, i32) #1

declare dso_local i64 @d_number(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_name(%struct.d_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

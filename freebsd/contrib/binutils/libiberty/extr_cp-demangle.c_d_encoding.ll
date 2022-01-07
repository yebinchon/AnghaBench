; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_encoding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_encoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.demangle_component* }
%struct.d_info = type { i32 }

@DMGL_PARAMS = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_RESTRICT_THIS = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_VOLATILE_THIS = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_CONST_THIS = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_LOCAL_NAME = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_TYPED_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*, i32)* @d_encoding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_encoding(%struct.d_info* %0, i32 %1) #0 {
  %3 = alloca %struct.demangle_component*, align 8
  %4 = alloca %struct.d_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.demangle_component*, align 8
  %8 = alloca %struct.demangle_component*, align 8
  store %struct.d_info* %0, %struct.d_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.d_info*, %struct.d_info** %4, align 8
  %10 = call signext i8 @d_peek_char(%struct.d_info* %9)
  store i8 %10, i8* %6, align 1
  %11 = load i8, i8* %6, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 71
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i8, i8* %6, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 84
  br i1 %17, label %18, label %21

18:                                               ; preds = %14, %2
  %19 = load %struct.d_info*, %struct.d_info** %4, align 8
  %20 = call %struct.demangle_component* @d_special_name(%struct.d_info* %19)
  store %struct.demangle_component* %20, %struct.demangle_component** %3, align 8
  br label %124

21:                                               ; preds = %14
  %22 = load %struct.d_info*, %struct.d_info** %4, align 8
  %23 = call %struct.demangle_component* @d_name(%struct.d_info* %22)
  store %struct.demangle_component* %23, %struct.demangle_component** %7, align 8
  %24 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %25 = icmp ne %struct.demangle_component* %24, null
  br i1 %25, label %26, label %100

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %100

29:                                               ; preds = %26
  %30 = load %struct.d_info*, %struct.d_info** %4, align 8
  %31 = getelementptr inbounds %struct.d_info, %struct.d_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DMGL_PARAMS, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %100

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %57, %36
  %38 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %39 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DEMANGLE_COMPONENT_RESTRICT_THIS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %45 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DEMANGLE_COMPONENT_VOLATILE_THIS, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %51 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DEMANGLE_COMPONENT_CONST_THIS, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %49, %43, %37
  %56 = phi i1 [ true, %43 ], [ true, %37 ], [ %54, %49 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %59 = call %struct.demangle_component* @d_left(%struct.demangle_component* %58)
  store %struct.demangle_component* %59, %struct.demangle_component** %7, align 8
  br label %37

60:                                               ; preds = %55
  %61 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %62 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DEMANGLE_COMPONENT_LOCAL_NAME, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %98

66:                                               ; preds = %60
  %67 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %68 = call %struct.demangle_component* @d_right(%struct.demangle_component* %67)
  store %struct.demangle_component* %68, %struct.demangle_component** %8, align 8
  br label %69

69:                                               ; preds = %89, %66
  %70 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  %71 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @DEMANGLE_COMPONENT_RESTRICT_THIS, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %87, label %75

75:                                               ; preds = %69
  %76 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  %77 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DEMANGLE_COMPONENT_VOLATILE_THIS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %87, label %81

81:                                               ; preds = %75
  %82 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  %83 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @DEMANGLE_COMPONENT_CONST_THIS, align 8
  %86 = icmp eq i64 %84, %85
  br label %87

87:                                               ; preds = %81, %75, %69
  %88 = phi i1 [ true, %75 ], [ true, %69 ], [ %86, %81 ]
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  %91 = call %struct.demangle_component* @d_left(%struct.demangle_component* %90)
  store %struct.demangle_component* %91, %struct.demangle_component** %8, align 8
  br label %69

92:                                               ; preds = %87
  %93 = load %struct.demangle_component*, %struct.demangle_component** %8, align 8
  %94 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %95 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store %struct.demangle_component* %93, %struct.demangle_component** %97, align 8
  br label %98

98:                                               ; preds = %92, %60
  %99 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  store %struct.demangle_component* %99, %struct.demangle_component** %3, align 8
  br label %124

100:                                              ; preds = %29, %26, %21
  %101 = load %struct.d_info*, %struct.d_info** %4, align 8
  %102 = call signext i8 @d_peek_char(%struct.d_info* %101)
  store i8 %102, i8* %6, align 1
  %103 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %104 = icmp eq %struct.demangle_component* %103, null
  br i1 %104, label %113, label %105

105:                                              ; preds = %100
  %106 = load i8, i8* %6, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = load i8, i8* %6, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 69
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %105, %100
  %114 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  store %struct.demangle_component* %114, %struct.demangle_component** %3, align 8
  br label %124

115:                                              ; preds = %109
  %116 = load %struct.d_info*, %struct.d_info** %4, align 8
  %117 = load i32, i32* @DEMANGLE_COMPONENT_TYPED_NAME, align 4
  %118 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %119 = load %struct.d_info*, %struct.d_info** %4, align 8
  %120 = load %struct.demangle_component*, %struct.demangle_component** %7, align 8
  %121 = call i32 @has_return_type(%struct.demangle_component* %120)
  %122 = call i32 @d_bare_function_type(%struct.d_info* %119, i32 %121)
  %123 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %116, i32 %117, %struct.demangle_component* %118, i32 %122)
  store %struct.demangle_component* %123, %struct.demangle_component** %3, align 8
  br label %124

124:                                              ; preds = %115, %113, %98, %18
  %125 = load %struct.demangle_component*, %struct.demangle_component** %3, align 8
  ret %struct.demangle_component* %125
}

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_special_name(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_name(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_left(%struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_right(%struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, i32) #1

declare dso_local i32 @d_bare_function_type(%struct.d_info*, i32) #1

declare dso_local i32 @has_return_type(%struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_expr_primary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/libiberty/extr_cp-demangle.c_d_expr_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_BUILTIN_TYPE = common dso_local global i64 0, align 8
@D_PRINT_DEFAULT = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_LITERAL = common dso_local global i32 0, align 4
@DEMANGLE_COMPONENT_LITERAL_NEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_expr_primary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_expr_primary(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %8 = load %struct.d_info*, %struct.d_info** %3, align 8
  %9 = call i32 @d_check_char(%struct.d_info* %8, i8 signext 76)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %105

12:                                               ; preds = %1
  %13 = load %struct.d_info*, %struct.d_info** %3, align 8
  %14 = call signext i8 @d_peek_char(%struct.d_info* %13)
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 95
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.d_info*, %struct.d_info** %3, align 8
  %19 = call %struct.demangle_component* @cplus_demangle_mangled_name(%struct.d_info* %18, i32 0)
  store %struct.demangle_component* %19, %struct.demangle_component** %4, align 8
  br label %98

20:                                               ; preds = %12
  %21 = load %struct.d_info*, %struct.d_info** %3, align 8
  %22 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %21)
  store %struct.demangle_component* %22, %struct.demangle_component** %5, align 8
  %23 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %24 = icmp eq %struct.demangle_component* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %105

26:                                               ; preds = %20
  %27 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %28 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DEMANGLE_COMPONENT_BUILTIN_TYPE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %56

32:                                               ; preds = %26
  %33 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %34 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @D_PRINT_DEFAULT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %32
  %43 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %44 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.d_info*, %struct.d_info** %3, align 8
  %51 = getelementptr inbounds %struct.d_info, %struct.d_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %49
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %51, align 4
  br label %56

56:                                               ; preds = %42, %32, %26
  %57 = load i32, i32* @DEMANGLE_COMPONENT_LITERAL, align 4
  store i32 %57, i32* %6, align 4
  %58 = load %struct.d_info*, %struct.d_info** %3, align 8
  %59 = call signext i8 @d_peek_char(%struct.d_info* %58)
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 110
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load i32, i32* @DEMANGLE_COMPONENT_LITERAL_NEG, align 4
  store i32 %63, i32* %6, align 4
  %64 = load %struct.d_info*, %struct.d_info** %3, align 8
  %65 = call i32 @d_advance(%struct.d_info* %64, i32 1)
  br label %66

66:                                               ; preds = %62, %56
  %67 = load %struct.d_info*, %struct.d_info** %3, align 8
  %68 = call i8* @d_str(%struct.d_info* %67)
  store i8* %68, i8** %7, align 8
  br label %69

69:                                               ; preds = %80, %66
  %70 = load %struct.d_info*, %struct.d_info** %3, align 8
  %71 = call signext i8 @d_peek_char(%struct.d_info* %70)
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 69
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load %struct.d_info*, %struct.d_info** %3, align 8
  %76 = call signext i8 @d_peek_char(%struct.d_info* %75)
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %105

80:                                               ; preds = %74
  %81 = load %struct.d_info*, %struct.d_info** %3, align 8
  %82 = call i32 @d_advance(%struct.d_info* %81, i32 1)
  br label %69

83:                                               ; preds = %69
  %84 = load %struct.d_info*, %struct.d_info** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %87 = load %struct.d_info*, %struct.d_info** %3, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load %struct.d_info*, %struct.d_info** %3, align 8
  %90 = call i8* @d_str(%struct.d_info* %89)
  %91 = load i8*, i8** %7, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = trunc i64 %94 to i32
  %96 = call i32 @d_make_name(%struct.d_info* %87, i8* %88, i32 %95)
  %97 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %84, i32 %85, %struct.demangle_component* %86, i32 %96)
  store %struct.demangle_component* %97, %struct.demangle_component** %4, align 8
  br label %98

98:                                               ; preds = %83, %17
  %99 = load %struct.d_info*, %struct.d_info** %3, align 8
  %100 = call i32 @d_check_char(%struct.d_info* %99, i8 signext 69)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %105

103:                                              ; preds = %98
  %104 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  store %struct.demangle_component* %104, %struct.demangle_component** %2, align 8
  br label %105

105:                                              ; preds = %103, %102, %79, %25, %11
  %106 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %106
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local signext i8 @d_peek_char(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @cplus_demangle_mangled_name(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @cplus_demangle_type(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local i8* @d_str(%struct.d_info*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, i32) #1

declare dso_local i32 @d_make_name(%struct.d_info*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

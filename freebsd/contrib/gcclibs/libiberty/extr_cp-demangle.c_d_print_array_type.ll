; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_print_array_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_print_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d_print_info = type { i32 }
%struct.demangle_component = type { i32 }
%struct.d_print_mod = type { %struct.TYPE_2__*, i32, %struct.d_print_mod* }
%struct.TYPE_2__ = type { i64 }

@DEMANGLE_COMPONENT_ARRAY_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c" (\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.d_print_info*, %struct.demangle_component*, %struct.d_print_mod*)* @d_print_array_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d_print_array_type(%struct.d_print_info* %0, %struct.demangle_component* %1, %struct.d_print_mod* %2) #0 {
  %4 = alloca %struct.d_print_info*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca %struct.d_print_mod*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.d_print_mod*, align 8
  store %struct.d_print_info* %0, %struct.d_print_info** %4, align 8
  store %struct.demangle_component* %1, %struct.demangle_component** %5, align 8
  store %struct.d_print_mod* %2, %struct.d_print_mod** %6, align 8
  store i32 1, i32* %7, align 4
  %10 = load %struct.d_print_mod*, %struct.d_print_mod** %6, align 8
  %11 = icmp ne %struct.d_print_mod* %10, null
  br i1 %11, label %12, label %53

12:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %13 = load %struct.d_print_mod*, %struct.d_print_mod** %6, align 8
  store %struct.d_print_mod* %13, %struct.d_print_mod** %9, align 8
  br label %14

14:                                               ; preds = %33, %12
  %15 = load %struct.d_print_mod*, %struct.d_print_mod** %9, align 8
  %16 = icmp ne %struct.d_print_mod* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load %struct.d_print_mod*, %struct.d_print_mod** %9, align 8
  %19 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load %struct.d_print_mod*, %struct.d_print_mod** %9, align 8
  %24 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DEMANGLE_COMPONENT_ARRAY_TYPE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %37

31:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %37

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.d_print_mod*, %struct.d_print_mod** %9, align 8
  %35 = getelementptr inbounds %struct.d_print_mod, %struct.d_print_mod* %34, i32 0, i32 2
  %36 = load %struct.d_print_mod*, %struct.d_print_mod** %35, align 8
  store %struct.d_print_mod* %36, %struct.d_print_mod** %9, align 8
  br label %14

37:                                               ; preds = %31, %30, %14
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %42 = call i32 @d_append_string_constant(%struct.d_print_info* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37
  %44 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %45 = load %struct.d_print_mod*, %struct.d_print_mod** %6, align 8
  %46 = call i32 @d_print_mod_list(%struct.d_print_info* %44, %struct.d_print_mod* %45, i32 0)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %51 = call i32 @d_append_char(%struct.d_print_info* %50, i8 signext 41)
  br label %52

52:                                               ; preds = %49, %43
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %58 = call i32 @d_append_char(%struct.d_print_info* %57, i8 signext 32)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %61 = call i32 @d_append_char(%struct.d_print_info* %60, i8 signext 91)
  %62 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %63 = call i32* @d_left(%struct.demangle_component* %62)
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %67 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %68 = call i32* @d_left(%struct.demangle_component* %67)
  %69 = call i32 @d_print_comp(%struct.d_print_info* %66, i32* %68)
  br label %70

70:                                               ; preds = %65, %59
  %71 = load %struct.d_print_info*, %struct.d_print_info** %4, align 8
  %72 = call i32 @d_append_char(%struct.d_print_info* %71, i8 signext 93)
  ret void
}

declare dso_local i32 @d_append_string_constant(%struct.d_print_info*, i8*) #1

declare dso_local i32 @d_print_mod_list(%struct.d_print_info*, %struct.d_print_mod*, i32) #1

declare dso_local i32 @d_append_char(%struct.d_print_info*, i8 signext) #1

declare dso_local i32* @d_left(%struct.demangle_component*) #1

declare dso_local i32 @d_print_comp(%struct.d_print_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

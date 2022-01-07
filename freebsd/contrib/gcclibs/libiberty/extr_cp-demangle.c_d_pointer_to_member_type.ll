; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_pointer_to_member_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_pointer_to_member_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i64 }
%struct.d_info = type { i32 }

@DEMANGLE_COMPONENT_FUNCTION_TYPE = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_PTRMEM_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_pointer_to_member_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_pointer_to_member_type(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca %struct.demangle_component*, align 8
  %5 = alloca %struct.demangle_component*, align 8
  %6 = alloca %struct.demangle_component**, align 8
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %7 = load %struct.d_info*, %struct.d_info** %3, align 8
  %8 = call i32 @d_check_char(%struct.d_info* %7, i8 signext 77)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %50

11:                                               ; preds = %1
  %12 = load %struct.d_info*, %struct.d_info** %3, align 8
  %13 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %12)
  store %struct.demangle_component* %13, %struct.demangle_component** %4, align 8
  %14 = load %struct.d_info*, %struct.d_info** %3, align 8
  %15 = call %struct.demangle_component** @d_cv_qualifiers(%struct.d_info* %14, %struct.demangle_component** %5, i32 1)
  store %struct.demangle_component** %15, %struct.demangle_component*** %6, align 8
  %16 = load %struct.demangle_component**, %struct.demangle_component*** %6, align 8
  %17 = icmp eq %struct.demangle_component** %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %50

19:                                               ; preds = %11
  %20 = load %struct.d_info*, %struct.d_info** %3, align 8
  %21 = call %struct.demangle_component* @cplus_demangle_type(%struct.d_info* %20)
  %22 = load %struct.demangle_component**, %struct.demangle_component*** %6, align 8
  store %struct.demangle_component* %21, %struct.demangle_component** %22, align 8
  %23 = load %struct.demangle_component**, %struct.demangle_component*** %6, align 8
  %24 = load %struct.demangle_component*, %struct.demangle_component** %23, align 8
  %25 = icmp eq %struct.demangle_component* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %50

27:                                               ; preds = %19
  %28 = load %struct.demangle_component**, %struct.demangle_component*** %6, align 8
  %29 = icmp ne %struct.demangle_component** %28, %5
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %struct.demangle_component**, %struct.demangle_component*** %6, align 8
  %32 = load %struct.demangle_component*, %struct.demangle_component** %31, align 8
  %33 = getelementptr inbounds %struct.demangle_component, %struct.demangle_component* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DEMANGLE_COMPONENT_FUNCTION_TYPE, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load %struct.d_info*, %struct.d_info** %3, align 8
  %39 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %40 = call i32 @d_add_substitution(%struct.d_info* %38, %struct.demangle_component* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %50

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %30, %27
  %45 = load %struct.d_info*, %struct.d_info** %3, align 8
  %46 = load i32, i32* @DEMANGLE_COMPONENT_PTRMEM_TYPE, align 4
  %47 = load %struct.demangle_component*, %struct.demangle_component** %4, align 8
  %48 = load %struct.demangle_component*, %struct.demangle_component** %5, align 8
  %49 = call %struct.demangle_component* @d_make_comp(%struct.d_info* %45, i32 %46, %struct.demangle_component* %47, %struct.demangle_component* %48)
  store %struct.demangle_component* %49, %struct.demangle_component** %2, align 8
  br label %50

50:                                               ; preds = %44, %42, %26, %18, %10
  %51 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %51
}

declare dso_local i32 @d_check_char(%struct.d_info*, i8 signext) #1

declare dso_local %struct.demangle_component* @cplus_demangle_type(%struct.d_info*) #1

declare dso_local %struct.demangle_component** @d_cv_qualifiers(%struct.d_info*, %struct.demangle_component**, i32) #1

declare dso_local i32 @d_add_substitution(%struct.d_info*, %struct.demangle_component*) #1

declare dso_local %struct.demangle_component* @d_make_comp(%struct.d_info*, i32, %struct.demangle_component*, %struct.demangle_component*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

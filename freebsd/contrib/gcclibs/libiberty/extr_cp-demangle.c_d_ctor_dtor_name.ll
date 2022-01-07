; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_ctor_dtor_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcclibs/libiberty/extr_cp-demangle.c_d_ctor_dtor_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demangle_component = type { i32 }
%struct.d_info = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@DEMANGLE_COMPONENT_NAME = common dso_local global i64 0, align 8
@DEMANGLE_COMPONENT_SUB_STD = common dso_local global i64 0, align 8
@gnu_v3_complete_object_ctor = common dso_local global i32 0, align 4
@gnu_v3_base_object_ctor = common dso_local global i32 0, align 4
@gnu_v3_complete_object_allocating_ctor = common dso_local global i32 0, align 4
@gnu_v3_deleting_dtor = common dso_local global i32 0, align 4
@gnu_v3_complete_object_dtor = common dso_local global i32 0, align 4
@gnu_v3_base_object_dtor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.demangle_component* (%struct.d_info*)* @d_ctor_dtor_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.demangle_component* @d_ctor_dtor_name(%struct.d_info* %0) #0 {
  %2 = alloca %struct.demangle_component*, align 8
  %3 = alloca %struct.d_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.d_info* %0, %struct.d_info** %3, align 8
  %6 = load %struct.d_info*, %struct.d_info** %3, align 8
  %7 = getelementptr inbounds %struct.d_info, %struct.d_info* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = icmp ne %struct.TYPE_9__* %8, null
  br i1 %9, label %10, label %56

10:                                               ; preds = %1
  %11 = load %struct.d_info*, %struct.d_info** %3, align 8
  %12 = getelementptr inbounds %struct.d_info, %struct.d_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DEMANGLE_COMPONENT_NAME, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %10
  %19 = load %struct.d_info*, %struct.d_info** %3, align 8
  %20 = getelementptr inbounds %struct.d_info, %struct.d_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.d_info*, %struct.d_info** %3, align 8
  %27 = getelementptr inbounds %struct.d_info, %struct.d_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 8
  br label %55

32:                                               ; preds = %10
  %33 = load %struct.d_info*, %struct.d_info** %3, align 8
  %34 = getelementptr inbounds %struct.d_info, %struct.d_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DEMANGLE_COMPONENT_SUB_STD, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = load %struct.d_info*, %struct.d_info** %3, align 8
  %42 = getelementptr inbounds %struct.d_info, %struct.d_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.d_info*, %struct.d_info** %3, align 8
  %49 = getelementptr inbounds %struct.d_info, %struct.d_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %47
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 8
  br label %54

54:                                               ; preds = %40, %32
  br label %55

55:                                               ; preds = %54, %18
  br label %56

56:                                               ; preds = %55, %1
  %57 = load %struct.d_info*, %struct.d_info** %3, align 8
  %58 = call i32 @d_peek_char(%struct.d_info* %57)
  switch i32 %58, label %97 [
    i32 67, label %59
    i32 68, label %78
  ]

59:                                               ; preds = %56
  %60 = load %struct.d_info*, %struct.d_info** %3, align 8
  %61 = call i32 @d_peek_next_char(%struct.d_info* %60)
  switch i32 %61, label %68 [
    i32 49, label %62
    i32 50, label %64
    i32 51, label %66
  ]

62:                                               ; preds = %59
  %63 = load i32, i32* @gnu_v3_complete_object_ctor, align 4
  store i32 %63, i32* %4, align 4
  br label %69

64:                                               ; preds = %59
  %65 = load i32, i32* @gnu_v3_base_object_ctor, align 4
  store i32 %65, i32* %4, align 4
  br label %69

66:                                               ; preds = %59
  %67 = load i32, i32* @gnu_v3_complete_object_allocating_ctor, align 4
  store i32 %67, i32* %4, align 4
  br label %69

68:                                               ; preds = %59
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %98

69:                                               ; preds = %66, %64, %62
  %70 = load %struct.d_info*, %struct.d_info** %3, align 8
  %71 = call i32 @d_advance(%struct.d_info* %70, i32 2)
  %72 = load %struct.d_info*, %struct.d_info** %3, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.d_info*, %struct.d_info** %3, align 8
  %75 = getelementptr inbounds %struct.d_info, %struct.d_info* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = call %struct.demangle_component* @d_make_ctor(%struct.d_info* %72, i32 %73, %struct.TYPE_9__* %76)
  store %struct.demangle_component* %77, %struct.demangle_component** %2, align 8
  br label %98

78:                                               ; preds = %56
  %79 = load %struct.d_info*, %struct.d_info** %3, align 8
  %80 = call i32 @d_peek_next_char(%struct.d_info* %79)
  switch i32 %80, label %87 [
    i32 48, label %81
    i32 49, label %83
    i32 50, label %85
  ]

81:                                               ; preds = %78
  %82 = load i32, i32* @gnu_v3_deleting_dtor, align 4
  store i32 %82, i32* %5, align 4
  br label %88

83:                                               ; preds = %78
  %84 = load i32, i32* @gnu_v3_complete_object_dtor, align 4
  store i32 %84, i32* %5, align 4
  br label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @gnu_v3_base_object_dtor, align 4
  store i32 %86, i32* %5, align 4
  br label %88

87:                                               ; preds = %78
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %98

88:                                               ; preds = %85, %83, %81
  %89 = load %struct.d_info*, %struct.d_info** %3, align 8
  %90 = call i32 @d_advance(%struct.d_info* %89, i32 2)
  %91 = load %struct.d_info*, %struct.d_info** %3, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load %struct.d_info*, %struct.d_info** %3, align 8
  %94 = getelementptr inbounds %struct.d_info, %struct.d_info* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = call %struct.demangle_component* @d_make_dtor(%struct.d_info* %91, i32 %92, %struct.TYPE_9__* %95)
  store %struct.demangle_component* %96, %struct.demangle_component** %2, align 8
  br label %98

97:                                               ; preds = %56
  store %struct.demangle_component* null, %struct.demangle_component** %2, align 8
  br label %98

98:                                               ; preds = %97, %88, %87, %69, %68
  %99 = load %struct.demangle_component*, %struct.demangle_component** %2, align 8
  ret %struct.demangle_component* %99
}

declare dso_local i32 @d_peek_char(%struct.d_info*) #1

declare dso_local i32 @d_peek_next_char(%struct.d_info*) #1

declare dso_local i32 @d_advance(%struct.d_info*, i32) #1

declare dso_local %struct.demangle_component* @d_make_ctor(%struct.d_info*, i32, %struct.TYPE_9__*) #1

declare dso_local %struct.demangle_component* @d_make_dtor(%struct.d_info*, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_leave_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_leave_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_8__*, i64 }

@current_binding_level = common dso_local global %struct.TYPE_8__* null, align 8
@sk_namespace = common dso_local global i64 0, align 8
@class_binding_level = common dso_local global %struct.TYPE_8__* null, align 8
@global_namespace = common dso_local global i32 0, align 4
@ENABLE_SCOPE_CHECKING = common dso_local global i64 0, align 8
@binding_depth = common dso_local global i64 0, align 8
@input_line = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"leave\00", align 1
@is_class_level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"XXX is_class_level != (current_scope == class_scope)\0A\00", align 1
@sk_class = common dso_local global i64 0, align 8
@free_binding_level = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @leave_scope() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_binding_level, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %1, align 8
  %3 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %4 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @sk_namespace, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** @class_binding_level, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** @class_binding_level, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** @current_binding_level, align 8
  br label %13

13:                                               ; preds = %11, %8, %0
  %14 = load i32, i32* @global_namespace, align 4
  %15 = call i64 @NAMESPACE_LEVEL(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %19 = call i32 @global_scope_p(%struct.TYPE_8__* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @gcc_assert(i32 %22)
  br label %24

24:                                               ; preds = %17, %13
  %25 = load i64, i64* @ENABLE_SCOPE_CHECKING, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %24
  %28 = load i64, i64* @binding_depth, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* @binding_depth, align 8
  %30 = call i32 @indent(i64 %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %32 = load i32, i32* @input_line, align 4
  %33 = call i32 @cxx_scope_debug(%struct.TYPE_8__* %31, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @is_class_level, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @class_binding_level, align 8
  %37 = icmp eq %struct.TYPE_8__* %35, %36
  %38 = zext i1 %37 to i32
  %39 = icmp ne i32 %34, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load i64, i64* @binding_depth, align 8
  %42 = call i32 @indent(i64 %41)
  %43 = call i32 @verbatim(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %27
  store i32 0, i32* @is_class_level, align 4
  br label %45

45:                                               ; preds = %44, %24
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** @current_binding_level, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @sk_namespace, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %45
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @sk_class, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %54
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** @free_binding_level, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  store %struct.TYPE_8__* %61, %struct.TYPE_8__** %63, align 8
  %64 = load i64, i64* @ENABLE_SCOPE_CHECKING, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @binding_depth, align 8
  %71 = icmp eq i64 %69, %70
  br label %72

72:                                               ; preds = %66, %60
  %73 = phi i1 [ true, %60 ], [ %71, %66 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @gcc_assert(i32 %74)
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  store %struct.TYPE_8__* %76, %struct.TYPE_8__** @free_binding_level, align 8
  br label %77

77:                                               ; preds = %72, %54, %45
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @sk_class, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @class_binding_level, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_binding_level, align 8
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %1, align 8
  br label %85

85:                                               ; preds = %97, %83
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %87 = icmp ne %struct.TYPE_8__* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @sk_class, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  store %struct.TYPE_8__* %95, %struct.TYPE_8__** @class_binding_level, align 8
  br label %101

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  store %struct.TYPE_8__* %100, %struct.TYPE_8__** %1, align 8
  br label %85

101:                                              ; preds = %94, %85
  br label %102

102:                                              ; preds = %101, %77
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current_binding_level, align 8
  ret %struct.TYPE_8__* %103
}

declare dso_local i64 @NAMESPACE_LEVEL(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @global_scope_p(%struct.TYPE_8__*) #1

declare dso_local i32 @indent(i64) #1

declare dso_local i32 @cxx_scope_debug(%struct.TYPE_8__*, i32, i8*) #1

declare dso_local i32 @verbatim(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

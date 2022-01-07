; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_push_binding_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_push_binding_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_binding_level = type { i32, %struct.cp_binding_level* }

@current_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@keep_next_level_flag = common dso_local global i32 0, align 4
@ENABLE_SCOPE_CHECKING = common dso_local global i64 0, align 8
@binding_depth = common dso_local global i32 0, align 4
@input_line = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"push\00", align 1
@is_class_level = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @push_binding_level(%struct.cp_binding_level* %0) #0 {
  %2 = alloca %struct.cp_binding_level*, align 8
  store %struct.cp_binding_level* %0, %struct.cp_binding_level** %2, align 8
  %3 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  %4 = load %struct.cp_binding_level*, %struct.cp_binding_level** %2, align 8
  %5 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %4, i32 0, i32 1
  store %struct.cp_binding_level* %3, %struct.cp_binding_level** %5, align 8
  %6 = load %struct.cp_binding_level*, %struct.cp_binding_level** %2, align 8
  store %struct.cp_binding_level* %6, %struct.cp_binding_level** @current_binding_level, align 8
  store i32 0, i32* @keep_next_level_flag, align 4
  %7 = load i64, i64* @ENABLE_SCOPE_CHECKING, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i32, i32* @binding_depth, align 4
  %11 = load %struct.cp_binding_level*, %struct.cp_binding_level** %2, align 8
  %12 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @binding_depth, align 4
  %14 = call i32 @indent(i32 %13)
  %15 = load %struct.cp_binding_level*, %struct.cp_binding_level** %2, align 8
  %16 = load i32, i32* @input_line, align 4
  %17 = call i32 @cxx_scope_debug(%struct.cp_binding_level* %15, i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @is_class_level, align 8
  %18 = load i32, i32* @binding_depth, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @binding_depth, align 4
  br label %20

20:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32 @indent(i32) #1

declare dso_local i32 @cxx_scope_debug(%struct.cp_binding_level*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

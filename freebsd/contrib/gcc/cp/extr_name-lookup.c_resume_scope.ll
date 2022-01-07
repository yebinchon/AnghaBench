; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_resume_scope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_name-lookup.c_resume_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cp_binding_level = type { i32, %struct.cp_binding_level* }

@class_binding_level = common dso_local global i32 0, align 4
@current_binding_level = common dso_local global %struct.cp_binding_level* null, align 8
@ENABLE_SCOPE_CHECKING = common dso_local global i64 0, align 8
@binding_depth = common dso_local global i32 0, align 4
@input_line = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"resume\00", align 1
@is_class_level = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cp_binding_level*)* @resume_scope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resume_scope(%struct.cp_binding_level* %0) #0 {
  %2 = alloca %struct.cp_binding_level*, align 8
  store %struct.cp_binding_level* %0, %struct.cp_binding_level** %2, align 8
  %3 = load i32, i32* @class_binding_level, align 4
  %4 = icmp ne i32 %3, 0
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i32 @gcc_assert(i32 %6)
  %8 = load %struct.cp_binding_level*, %struct.cp_binding_level** %2, align 8
  %9 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %8, i32 0, i32 1
  %10 = load %struct.cp_binding_level*, %struct.cp_binding_level** %9, align 8
  %11 = load %struct.cp_binding_level*, %struct.cp_binding_level** @current_binding_level, align 8
  %12 = icmp eq %struct.cp_binding_level* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @gcc_assert(i32 %13)
  %15 = load %struct.cp_binding_level*, %struct.cp_binding_level** %2, align 8
  store %struct.cp_binding_level* %15, %struct.cp_binding_level** @current_binding_level, align 8
  %16 = load i64, i64* @ENABLE_SCOPE_CHECKING, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load i32, i32* @binding_depth, align 4
  %20 = load %struct.cp_binding_level*, %struct.cp_binding_level** %2, align 8
  %21 = getelementptr inbounds %struct.cp_binding_level, %struct.cp_binding_level* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @binding_depth, align 4
  %23 = call i32 @indent(i32 %22)
  %24 = load %struct.cp_binding_level*, %struct.cp_binding_level** %2, align 8
  %25 = load i32, i32* @input_line, align 4
  %26 = call i32 @cxx_scope_debug(%struct.cp_binding_level* %24, i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @is_class_level, align 8
  %27 = load i32, i32* @binding_depth, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @binding_depth, align 4
  br label %29

29:                                               ; preds = %18, %1
  ret void
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @indent(i32) #1

declare dso_local i32 @cxx_scope_debug(%struct.cp_binding_level*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

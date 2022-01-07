; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_repeat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_repeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.exp_element = type { i32 }
%struct.agent_expr = type { i32 }
%struct.axs_value = type { i64, %struct.type* }
%struct.type = type { i32 }
%struct.value = type { i32 }

@axs_lvalue_memory = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Left operand of `@' must be an object in memory.\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"Right operand of `@' must be a constant, in agent expressions.\00", align 1
@TYPE_CODE_INT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Right operand of `@' must be an integer.\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Right operand of `@' must be positive.\00", align 1
@builtin_type_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.exp_element**, %struct.agent_expr*, %struct.axs_value*)* @gen_repeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_repeat(%union.exp_element** %0, %struct.agent_expr* %1, %struct.axs_value* %2) #0 {
  %4 = alloca %union.exp_element**, align 8
  %5 = alloca %struct.agent_expr*, align 8
  %6 = alloca %struct.axs_value*, align 8
  %7 = alloca %struct.axs_value, align 8
  %8 = alloca %struct.value*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.type*, align 8
  %11 = alloca %struct.type*, align 8
  store %union.exp_element** %0, %union.exp_element*** %4, align 8
  store %struct.agent_expr* %1, %struct.agent_expr** %5, align 8
  store %struct.axs_value* %2, %struct.axs_value** %6, align 8
  %12 = load %union.exp_element**, %union.exp_element*** %4, align 8
  %13 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %14 = call i32 @gen_expr(%union.exp_element** %12, %struct.agent_expr* %13, %struct.axs_value* %7)
  %15 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @axs_lvalue_memory, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %3
  %22 = load %union.exp_element**, %union.exp_element*** %4, align 8
  %23 = call %struct.value* @const_expr(%union.exp_element** %22)
  store %struct.value* %23, %struct.value** %8, align 8
  %24 = load %struct.value*, %struct.value** %8, align 8
  %25 = icmp ne %struct.value* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = call i32 @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %21
  %29 = load %struct.value*, %struct.value** %8, align 8
  %30 = getelementptr inbounds %struct.value, %struct.value* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @TYPE_CODE(i32 %31)
  %33 = load i64, i64* @TYPE_CODE_INT, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 @error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %28
  %38 = load %struct.value*, %struct.value** %8, align 8
  %39 = call i32 @value_as_long(%struct.value* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %37
  %45 = load i32, i32* @builtin_type_int, align 4
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call %struct.type* @create_range_type(i32 0, i32 %45, i32 0, i32 %47)
  store %struct.type* %48, %struct.type** %10, align 8
  %49 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %7, i32 0, i32 1
  %50 = load %struct.type*, %struct.type** %49, align 8
  %51 = load %struct.type*, %struct.type** %10, align 8
  %52 = call %struct.type* @create_array_type(i32 0, %struct.type* %50, %struct.type* %51)
  store %struct.type* %52, %struct.type** %11, align 8
  %53 = load i64, i64* @axs_lvalue_memory, align 8
  %54 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %55 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.type*, %struct.type** %11, align 8
  %57 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %58 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %57, i32 0, i32 1
  store %struct.type* %56, %struct.type** %58, align 8
  ret void
}

declare dso_local i32 @gen_expr(%union.exp_element**, %struct.agent_expr*, %struct.axs_value*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.value* @const_expr(%union.exp_element**) #1

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

declare dso_local %struct.type* @create_range_type(i32, i32, i32, i32) #1

declare dso_local %struct.type* @create_array_type(i32, %struct.type*, %struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

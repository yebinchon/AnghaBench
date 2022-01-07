; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_usual_arithmetic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_usual_arithmetic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.agent_expr = type { i32 }
%struct.axs_value = type { %struct.type* }

@TYPE_CODE_INT = common dso_local global i64 0, align 8
@builtin_type_int = common dso_local global %struct.type* null, align 8
@aop_swap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, %struct.axs_value*, %struct.axs_value*)* @gen_usual_arithmetic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_usual_arithmetic(%struct.agent_expr* %0, %struct.axs_value* %1, %struct.axs_value* %2) #0 {
  %4 = alloca %struct.agent_expr*, align 8
  %5 = alloca %struct.axs_value*, align 8
  %6 = alloca %struct.axs_value*, align 8
  %7 = alloca %struct.type*, align 8
  store %struct.agent_expr* %0, %struct.agent_expr** %4, align 8
  store %struct.axs_value* %1, %struct.axs_value** %5, align 8
  store %struct.axs_value* %2, %struct.axs_value** %6, align 8
  %8 = load %struct.axs_value*, %struct.axs_value** %5, align 8
  %9 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %8, i32 0, i32 0
  %10 = load %struct.type*, %struct.type** %9, align 8
  %11 = call i64 @TYPE_CODE(%struct.type* %10)
  %12 = load i64, i64* @TYPE_CODE_INT, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %62

14:                                               ; preds = %3
  %15 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %16 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %15, i32 0, i32 0
  %17 = load %struct.type*, %struct.type** %16, align 8
  %18 = call i64 @TYPE_CODE(%struct.type* %17)
  %19 = load i64, i64* @TYPE_CODE_INT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %62

21:                                               ; preds = %14
  %22 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  %23 = load %struct.axs_value*, %struct.axs_value** %5, align 8
  %24 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %23, i32 0, i32 0
  %25 = load %struct.type*, %struct.type** %24, align 8
  %26 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %27 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %26, i32 0, i32 0
  %28 = load %struct.type*, %struct.type** %27, align 8
  %29 = call %struct.type* @max_type(%struct.type* %25, %struct.type* %28)
  %30 = call %struct.type* @max_type(%struct.type* %22, %struct.type* %29)
  store %struct.type* %30, %struct.type** %7, align 8
  %31 = load %struct.agent_expr*, %struct.agent_expr** %4, align 8
  %32 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %33 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %32, i32 0, i32 0
  %34 = load %struct.type*, %struct.type** %33, align 8
  %35 = load %struct.type*, %struct.type** %7, align 8
  %36 = call i32 @gen_conversion(%struct.agent_expr* %31, %struct.type* %34, %struct.type* %35)
  %37 = load %struct.axs_value*, %struct.axs_value** %5, align 8
  %38 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %37, i32 0, i32 0
  %39 = load %struct.type*, %struct.type** %38, align 8
  %40 = load %struct.type*, %struct.type** %7, align 8
  %41 = call i64 @is_nontrivial_conversion(%struct.type* %39, %struct.type* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %21
  %44 = load %struct.agent_expr*, %struct.agent_expr** %4, align 8
  %45 = load i32, i32* @aop_swap, align 4
  %46 = call i32 @ax_simple(%struct.agent_expr* %44, i32 %45)
  %47 = load %struct.agent_expr*, %struct.agent_expr** %4, align 8
  %48 = load %struct.axs_value*, %struct.axs_value** %5, align 8
  %49 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %48, i32 0, i32 0
  %50 = load %struct.type*, %struct.type** %49, align 8
  %51 = load %struct.type*, %struct.type** %7, align 8
  %52 = call i32 @gen_conversion(%struct.agent_expr* %47, %struct.type* %50, %struct.type* %51)
  %53 = load %struct.agent_expr*, %struct.agent_expr** %4, align 8
  %54 = load i32, i32* @aop_swap, align 4
  %55 = call i32 @ax_simple(%struct.agent_expr* %53, i32 %54)
  br label %56

56:                                               ; preds = %43, %21
  %57 = load %struct.type*, %struct.type** %7, align 8
  %58 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %59 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %58, i32 0, i32 0
  store %struct.type* %57, %struct.type** %59, align 8
  %60 = load %struct.axs_value*, %struct.axs_value** %5, align 8
  %61 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %60, i32 0, i32 0
  store %struct.type* %57, %struct.type** %61, align 8
  br label %62

62:                                               ; preds = %56, %14, %3
  ret void
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @max_type(%struct.type*, %struct.type*) #1

declare dso_local i32 @gen_conversion(%struct.agent_expr*, %struct.type*, %struct.type*) #1

declare dso_local i64 @is_nontrivial_conversion(%struct.type*, %struct.type*) #1

declare dso_local i32 @ax_simple(%struct.agent_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

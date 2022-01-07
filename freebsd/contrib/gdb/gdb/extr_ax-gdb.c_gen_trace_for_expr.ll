; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_trace_for_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_trace_for_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }
%struct.expression = type { %union.exp_element* }
%union.exp_element = type { i32 }
%struct.cleanup = type { i32 }
%struct.axs_value = type { i32 }

@trace_kludge = common dso_local global i32 0, align 4
@aop_end = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.agent_expr* @gen_trace_for_expr(i32 %0, %struct.expression* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.expression*, align 8
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca %struct.agent_expr*, align 8
  %7 = alloca %union.exp_element*, align 8
  %8 = alloca %struct.axs_value, align 4
  store i32 %0, i32* %3, align 4
  store %struct.expression* %1, %struct.expression** %4, align 8
  store %struct.cleanup* null, %struct.cleanup** %5, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.agent_expr* @new_agent_expr(i32 %9)
  store %struct.agent_expr* %10, %struct.agent_expr** %6, align 8
  %11 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %12 = call %struct.cleanup* @make_cleanup_free_agent_expr(%struct.agent_expr* %11)
  store %struct.cleanup* %12, %struct.cleanup** %5, align 8
  %13 = load %struct.expression*, %struct.expression** %4, align 8
  %14 = getelementptr inbounds %struct.expression, %struct.expression* %13, i32 0, i32 0
  %15 = load %union.exp_element*, %union.exp_element** %14, align 8
  store %union.exp_element* %15, %union.exp_element** %7, align 8
  store i32 1, i32* @trace_kludge, align 4
  %16 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %17 = call i32 @gen_expr(%union.exp_element** %7, %struct.agent_expr* %16, %struct.axs_value* %8)
  %18 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %19 = call i32 @gen_traced_pop(%struct.agent_expr* %18, %struct.axs_value* %8)
  %20 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %21 = load i32, i32* @aop_end, align 4
  %22 = call i32 @ax_simple(%struct.agent_expr* %20, i32 %21)
  %23 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %24 = call i32 @discard_cleanups(%struct.cleanup* %23)
  %25 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  ret %struct.agent_expr* %25
}

declare dso_local %struct.agent_expr* @new_agent_expr(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_free_agent_expr(%struct.agent_expr*) #1

declare dso_local i32 @gen_expr(%union.exp_element**, %struct.agent_expr*, %struct.axs_value*) #1

declare dso_local i32 @gen_traced_pop(%struct.agent_expr*, %struct.axs_value*) #1

declare dso_local i32 @ax_simple(%struct.agent_expr*, i32) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_expr_to_agent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_expr_to_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }
%struct.expression = type { %union.exp_element* }
%union.exp_element = type { i32 }
%struct.axs_value = type { i32 }
%struct.cleanup = type { i32 }

@trace_kludge = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.agent_expr* @expr_to_agent(%struct.expression* %0, %struct.axs_value* %1) #0 {
  %3 = alloca %struct.expression*, align 8
  %4 = alloca %struct.axs_value*, align 8
  %5 = alloca %struct.cleanup*, align 8
  %6 = alloca %struct.agent_expr*, align 8
  %7 = alloca %union.exp_element*, align 8
  store %struct.expression* %0, %struct.expression** %3, align 8
  store %struct.axs_value* %1, %struct.axs_value** %4, align 8
  store %struct.cleanup* null, %struct.cleanup** %5, align 8
  %8 = call %struct.agent_expr* @new_agent_expr(i32 0)
  store %struct.agent_expr* %8, %struct.agent_expr** %6, align 8
  %9 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %10 = call %struct.cleanup* @make_cleanup_free_agent_expr(%struct.agent_expr* %9)
  store %struct.cleanup* %10, %struct.cleanup** %5, align 8
  %11 = load %struct.expression*, %struct.expression** %3, align 8
  %12 = getelementptr inbounds %struct.expression, %struct.expression* %11, i32 0, i32 0
  %13 = load %union.exp_element*, %union.exp_element** %12, align 8
  store %union.exp_element* %13, %union.exp_element** %7, align 8
  store i64 0, i64* @trace_kludge, align 8
  %14 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  %15 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %16 = call i32 @gen_expr(%union.exp_element** %7, %struct.agent_expr* %14, %struct.axs_value* %15)
  %17 = load %struct.cleanup*, %struct.cleanup** %5, align 8
  %18 = call i32 @discard_cleanups(%struct.cleanup* %17)
  %19 = load %struct.agent_expr*, %struct.agent_expr** %6, align 8
  ret %struct.agent_expr* %19
}

declare dso_local %struct.agent_expr* @new_agent_expr(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_free_agent_expr(%struct.agent_expr*) #1

declare dso_local i32 @gen_expr(%union.exp_element**, %struct.agent_expr*, %struct.axs_value*) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_sizeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_sizeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.exp_element = type { i32 }
%struct.agent_expr = type { i32 }
%struct.axs_value = type { i32, i32 }

@axs_rvalue = common dso_local global i32 0, align 4
@builtin_type_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.exp_element**, %struct.agent_expr*, %struct.axs_value*)* @gen_sizeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_sizeof(%union.exp_element** %0, %struct.agent_expr* %1, %struct.axs_value* %2) #0 {
  %4 = alloca %union.exp_element**, align 8
  %5 = alloca %struct.agent_expr*, align 8
  %6 = alloca %struct.axs_value*, align 8
  %7 = alloca i32, align 4
  store %union.exp_element** %0, %union.exp_element*** %4, align 8
  store %struct.agent_expr* %1, %struct.agent_expr** %5, align 8
  store %struct.axs_value* %2, %struct.axs_value** %6, align 8
  %8 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %9 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %union.exp_element**, %union.exp_element*** %4, align 8
  %12 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %13 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %14 = call i32 @gen_expr(%union.exp_element** %11, %struct.agent_expr* %12, %struct.axs_value* %13)
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %17 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %19 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %20 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @TYPE_LENGTH(i32 %21)
  %23 = call i32 @ax_const_l(%struct.agent_expr* %18, i32 %22)
  %24 = load i32, i32* @axs_rvalue, align 4
  %25 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %26 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @builtin_type_int, align 4
  %28 = load %struct.axs_value*, %struct.axs_value** %6, align 8
  %29 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local i32 @gen_expr(%union.exp_element**, %struct.agent_expr*, %struct.axs_value*) #1

declare dso_local i32 @ax_const_l(%struct.agent_expr*, i32) #1

declare dso_local i32 @TYPE_LENGTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

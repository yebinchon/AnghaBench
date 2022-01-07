; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_traced_pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_traced_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }
%struct.axs_value = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@trace_kludge = common dso_local global i64 0, align 8
@aop_pop = common dso_local global i32 0, align 4
@aop_trace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, %struct.axs_value*)* @gen_traced_pop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_traced_pop(%struct.agent_expr* %0, %struct.axs_value* %1) #0 {
  %3 = alloca %struct.agent_expr*, align 8
  %4 = alloca %struct.axs_value*, align 8
  %5 = alloca i32, align 4
  store %struct.agent_expr* %0, %struct.agent_expr** %3, align 8
  store %struct.axs_value* %1, %struct.axs_value** %4, align 8
  %6 = load i64, i64* @trace_kludge, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %10 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %37 [
    i32 128, label %12
    i32 130, label %16
    i32 129, label %27
  ]

12:                                               ; preds = %8
  %13 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %14 = load i32, i32* @aop_pop, align 4
  %15 = call i32 @ax_simple(%struct.agent_expr* %13, i32 %14)
  br label %37

16:                                               ; preds = %8
  %17 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %18 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @TYPE_LENGTH(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @ax_const_l(%struct.agent_expr* %21, i32 %22)
  %24 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %25 = load i32, i32* @aop_trace, align 4
  %26 = call i32 @ax_simple(%struct.agent_expr* %24, i32 %25)
  br label %37

27:                                               ; preds = %8
  %28 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %29 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %30 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ax_reg(%struct.agent_expr* %28, i32 %32)
  %34 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %35 = load i32, i32* @aop_pop, align 4
  %36 = call i32 @ax_simple(%struct.agent_expr* %34, i32 %35)
  br label %37

37:                                               ; preds = %8, %27, %16, %12
  br label %42

38:                                               ; preds = %2
  %39 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %40 = load i32, i32* @aop_pop, align 4
  %41 = call i32 @ax_simple(%struct.agent_expr* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @ax_simple(%struct.agent_expr*, i32) #1

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @ax_const_l(%struct.agent_expr*, i32) #1

declare dso_local i32 @ax_reg(%struct.agent_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

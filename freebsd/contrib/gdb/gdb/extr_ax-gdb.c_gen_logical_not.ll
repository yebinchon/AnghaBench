; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_logical_not.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_logical_not.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }
%struct.axs_value = type { i32 }

@TYPE_CODE_INT = common dso_local global i64 0, align 8
@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"Illegal type of operand to `!'.\00", align 1
@aop_log_not = common dso_local global i32 0, align 4
@builtin_type_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, %struct.axs_value*)* @gen_logical_not to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_logical_not(%struct.agent_expr* %0, %struct.axs_value* %1) #0 {
  %3 = alloca %struct.agent_expr*, align 8
  %4 = alloca %struct.axs_value*, align 8
  store %struct.agent_expr* %0, %struct.agent_expr** %3, align 8
  store %struct.axs_value* %1, %struct.axs_value** %4, align 8
  %5 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %6 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @TYPE_CODE(i32 %7)
  %9 = load i64, i64* @TYPE_CODE_INT, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %13 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @TYPE_CODE(i32 %14)
  %16 = load i64, i64* @TYPE_CODE_PTR, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %11, %2
  %21 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %22 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %23 = call i32 @gen_usual_unary(%struct.agent_expr* %21, %struct.axs_value* %22)
  %24 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %25 = load i32, i32* @aop_log_not, align 4
  %26 = call i32 @ax_simple(%struct.agent_expr* %24, i32 %25)
  %27 = load i32, i32* @builtin_type_int, align 4
  %28 = load %struct.axs_value*, %struct.axs_value** %4, align 8
  %29 = getelementptr inbounds %struct.axs_value, %struct.axs_value* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  ret void
}

declare dso_local i64 @TYPE_CODE(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @gen_usual_unary(%struct.agent_expr*, %struct.axs_value*) #1

declare dso_local i32 @ax_simple(%struct.agent_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_is_nontrivial_conversion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_is_nontrivial_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.agent_expr = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.type*, %struct.type*)* @is_nontrivial_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_nontrivial_conversion(%struct.type* %0, %struct.type* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.agent_expr*, align 8
  %6 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  store %struct.type* %1, %struct.type** %4, align 8
  %7 = call %struct.agent_expr* @new_agent_expr(i32 0)
  store %struct.agent_expr* %7, %struct.agent_expr** %5, align 8
  %8 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %9 = load %struct.type*, %struct.type** %3, align 8
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = call i32 @gen_conversion(%struct.agent_expr* %8, %struct.type* %9, %struct.type* %10)
  %12 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %13 = getelementptr inbounds %struct.agent_expr, %struct.agent_expr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load %struct.agent_expr*, %struct.agent_expr** %5, align 8
  %18 = call i32 @free_agent_expr(%struct.agent_expr* %17)
  %19 = load i32, i32* %6, align 4
  ret i32 %19
}

declare dso_local %struct.agent_expr* @new_agent_expr(i32) #1

declare dso_local i32 @gen_conversion(%struct.agent_expr*, %struct.type*, %struct.type*) #1

declare dso_local i32 @free_agent_expr(%struct.agent_expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

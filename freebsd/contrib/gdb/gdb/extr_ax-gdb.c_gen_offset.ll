; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }

@aop_add = common dso_local global i32 0, align 4
@aop_sub = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, i32)* @gen_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_offset(%struct.agent_expr* %0, i32 %1) #0 {
  %3 = alloca %struct.agent_expr*, align 8
  %4 = alloca i32, align 4
  store %struct.agent_expr* %0, %struct.agent_expr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ax_const_l(%struct.agent_expr* %8, i32 %9)
  %11 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %12 = load i32, i32* @aop_add, align 4
  %13 = call i32 @ax_simple(%struct.agent_expr* %11, i32 %12)
  br label %26

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sub nsw i32 0, %19
  %21 = call i32 @ax_const_l(%struct.agent_expr* %18, i32 %20)
  %22 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %23 = load i32, i32* @aop_sub, align 4
  %24 = call i32 @ax_simple(%struct.agent_expr* %22, i32 %23)
  br label %25

25:                                               ; preds = %17, %14
  br label %26

26:                                               ; preds = %25, %7
  ret void
}

declare dso_local i32 @ax_const_l(%struct.agent_expr*, i32) #1

declare dso_local i32 @ax_simple(%struct.agent_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

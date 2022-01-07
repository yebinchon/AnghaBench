; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_scale.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }
%struct.type = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, i32, %struct.type*)* @gen_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_scale(%struct.agent_expr* %0, i32 %1, %struct.type* %2) #0 {
  %4 = alloca %struct.agent_expr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.type*, align 8
  %7 = alloca %struct.type*, align 8
  store %struct.agent_expr* %0, %struct.agent_expr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.type* %2, %struct.type** %6, align 8
  %8 = load %struct.type*, %struct.type** %6, align 8
  %9 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %8)
  store %struct.type* %9, %struct.type** %7, align 8
  %10 = load %struct.type*, %struct.type** %7, align 8
  %11 = call i32 @TYPE_LENGTH(%struct.type* %10)
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.agent_expr*, %struct.agent_expr** %4, align 8
  %15 = load %struct.type*, %struct.type** %7, align 8
  %16 = call i32 @TYPE_LENGTH(%struct.type* %15)
  %17 = call i32 @ax_const_l(%struct.agent_expr* %14, i32 %16)
  %18 = load %struct.agent_expr*, %struct.agent_expr** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ax_simple(%struct.agent_expr* %18, i32 %19)
  br label %21

21:                                               ; preds = %13, %3
  ret void
}

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @ax_const_l(%struct.agent_expr*, i32) #1

declare dso_local i32 @ax_simple(%struct.agent_expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

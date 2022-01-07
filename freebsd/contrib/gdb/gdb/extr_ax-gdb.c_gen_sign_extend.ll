; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_sign_extend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ax-gdb.c_gen_sign_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agent_expr = type { i32 }
%struct.type = type { i32 }

@TARGET_CHAR_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agent_expr*, %struct.type*)* @gen_sign_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen_sign_extend(%struct.agent_expr* %0, %struct.type* %1) #0 {
  %3 = alloca %struct.agent_expr*, align 8
  %4 = alloca %struct.type*, align 8
  store %struct.agent_expr* %0, %struct.agent_expr** %3, align 8
  store %struct.type* %1, %struct.type** %4, align 8
  %5 = load %struct.type*, %struct.type** %4, align 8
  %6 = call i32 @TYPE_UNSIGNED(%struct.type* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load %struct.agent_expr*, %struct.agent_expr** %3, align 8
  %10 = load %struct.type*, %struct.type** %4, align 8
  %11 = call i32 @TYPE_LENGTH(%struct.type* %10)
  %12 = load i32, i32* @TARGET_CHAR_BIT, align 4
  %13 = mul nsw i32 %11, %12
  %14 = call i32 @ax_ext(%struct.agent_expr* %9, i32 %13)
  br label %15

15:                                               ; preds = %8, %2
  ret void
}

declare dso_local i32 @TYPE_UNSIGNED(%struct.type*) #1

declare dso_local i32 @ax_ext(%struct.agent_expr*, i32) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

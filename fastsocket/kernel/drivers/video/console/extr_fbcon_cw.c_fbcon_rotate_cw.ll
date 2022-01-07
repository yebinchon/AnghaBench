; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_cw.c_fbcon_rotate_cw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/console/extr_fbcon_cw.c_fbcon_rotate_cw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbcon_ops = type { i32, i32, i32, i32, i32, i32 }

@cw_bmove = common dso_local global i32 0, align 4
@cw_clear = common dso_local global i32 0, align 4
@cw_putcs = common dso_local global i32 0, align 4
@cw_clear_margins = common dso_local global i32 0, align 4
@cw_cursor = common dso_local global i32 0, align 4
@cw_update_start = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fbcon_rotate_cw(%struct.fbcon_ops* %0) #0 {
  %2 = alloca %struct.fbcon_ops*, align 8
  store %struct.fbcon_ops* %0, %struct.fbcon_ops** %2, align 8
  %3 = load i32, i32* @cw_bmove, align 4
  %4 = load %struct.fbcon_ops*, %struct.fbcon_ops** %2, align 8
  %5 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %4, i32 0, i32 5
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @cw_clear, align 4
  %7 = load %struct.fbcon_ops*, %struct.fbcon_ops** %2, align 8
  %8 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @cw_putcs, align 4
  %10 = load %struct.fbcon_ops*, %struct.fbcon_ops** %2, align 8
  %11 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @cw_clear_margins, align 4
  %13 = load %struct.fbcon_ops*, %struct.fbcon_ops** %2, align 8
  %14 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @cw_cursor, align 4
  %16 = load %struct.fbcon_ops*, %struct.fbcon_ops** %2, align 8
  %17 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @cw_update_start, align 4
  %19 = load %struct.fbcon_ops*, %struct.fbcon_ops** %2, align 8
  %20 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_state.c_dst_process_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_state.c_dst_process_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i32, %struct.dst_cmd*, %struct.dst_node* }
%struct.dst_cmd = type { i32, i32 }
%struct.dst_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_process_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_process_cfg(%struct.dst_state* %0) #0 {
  %2 = alloca %struct.dst_state*, align 8
  %3 = alloca %struct.dst_node*, align 8
  %4 = alloca %struct.dst_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.dst_state* %0, %struct.dst_state** %2, align 8
  %6 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %7 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %6, i32 0, i32 3
  %8 = load %struct.dst_node*, %struct.dst_node** %7, align 8
  store %struct.dst_node* %8, %struct.dst_node** %3, align 8
  %9 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %10 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %9, i32 0, i32 2
  %11 = load %struct.dst_cmd*, %struct.dst_cmd** %10, align 8
  store %struct.dst_cmd* %11, %struct.dst_cmd** %4, align 8
  %12 = load %struct.dst_node*, %struct.dst_node** %3, align 8
  %13 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dst_cmd*, %struct.dst_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.dst_cmd, %struct.dst_cmd* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %18 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.dst_cmd*, %struct.dst_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.dst_cmd, %struct.dst_cmd* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.dst_cmd*, %struct.dst_cmd** %4, align 8
  %23 = call i32 @dst_convert_cmd(%struct.dst_cmd* %22)
  %24 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %25 = call i32 @dst_state_lock(%struct.dst_state* %24)
  %26 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %27 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dst_cmd*, %struct.dst_cmd** %4, align 8
  %30 = call i32 @dst_data_send_header(i32 %28, %struct.dst_cmd* %29, i32 8, i32 0)
  store i32 %30, i32* %5, align 4
  %31 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %32 = call i32 @dst_state_unlock(%struct.dst_state* %31)
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @dst_convert_cmd(%struct.dst_cmd*) #1

declare dso_local i32 @dst_state_lock(%struct.dst_state*) #1

declare dso_local i32 @dst_data_send_header(i32, %struct.dst_cmd*, i32, i32) #1

declare dso_local i32 @dst_state_unlock(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

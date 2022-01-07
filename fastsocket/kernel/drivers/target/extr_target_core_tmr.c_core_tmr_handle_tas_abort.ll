; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tmr.c_core_tmr_handle_tas_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tmr.c_core_tmr_handle_tas_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32 }
%struct.se_cmd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.se_node_acl* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_node_acl*, %struct.se_cmd*, i32, i32)* @core_tmr_handle_tas_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @core_tmr_handle_tas_abort(%struct.se_node_acl* %0, %struct.se_cmd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.se_node_acl*, align 8
  %6 = alloca %struct.se_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.se_node_acl* %0, %struct.se_node_acl** %5, align 8
  store %struct.se_cmd* %1, %struct.se_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %4
  %12 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %13 = call i32 @transport_cmd_finish_abort(%struct.se_cmd* %12, i32 1)
  br label %34

14:                                               ; preds = %4
  %15 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %16 = icmp ne %struct.se_node_acl* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load %struct.se_node_acl*, %struct.se_node_acl** %5, align 8
  %19 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.se_node_acl*, %struct.se_node_acl** %22, align 8
  %24 = icmp eq %struct.se_node_acl* %18, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %17, %14
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %17
  %29 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %30 = call i32 @transport_send_task_abort(%struct.se_cmd* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %33 = call i32 @transport_cmd_finish_abort(%struct.se_cmd* %32, i32 0)
  br label %34

34:                                               ; preds = %31, %11
  ret void
}

declare dso_local i32 @transport_cmd_finish_abort(%struct.se_cmd*, i32) #1

declare dso_local i32 @transport_send_task_abort(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

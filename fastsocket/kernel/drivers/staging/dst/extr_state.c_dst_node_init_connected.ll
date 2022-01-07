; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_state.c_dst_node_init_connected.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dst/extr_state.c_dst_node_init_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_node = type { %struct.dst_state* }
%struct.dst_state = type { i32 }
%struct.dst_network_ctl = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dst_node_init_connected(%struct.dst_node* %0, %struct.dst_network_ctl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dst_node*, align 8
  %5 = alloca %struct.dst_network_ctl*, align 8
  %6 = alloca %struct.dst_state*, align 8
  %7 = alloca i32, align 4
  store %struct.dst_node* %0, %struct.dst_node** %4, align 8
  store %struct.dst_network_ctl* %1, %struct.dst_network_ctl** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.dst_node*, %struct.dst_node** %4, align 8
  %11 = call %struct.dst_state* @dst_state_alloc(%struct.dst_node* %10)
  store %struct.dst_state* %11, %struct.dst_state** %6, align 8
  %12 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %13 = call i64 @IS_ERR(%struct.dst_state* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %17 = call i32 @PTR_ERR(%struct.dst_state* %16)
  store i32 %17, i32* %7, align 4
  br label %50

18:                                               ; preds = %2
  %19 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %20 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %19, i32 0, i32 0
  %21 = load %struct.dst_network_ctl*, %struct.dst_network_ctl** %5, align 8
  %22 = call i32 @memcpy(i32* %20, %struct.dst_network_ctl* %21, i32 4)
  %23 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %24 = call i32 @dst_state_init_connected(%struct.dst_state* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %47

28:                                               ; preds = %18
  %29 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %30 = call i32 @dst_request_remote_config(%struct.dst_state* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %44

34:                                               ; preds = %28
  %35 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %36 = load %struct.dst_node*, %struct.dst_node** %4, align 8
  %37 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %36, i32 0, i32 0
  store %struct.dst_state* %35, %struct.dst_state** %37, align 8
  %38 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %39 = call i32 @dst_state_schedule_receiver(%struct.dst_state* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %44

43:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %54

44:                                               ; preds = %42, %33
  %45 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %46 = call i32 @dst_state_exit_connected(%struct.dst_state* %45)
  br label %47

47:                                               ; preds = %44, %27
  %48 = load %struct.dst_state*, %struct.dst_state** %6, align 8
  %49 = call i32 @dst_state_free(%struct.dst_state* %48)
  br label %50

50:                                               ; preds = %47, %15
  %51 = load %struct.dst_node*, %struct.dst_node** %4, align 8
  %52 = getelementptr inbounds %struct.dst_node, %struct.dst_node* %51, i32 0, i32 0
  store %struct.dst_state* null, %struct.dst_state** %52, align 8
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.dst_state* @dst_state_alloc(%struct.dst_node*) #1

declare dso_local i64 @IS_ERR(%struct.dst_state*) #1

declare dso_local i32 @PTR_ERR(%struct.dst_state*) #1

declare dso_local i32 @memcpy(i32*, %struct.dst_network_ctl*, i32) #1

declare dso_local i32 @dst_state_init_connected(%struct.dst_state*) #1

declare dso_local i32 @dst_request_remote_config(%struct.dst_state*) #1

declare dso_local i32 @dst_state_schedule_receiver(%struct.dst_state*) #1

declare dso_local i32 @dst_state_exit_connected(%struct.dst_state*) #1

declare dso_local i32 @dst_state_free(%struct.dst_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

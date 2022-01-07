; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_complete_qf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_complete_qf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_cmd = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)* }

@SCF_TRANSPORT_TASK_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_cmd*)* @transport_complete_qf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transport_complete_qf(%struct.se_cmd* %0) #0 {
  %2 = alloca %struct.se_cmd*, align 8
  %3 = alloca i32, align 4
  store %struct.se_cmd* %0, %struct.se_cmd** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %5 = call i32 @transport_complete_task_attr(%struct.se_cmd* %4)
  %6 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @SCF_TRANSPORT_TASK_SENSE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %14 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %16, align 8
  %18 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %19 = call i32 %17(%struct.se_cmd* %18)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %64

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %62 [
    i32 130, label %28
    i32 128, label %36
    i32 129, label %54
  ]

28:                                               ; preds = %24
  %29 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %30 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %32, align 8
  %34 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %35 = call i32 %33(%struct.se_cmd* %34)
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %24
  %37 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %38 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %43 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %45, align 8
  %47 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %48 = call i32 %46(%struct.se_cmd* %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %63

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %36
  br label %54

54:                                               ; preds = %24, %53
  %55 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %56 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.se_cmd*)*, i32 (%struct.se_cmd*)** %58, align 8
  %60 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %61 = call i32 %59(%struct.se_cmd* %60)
  store i32 %61, i32* %3, align 4
  br label %63

62:                                               ; preds = %24
  br label %63

63:                                               ; preds = %62, %54, %51, %28
  br label %64

64:                                               ; preds = %63, %22
  %65 = load i32, i32* %3, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %69 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %70 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @transport_handle_queue_full(%struct.se_cmd* %68, i32 %71)
  br label %78

73:                                               ; preds = %64
  %74 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %75 = call i32 @transport_lun_remove_cmd(%struct.se_cmd* %74)
  %76 = load %struct.se_cmd*, %struct.se_cmd** %2, align 8
  %77 = call i32 @transport_cmd_check_stop_to_fabric(%struct.se_cmd* %76)
  br label %78

78:                                               ; preds = %73, %67
  ret void
}

declare dso_local i32 @transport_complete_task_attr(%struct.se_cmd*) #1

declare dso_local i32 @transport_handle_queue_full(%struct.se_cmd*, i32) #1

declare dso_local i32 @transport_lun_remove_cmd(%struct.se_cmd*) #1

declare dso_local i32 @transport_cmd_check_stop_to_fabric(%struct.se_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

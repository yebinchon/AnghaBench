; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_cmd.c_ft_free_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_cmd.c_ft_free_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ft_cmd = type { i32, %struct.fc_frame* }
%struct.fc_frame = type { i32 }
%struct.fc_lport = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ft_cmd*)* @ft_free_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft_free_cmd(%struct.ft_cmd* %0) #0 {
  %2 = alloca %struct.ft_cmd*, align 8
  %3 = alloca %struct.fc_frame*, align 8
  %4 = alloca %struct.fc_lport*, align 8
  store %struct.ft_cmd* %0, %struct.ft_cmd** %2, align 8
  %5 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %6 = icmp ne %struct.ft_cmd* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %34

8:                                                ; preds = %1
  %9 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %9, i32 0, i32 1
  %11 = load %struct.fc_frame*, %struct.fc_frame** %10, align 8
  store %struct.fc_frame* %11, %struct.fc_frame** %3, align 8
  %12 = load %struct.fc_frame*, %struct.fc_frame** %3, align 8
  %13 = call %struct.fc_lport* @fr_dev(%struct.fc_frame* %12)
  store %struct.fc_lport* %13, %struct.fc_lport** %4, align 8
  %14 = load %struct.fc_frame*, %struct.fc_frame** %3, align 8
  %15 = call i64 @fr_seq(%struct.fc_frame* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %8
  %18 = load %struct.fc_lport*, %struct.fc_lport** %4, align 8
  %19 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i64)*, i32 (i64)** %20, align 8
  %22 = load %struct.fc_frame*, %struct.fc_frame** %3, align 8
  %23 = call i64 @fr_seq(%struct.fc_frame* %22)
  %24 = call i32 %21(i64 %23)
  br label %25

25:                                               ; preds = %17, %8
  %26 = load %struct.fc_frame*, %struct.fc_frame** %3, align 8
  %27 = call i32 @fc_frame_free(%struct.fc_frame* %26)
  %28 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %29 = getelementptr inbounds %struct.ft_cmd, %struct.ft_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ft_sess_put(i32 %30)
  %32 = load %struct.ft_cmd*, %struct.ft_cmd** %2, align 8
  %33 = call i32 @kfree(%struct.ft_cmd* %32)
  br label %34

34:                                               ; preds = %25, %7
  ret void
}

declare dso_local %struct.fc_lport* @fr_dev(%struct.fc_frame*) #1

declare dso_local i64 @fr_seq(%struct.fc_frame*) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @ft_sess_put(i32) #1

declare dso_local i32 @kfree(%struct.ft_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

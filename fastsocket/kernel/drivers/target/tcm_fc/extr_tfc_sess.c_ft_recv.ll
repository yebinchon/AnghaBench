; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_sess.c_ft_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/tcm_fc/extr_tfc_sess.c_ft_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { i32 }
%struct.fc_frame = type { i32 }
%struct.ft_sess = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"sid %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"sid %x sess lookup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_lport*, %struct.fc_frame*)* @ft_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ft_recv(%struct.fc_lport* %0, %struct.fc_frame* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.fc_frame*, align 8
  %5 = alloca %struct.ft_sess*, align 8
  %6 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.fc_frame* %1, %struct.fc_frame** %4, align 8
  %7 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %8 = call i32 @fc_frame_sid(%struct.fc_frame* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.ft_sess* @ft_sess_get(%struct.fc_lport* %11, i32 %12)
  store %struct.ft_sess* %13, %struct.ft_sess** %5, align 8
  %14 = load %struct.ft_sess*, %struct.ft_sess** %5, align 8
  %15 = icmp ne %struct.ft_sess* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %20 = call i32 @fc_frame_free(%struct.fc_frame* %19)
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.ft_sess*, %struct.ft_sess** %5, align 8
  %23 = load %struct.fc_frame*, %struct.fc_frame** %4, align 8
  %24 = call i32 @ft_recv_req(%struct.ft_sess* %22, %struct.fc_frame* %23)
  br label %25

25:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @fc_frame_sid(%struct.fc_frame*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local %struct.ft_sess* @ft_sess_get(%struct.fc_lport*, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame*) #1

declare dso_local i32 @ft_recv_req(%struct.ft_sess*, %struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter_device.c_rpcrouter_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/smd/extr_smd_rpcrouter_device.c_rpcrouter_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.poll_table_struct = type { i32 }
%struct.msm_rpc_endpoint = type { i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @rpcrouter_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcrouter_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.msm_rpc_endpoint*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.msm_rpc_endpoint*
  store %struct.msm_rpc_endpoint* %10, %struct.msm_rpc_endpoint** %5, align 8
  %11 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %5, align 8
  %12 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %11, i32 0, i32 0
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @POLLIN, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %19
  %23 = load %struct.file*, %struct.file** %3, align 8
  %24 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %5, align 8
  %25 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %24, i32 0, i32 1
  %26 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %27 = call i32 @poll_wait(%struct.file* %23, i32* %25, %struct.poll_table_struct* %26)
  %28 = load %struct.msm_rpc_endpoint*, %struct.msm_rpc_endpoint** %5, align 8
  %29 = getelementptr inbounds %struct.msm_rpc_endpoint, %struct.msm_rpc_endpoint* %28, i32 0, i32 0
  %30 = call i32 @list_empty(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %22
  %33 = load i32, i32* @POLLIN, align 4
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %22
  br label %37

37:                                               ; preds = %36, %19
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_out.c_rose_enquiry_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_rose_out.c_rose_enquiry_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.rose_sock = type { i32, i32, i32 }

@ROSE_COND_OWN_RX_BUSY = common dso_local global i32 0, align 4
@ROSE_RNR = common dso_local global i32 0, align 4
@ROSE_RR = common dso_local global i32 0, align 4
@ROSE_COND_ACK_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rose_enquiry_response(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.rose_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.rose_sock* @rose_sk(%struct.sock* %4)
  store %struct.rose_sock* %5, %struct.rose_sock** %3, align 8
  %6 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %7 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ROSE_COND_OWN_RX_BUSY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.sock*, %struct.sock** %2, align 8
  %14 = load i32, i32* @ROSE_RNR, align 4
  %15 = call i32 @rose_write_internal(%struct.sock* %13, i32 %14)
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.sock*, %struct.sock** %2, align 8
  %18 = load i32, i32* @ROSE_RR, align 4
  %19 = call i32 @rose_write_internal(%struct.sock* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %22 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %25 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @ROSE_COND_ACK_PENDING, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %29 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = call i32 @rose_stop_timer(%struct.sock* %32)
  ret void
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @rose_stop_timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

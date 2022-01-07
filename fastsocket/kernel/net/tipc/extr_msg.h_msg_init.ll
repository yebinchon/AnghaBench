; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_msg.h_msg_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_msg.h_msg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_msg = type { i32 }

@tipc_own_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_msg*, i32, i32, i32, i32)* @msg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msg_init(%struct.tipc_msg* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tipc_msg* %0, %struct.tipc_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %12 = load i32, i32* %9, align 4
  %13 = call i32 @memset(%struct.tipc_msg* %11, i32 0, i32 %12)
  %14 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %15 = call i32 @msg_set_version(%struct.tipc_msg* %14)
  %16 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @msg_set_user(%struct.tipc_msg* %16, i32 %17)
  %19 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @msg_set_hdr_sz(%struct.tipc_msg* %19, i32 %20)
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @msg_set_size(%struct.tipc_msg* %22, i32 %23)
  %25 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %26 = load i32, i32* @tipc_own_addr, align 4
  %27 = call i32 @msg_set_prevnode(%struct.tipc_msg* %25, i32 %26)
  %28 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @msg_set_type(%struct.tipc_msg* %28, i32 %29)
  %31 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %32 = call i32 @msg_short(%struct.tipc_msg* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %5
  %35 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %36 = load i32, i32* @tipc_own_addr, align 4
  %37 = call i32 @msg_set_orignode(%struct.tipc_msg* %35, i32 %36)
  %38 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @msg_set_destnode(%struct.tipc_msg* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %5
  ret void
}

declare dso_local i32 @memset(%struct.tipc_msg*, i32, i32) #1

declare dso_local i32 @msg_set_version(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_user(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_hdr_sz(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_prevnode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_type(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_short(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_orignode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_destnode(%struct.tipc_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

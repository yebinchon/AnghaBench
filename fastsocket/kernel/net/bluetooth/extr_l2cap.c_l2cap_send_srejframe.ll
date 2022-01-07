; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_send_srejframe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_send_srejframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.l2cap_pinfo = type { i32, i32 }
%struct.srej_list = type { i32, i32 }

@L2CAP_SUPER_SELECT_REJECT = common dso_local global i32 0, align 4
@L2CAP_CTRL_REQSEQ_SHIFT = common dso_local global i32 0, align 4
@L2CAP_CONN_SEND_PBIT = common dso_local global i32 0, align 4
@L2CAP_CTRL_POLL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32)* @l2cap_send_srejframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_send_srejframe(%struct.sock* %0, i32 %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_pinfo*, align 8
  %6 = alloca %struct.srej_list*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.sock*, %struct.sock** %3, align 8
  %9 = call %struct.l2cap_pinfo* @l2cap_pi(%struct.sock* %8)
  store %struct.l2cap_pinfo* %9, %struct.l2cap_pinfo** %5, align 8
  br label %10

10:                                               ; preds = %41, %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %13 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %10
  %17 = load i32, i32* @L2CAP_SUPER_SELECT_REJECT, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %19 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @L2CAP_CTRL_REQSEQ_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %26 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @L2CAP_CONN_SEND_PBIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %16
  %32 = load i32, i32* @L2CAP_CTRL_POLL, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @L2CAP_CONN_SEND_PBIT, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %38 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %31, %16
  %42 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @l2cap_send_sframe(%struct.l2cap_pinfo* %42, i32 %43)
  %45 = load i32, i32* @GFP_ATOMIC, align 4
  %46 = call %struct.srej_list* @kzalloc(i32 8, i32 %45)
  store %struct.srej_list* %46, %struct.srej_list** %6, align 8
  %47 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %48 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.srej_list*, %struct.srej_list** %6, align 8
  %52 = getelementptr inbounds %struct.srej_list, %struct.srej_list* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.srej_list*, %struct.srej_list** %6, align 8
  %54 = getelementptr inbounds %struct.srej_list, %struct.srej_list* %53, i32 0, i32 0
  %55 = load %struct.sock*, %struct.sock** %3, align 8
  %56 = call i32 @SREJ_LIST(%struct.sock* %55)
  %57 = call i32 @list_add_tail(i32* %54, i32 %56)
  br label %10

58:                                               ; preds = %10
  %59 = load %struct.l2cap_pinfo*, %struct.l2cap_pinfo** %5, align 8
  %60 = getelementptr inbounds %struct.l2cap_pinfo, %struct.l2cap_pinfo* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  ret void
}

declare dso_local %struct.l2cap_pinfo* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @l2cap_send_sframe(%struct.l2cap_pinfo*, i32) #1

declare dso_local %struct.srej_list* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local i32 @SREJ_LIST(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

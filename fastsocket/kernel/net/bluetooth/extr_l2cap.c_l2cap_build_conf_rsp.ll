; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_build_conf_rsp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_l2cap.c_l2cap_build_conf_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.l2cap_conf_rsp = type { i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"sk %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i8*, i32, i32)* @l2cap_build_conf_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_build_conf_rsp(%struct.sock* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.l2cap_conf_rsp*, align 8
  %10 = alloca i8*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.l2cap_conf_rsp*
  store %struct.l2cap_conf_rsp* %12, %struct.l2cap_conf_rsp** %9, align 8
  %13 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %9, align 8
  %14 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %13, i32 0, i32 3
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %10, align 8
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.sock* %16)
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = call %struct.TYPE_2__* @l2cap_pi(%struct.sock* %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %9, align 8
  %24 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %9, align 8
  %28 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = load %struct.l2cap_conf_rsp*, %struct.l2cap_conf_rsp** %9, align 8
  %32 = getelementptr inbounds %struct.l2cap_conf_rsp, %struct.l2cap_conf_rsp* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = ptrtoint i8* %33 to i64
  %36 = ptrtoint i8* %34 to i64
  %37 = sub i64 %35, %36
  %38 = trunc i64 %37 to i32
  ret i32 %38
}

declare dso_local i32 @BT_DBG(i8*, %struct.sock*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local %struct.TYPE_2__* @l2cap_pi(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

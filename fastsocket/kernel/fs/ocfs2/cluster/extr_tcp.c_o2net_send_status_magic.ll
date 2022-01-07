; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_send_status_magic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/cluster/extr_tcp.c_o2net_send_status_magic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.o2net_msg = type { i64, i32, i8*, i8* }
%struct.kvec = type { i32, %struct.o2net_msg* }

@O2NET_ERR_MAX = common dso_local global i32 0, align 4
@O2NET_MSG_STATUS_MAGIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"about to send status magic %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.o2net_msg*, i32, i32)* @o2net_send_status_magic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @o2net_send_status_magic(%struct.socket* %0, %struct.o2net_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.o2net_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvec, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.o2net_msg* %1, %struct.o2net_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 0
  store i32 32, i32* %10, align 8
  %11 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 1
  %12 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  store %struct.o2net_msg* %12, %struct.o2net_msg** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @O2NET_ERR_MAX, align 4
  %15 = icmp uge i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = call i8* @cpu_to_be32(i32 %18)
  %20 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %21 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %25 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* @O2NET_MSG_STATUS_MAGIC, align 4
  %27 = call i32 @cpu_to_be16(i32 %26)
  %28 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %29 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %31 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @msglog(%struct.o2net_msg* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.socket*, %struct.socket** %5, align 8
  %36 = call i32 @o2net_send_tcp_msg(%struct.socket* %35, %struct.kvec* %9, i32 1, i32 32)
  ret i32 %36
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @msglog(%struct.o2net_msg*, i8*, i32) #1

declare dso_local i32 @o2net_send_tcp_msg(%struct.socket*, %struct.kvec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

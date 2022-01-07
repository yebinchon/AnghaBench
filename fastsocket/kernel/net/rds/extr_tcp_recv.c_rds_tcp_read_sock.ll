; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_recv.c_rds_tcp_read_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_tcp_recv.c_rds_tcp_read_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { %struct.rds_tcp_connection* }
%struct.rds_tcp_connection = type { %struct.socket* }
%struct.socket = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rds_tcp_desc_arg* }
%struct.rds_tcp_desc_arg = type { i32, i32, %struct.rds_connection* }

@rds_tcp_data_recv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"tcp_read_sock for tc %p gfp 0x%x returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_connection*, i32, i32)* @rds_tcp_read_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_tcp_read_sock(%struct.rds_connection* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rds_connection*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rds_tcp_connection*, align 8
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.TYPE_5__, align 8
  %10 = alloca %struct.rds_tcp_desc_arg, align 8
  store %struct.rds_connection* %0, %struct.rds_connection** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %12 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %11, i32 0, i32 0
  %13 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %12, align 8
  store %struct.rds_tcp_connection* %13, %struct.rds_tcp_connection** %7, align 8
  %14 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %7, align 8
  %15 = getelementptr inbounds %struct.rds_tcp_connection, %struct.rds_tcp_connection* %14, i32 0, i32 0
  %16 = load %struct.socket*, %struct.socket** %15, align 8
  store %struct.socket* %16, %struct.socket** %8, align 8
  %17 = load %struct.rds_connection*, %struct.rds_connection** %4, align 8
  %18 = getelementptr inbounds %struct.rds_tcp_desc_arg, %struct.rds_tcp_desc_arg* %10, i32 0, i32 2
  store %struct.rds_connection* %17, %struct.rds_connection** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds %struct.rds_tcp_desc_arg, %struct.rds_tcp_desc_arg* %10, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.rds_tcp_desc_arg, %struct.rds_tcp_desc_arg* %10, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.rds_tcp_desc_arg* %10, %struct.rds_tcp_desc_arg** %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.socket*, %struct.socket** %8, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @rds_tcp_data_recv, align 4
  %31 = call i32 @tcp_read_sock(i32 %29, %struct.TYPE_5__* %9, i32 %30)
  %32 = load %struct.rds_tcp_connection*, %struct.rds_tcp_connection** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @rdsdebug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.rds_tcp_connection* %32, i32 %33, i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  ret i32 %38
}

declare dso_local i32 @tcp_read_sock(i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_tcp_connection*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

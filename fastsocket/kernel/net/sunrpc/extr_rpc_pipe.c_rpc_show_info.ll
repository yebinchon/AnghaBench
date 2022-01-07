; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_show_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpc_pipe.c_rpc_show_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.rpc_clnt* }
%struct.rpc_clnt = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"RPC server: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"service: %s (%d) version %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"address: %s\0A\00", align 1
@RPC_DISPLAY_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"protocol: %s\0A\00", align 1
@RPC_DISPLAY_PROTO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"port: %s\0A\00", align 1
@RPC_DISPLAY_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @rpc_show_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpc_show_info(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rpc_clnt*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.rpc_clnt*, %struct.rpc_clnt** %7, align 8
  store %struct.rpc_clnt* %8, %struct.rpc_clnt** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %11 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %16 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %19 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %22 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %17, i32 %20, i32 %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %27 = load i32, i32* @RPC_DISPLAY_ADDR, align 4
  %28 = call i32 @rpc_peeraddr2str(%struct.rpc_clnt* %26, i32 %27)
  %29 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %32 = load i32, i32* @RPC_DISPLAY_PROTO, align 4
  %33 = call i32 @rpc_peeraddr2str(%struct.rpc_clnt* %31, i32 %32)
  %34 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.rpc_clnt*, %struct.rpc_clnt** %5, align 8
  %37 = load i32, i32* @RPC_DISPLAY_PORT, align 4
  %38 = call i32 @rpc_peeraddr2str(%struct.rpc_clnt* %36, i32 %37)
  %39 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  ret i32 0
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @rpc_peeraddr2str(%struct.rpc_clnt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

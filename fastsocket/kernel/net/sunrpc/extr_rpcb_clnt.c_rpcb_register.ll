; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcbind_args = type { i32, i16, i32, i32 }
%struct.rpc_message = type { i32*, %struct.rpcbind_args* }

@.str = private unnamed_addr constant [62 x i8] c"RPC:       %sregistering (%u, %u, %d, %u) with local rpcbind\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@rpcb_procedures2 = common dso_local global i32* null, align 8
@RPCBPROC_UNSET = common dso_local global i64 0, align 8
@RPCBPROC_SET = common dso_local global i64 0, align 8
@rpcb_local_clnt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcb_register(i32 %0, i32 %1, i32 %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca %struct.rpcbind_args, align 4
  %10 = alloca %struct.rpc_message, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i16 %3, i16* %8, align 2
  %11 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %9, i32 0, i32 0
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %9, i32 0, i32 1
  %14 = load i16, i16* %8, align 2
  store i16 %14, i16* %13, align 4
  %15 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %9, i32 0, i32 2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %9, i32 0, i32 3
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 1
  store %struct.rpcbind_args* %9, %struct.rpcbind_args** %20, align 8
  %21 = load i16, i16* %8, align 2
  %22 = zext i16 %21 to i32
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i16, i16* %8, align 2
  %30 = call i32 @dprintk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26, i32 %27, i32 %28, i16 zeroext %29)
  %31 = load i32*, i32** @rpcb_procedures2, align 8
  %32 = load i64, i64* @RPCBPROC_UNSET, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  store i32* %33, i32** %34, align 8
  %35 = load i16, i16* %8, align 2
  %36 = icmp ne i16 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %4
  %38 = load i32*, i32** @rpcb_procedures2, align 8
  %39 = load i64, i64* @RPCBPROC_SET, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %10, i32 0, i32 0
  store i32* %40, i32** %41, align 8
  br label %42

42:                                               ; preds = %37, %4
  %43 = load i32, i32* @rpcb_local_clnt, align 4
  %44 = call i32 @rpcb_register_call(i32 %43, %struct.rpc_message* %10)
  ret i32 %44
}

declare dso_local i32 @dprintk(i8*, i8*, i32, i32, i32, i16 zeroext) #1

declare dso_local i32 @rpcb_register_call(i32, %struct.rpc_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

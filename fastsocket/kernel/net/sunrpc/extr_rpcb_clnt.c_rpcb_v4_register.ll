; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_v4_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_rpcb_clnt.c_rpcb_v4_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.rpcbind_args = type { i8*, i32, i32, i32 }
%struct.rpc_message = type { %struct.rpcbind_args* }

@RPCB_OWNER_STRING = common dso_local global i32 0, align 4
@rpcb_local_clnt4 = common dso_local global i32* null, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcb_v4_register(i32 %0, i32 %1, %struct.sockaddr* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rpcbind_args, align 8
  %11 = alloca %struct.rpc_message, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %10, i32 0, i32 0
  %13 = load i8*, i8** %9, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %10, i32 0, i32 1
  %15 = load i32, i32* @RPCB_OWNER_STRING, align 4
  store i32 %15, i32* %14, align 8
  %16 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %10, i32 0, i32 2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.rpcbind_args, %struct.rpcbind_args* %10, i32 0, i32 3
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %18, align 8
  %20 = getelementptr inbounds %struct.rpc_message, %struct.rpc_message* %11, i32 0, i32 0
  store %struct.rpcbind_args* %10, %struct.rpcbind_args** %20, align 8
  %21 = load i32*, i32** @rpcb_local_clnt4, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EPROTONOSUPPORT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %44

26:                                               ; preds = %4
  %27 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %28 = icmp eq %struct.sockaddr* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @rpcb_unregister_all_protofamilies(%struct.rpc_message* %11)
  store i32 %30, i32* %5, align 4
  br label %44

31:                                               ; preds = %26
  %32 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %33 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %41 [
    i32 129, label %35
    i32 128, label %38
  ]

35:                                               ; preds = %31
  %36 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %37 = call i32 @rpcb_register_inet4(%struct.sockaddr* %36, %struct.rpc_message* %11)
  store i32 %37, i32* %5, align 4
  br label %44

38:                                               ; preds = %31
  %39 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %40 = call i32 @rpcb_register_inet6(%struct.sockaddr* %39, %struct.rpc_message* %11)
  store i32 %40, i32* %5, align 4
  br label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @EAFNOSUPPORT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %41, %38, %35, %29, %23
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @rpcb_unregister_all_protofamilies(%struct.rpc_message*) #1

declare dso_local i32 @rpcb_register_inet4(%struct.sockaddr*, %struct.rpc_message*) #1

declare dso_local i32 @rpcb_register_inet6(%struct.sockaddr*, %struct.rpc_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

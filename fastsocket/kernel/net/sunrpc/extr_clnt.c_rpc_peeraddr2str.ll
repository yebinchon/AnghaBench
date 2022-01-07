; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_peeraddr2str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_clnt.c_rpc_peeraddr2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_clnt = type { %struct.rpc_xprt* }
%struct.rpc_xprt = type { i8** }

@.str = private unnamed_addr constant [12 x i8] c"unprintable\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @rpc_peeraddr2str(%struct.rpc_clnt* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rpc_clnt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_xprt*, align 8
  store %struct.rpc_clnt* %0, %struct.rpc_clnt** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rpc_clnt*, %struct.rpc_clnt** %4, align 8
  %8 = getelementptr inbounds %struct.rpc_clnt, %struct.rpc_clnt* %7, i32 0, i32 0
  %9 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  store %struct.rpc_xprt* %9, %struct.rpc_xprt** %6, align 8
  %10 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %11 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %10, i32 0, i32 0
  %12 = load i8**, i8*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8*, i8** %12, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.rpc_xprt*, %struct.rpc_xprt** %6, align 8
  %20 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %3, align 8
  br label %27

26:                                               ; preds = %2
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %27

27:                                               ; preds = %26, %18
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

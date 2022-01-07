; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc_xprt.c___svc_xpo_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc_xprt.c___svc_xpo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_xprt = type { i32 }
%struct.svc_xprt_class = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.svc_xprt* (%struct.svc_serv*, %struct.net*, %struct.sockaddr*, i64, i32)* }
%struct.sockaddr = type { i32 }
%struct.svc_serv = type { i32 }
%struct.net = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IN6ADDR_ANY_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_xprt* (%struct.svc_xprt_class*, %struct.svc_serv*, %struct.net*, i32, i16, i32)* @__svc_xpo_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_xprt* @__svc_xpo_create(%struct.svc_xprt_class* %0, %struct.svc_serv* %1, %struct.net* %2, i32 %3, i16 zeroext %4, i32 %5) #0 {
  %7 = alloca %struct.svc_xprt*, align 8
  %8 = alloca %struct.svc_xprt_class*, align 8
  %9 = alloca %struct.svc_serv*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca %struct.sockaddr_in, align 4
  %15 = alloca %struct.sockaddr*, align 8
  %16 = alloca i64, align 8
  store %struct.svc_xprt_class* %0, %struct.svc_xprt_class** %8, align 8
  store %struct.svc_serv* %1, %struct.svc_serv** %9, align 8
  store %struct.net* %2, %struct.net** %10, align 8
  store i32 %3, i32* %11, align 4
  store i16 %4, i16* %12, align 2
  store i32 %5, i32* %13, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  %18 = load i16, i16* %12, align 2
  %19 = call i32 @htons(i16 zeroext %18)
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* @INADDR_ANY, align 4
  %23 = call i32 @htonl(i32 %22)
  store i32 %23, i32* %21, align 4
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  %25 = load i32, i32* @AF_INET, align 4
  store i32 %25, i32* %24, align 4
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %29 [
    i32 129, label %27
  ]

27:                                               ; preds = %6
  %28 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  store %struct.sockaddr* %28, %struct.sockaddr** %15, align 8
  store i64 12, i64* %16, align 8
  br label %33

29:                                               ; preds = %6
  %30 = load i32, i32* @EAFNOSUPPORT, align 4
  %31 = sub nsw i32 0, %30
  %32 = call %struct.svc_xprt* @ERR_PTR(i32 %31)
  store %struct.svc_xprt* %32, %struct.svc_xprt** %7, align 8
  br label %45

33:                                               ; preds = %27
  %34 = load %struct.svc_xprt_class*, %struct.svc_xprt_class** %8, align 8
  %35 = getelementptr inbounds %struct.svc_xprt_class, %struct.svc_xprt_class* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.svc_xprt* (%struct.svc_serv*, %struct.net*, %struct.sockaddr*, i64, i32)*, %struct.svc_xprt* (%struct.svc_serv*, %struct.net*, %struct.sockaddr*, i64, i32)** %37, align 8
  %39 = load %struct.svc_serv*, %struct.svc_serv** %9, align 8
  %40 = load %struct.net*, %struct.net** %10, align 8
  %41 = load %struct.sockaddr*, %struct.sockaddr** %15, align 8
  %42 = load i64, i64* %16, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call %struct.svc_xprt* %38(%struct.svc_serv* %39, %struct.net* %40, %struct.sockaddr* %41, i64 %42, i32 %43)
  store %struct.svc_xprt* %44, %struct.svc_xprt** %7, align 8
  br label %45

45:                                               ; preds = %33, %29
  %46 = load %struct.svc_xprt*, %struct.svc_xprt** %7, align 8
  ret %struct.svc_xprt* %46
}

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local %struct.svc_xprt* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

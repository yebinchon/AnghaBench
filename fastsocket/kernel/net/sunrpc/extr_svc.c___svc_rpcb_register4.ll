; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c___svc_rpcb_register4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svc.c___svc_rpcb_register4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@RPCBIND_NETID_UDP = common dso_local global i8* null, align 8
@RPCBIND_NETID_TCP = common dso_local global i8* null, align 8
@ENOPROTOOPT = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i16, i16)* @__svc_rpcb_register4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__svc_rpcb_register4(i32 %0, i32 %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %14 = load i16, i16* %9, align 2
  %15 = call i32 @htons(i16 zeroext %14)
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* @INADDR_ANY, align 4
  %19 = call i32 @htonl(i32 %18)
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  %21 = load i32, i32* @AF_INET, align 4
  store i32 %21, i32* %20, align 4
  %22 = load i16, i16* %8, align 2
  %23 = zext i16 %22 to i32
  switch i32 %23, label %28 [
    i32 128, label %24
    i32 129, label %26
  ]

24:                                               ; preds = %4
  %25 = load i8*, i8** @RPCBIND_NETID_UDP, align 8
  store i8* %25, i8** %11, align 8
  br label %31

26:                                               ; preds = %4
  %27 = load i8*, i8** @RPCBIND_NETID_TCP, align 8
  store i8* %27, i8** %11, align 8
  br label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOPROTOOPT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %49

31:                                               ; preds = %26, %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @rpcb_v4_register(i32 %32, i32 %33, %struct.sockaddr* %34, i8* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @EPROTONOSUPPORT, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i16, i16* %8, align 2
  %45 = load i16, i16* %9, align 2
  %46 = call i32 @rpcb_register(i32 %42, i32 %43, i16 zeroext %44, i16 zeroext %45)
  store i32 %46, i32* %12, align 4
  br label %47

47:                                               ; preds = %41, %31
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %47, %28
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @rpcb_v4_register(i32, i32, %struct.sockaddr*, i8*) #1

declare dso_local i32 @rpcb_register(i32, i32, i16 zeroext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

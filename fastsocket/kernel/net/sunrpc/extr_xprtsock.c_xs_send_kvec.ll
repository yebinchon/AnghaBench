; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_send_kvec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_xprtsock.c_xs_send_kvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.kvec = type { i64, i32 }
%struct.msghdr = type { i32, i32, %struct.sockaddr* }

@XS_SENDMSG_FLAGS = common dso_local global i32 0, align 4
@MSG_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, %struct.kvec*, i32, i32)* @xs_send_kvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xs_send_kvec(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, %struct.kvec* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.msghdr, align 8
  %15 = alloca %struct.kvec, align 8
  store %struct.socket* %0, %struct.socket** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.kvec* %3, %struct.kvec** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 0
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 1
  %19 = load i32, i32* @XS_SENDMSG_FLAGS, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @MSG_MORE, align 4
  br label %25

24:                                               ; preds = %6
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = or i32 %19, %26
  store i32 %27, i32* %18, align 4
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %14, i32 0, i32 2
  %29 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  store %struct.sockaddr* %29, %struct.sockaddr** %28, align 8
  %30 = getelementptr inbounds %struct.kvec, %struct.kvec* %15, i32 0, i32 0
  %31 = load %struct.kvec*, %struct.kvec** %11, align 8
  %32 = getelementptr inbounds %struct.kvec, %struct.kvec* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %12, align 4
  %35 = zext i32 %34 to i64
  %36 = sub nsw i64 %33, %35
  store i64 %36, i64* %30, align 8
  %37 = getelementptr inbounds %struct.kvec, %struct.kvec* %15, i32 0, i32 1
  %38 = load %struct.kvec*, %struct.kvec** %11, align 8
  %39 = getelementptr inbounds %struct.kvec, %struct.kvec* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = add i32 %40, %41
  store i32 %42, i32* %37, align 8
  %43 = getelementptr inbounds %struct.kvec, %struct.kvec* %15, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %25
  %47 = load %struct.socket*, %struct.socket** %8, align 8
  %48 = getelementptr inbounds %struct.kvec, %struct.kvec* %15, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @kernel_sendmsg(%struct.socket* %47, %struct.msghdr* %14, %struct.kvec* %15, i32 1, i64 %49)
  store i32 %50, i32* %7, align 4
  br label %54

51:                                               ; preds = %25
  %52 = load %struct.socket*, %struct.socket** %8, align 8
  %53 = call i32 @kernel_sendmsg(%struct.socket* %52, %struct.msghdr* %14, %struct.kvec* null, i32 0, i64 0)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %46
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @kernel_sendmsg(%struct.socket*, %struct.msghdr*, %struct.kvec*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

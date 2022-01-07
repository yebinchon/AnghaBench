; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_receive.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_sync.c_ip_vs_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.msghdr = type { i32* }
%struct.kvec = type { i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i8*, i64)* @ip_vs_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_receive(%struct.socket* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.msghdr, align 8
  %9 = alloca %struct.kvec, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = bitcast %struct.msghdr* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 8, i1 false)
  %12 = call i32 @EnterFunction(i32 7)
  %13 = load i8*, i8** %6, align 8
  %14 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %struct.kvec, %struct.kvec* %9, i32 0, i32 1
  store i64 %15, i64* %16, align 8
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @kernel_recvmsg(%struct.socket* %17, %struct.msghdr* %8, %struct.kvec* %9, i32 1, i64 %18, i32 0)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %26

23:                                               ; preds = %3
  %24 = call i32 @LeaveFunction(i32 7)
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %23, %22
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @EnterFunction(i32) #2

declare dso_local i32 @kernel_recvmsg(%struct.socket*, %struct.msghdr*, %struct.kvec*, i32, i64, i32) #2

declare dso_local i32 @LeaveFunction(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

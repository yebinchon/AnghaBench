; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c__recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ncpfs/extr_sock.c__recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.msghdr = type { i32* }
%struct.kvec = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i8*, i32, i32)* @_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_recv(%struct.socket* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.msghdr, align 8
  %10 = alloca %struct.kvec, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = bitcast %struct.msghdr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 8, i1 false)
  %12 = getelementptr inbounds %struct.kvec, %struct.kvec* %10, i32 0, i32 0
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %12, align 8
  %14 = getelementptr inbounds %struct.kvec, %struct.kvec* %10, i32 0, i32 1
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %14, align 8
  %16 = load %struct.socket*, %struct.socket** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @kernel_recvmsg(%struct.socket* %16, %struct.msghdr* %9, %struct.kvec* %10, i32 1, i32 %17, i32 %18)
  ret i32 %19
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @kernel_recvmsg(%struct.socket*, %struct.msghdr*, %struct.kvec*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

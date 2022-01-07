; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_wfree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_wfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.sctp_association = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.sctp_chunk = type { %struct.sctp_association* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @sctp_wfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_wfree(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sock*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.sctp_chunk**
  %10 = load %struct.sctp_chunk*, %struct.sctp_chunk** %9, align 8
  store %struct.sctp_chunk* %10, %struct.sctp_chunk** %4, align 8
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %11, i32 0, i32 0
  %13 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  store %struct.sctp_association* %13, %struct.sctp_association** %3, align 8
  %14 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %5, align 8
  %18 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %19 = call i64 @SCTP_DATA_SNDSIZE(%struct.sctp_chunk* %18)
  %20 = add i64 %19, 16
  %21 = add i64 %20, 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = sub i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 8
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 1
  %30 = call i32 @atomic_sub(i32 8, i32* %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sock*, %struct.sock** %5, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = sub nsw i64 %37, %33
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %35, align 4
  %40 = load %struct.sock*, %struct.sock** %5, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @sk_mem_uncharge(%struct.sock* %40, i64 %43)
  %45 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %46 = call i32 @sock_wfree(%struct.sk_buff* %45)
  %47 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %48 = call i32 @__sctp_write_space(%struct.sctp_association* %47)
  %49 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %50 = call i32 @sctp_association_put(%struct.sctp_association* %49)
  ret void
}

declare dso_local i64 @SCTP_DATA_SNDSIZE(%struct.sctp_chunk*) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @sk_mem_uncharge(%struct.sock*, i64) #1

declare dso_local i32 @sock_wfree(%struct.sk_buff*) #1

declare dso_local i32 @__sctp_write_space(%struct.sctp_association*) #1

declare dso_local i32 @sctp_association_put(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

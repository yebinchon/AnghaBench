; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_set_owner_w.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_socket.c_sctp_set_owner_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.TYPE_4__*, %struct.sctp_association* }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.sctp_association = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sock* }
%struct.sock = type { i32, i32 }

@sctp_wfree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_chunk*)* @sctp_set_owner_w to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_set_owner_w(%struct.sctp_chunk* %0) #0 {
  %2 = alloca %struct.sctp_chunk*, align 8
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %2, align 8
  %5 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %6 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %5, i32 0, i32 1
  %7 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  store %struct.sctp_association* %7, %struct.sctp_association** %3, align 8
  %8 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %9 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %11, %struct.sock** %4, align 8
  %12 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %13 = call i32 @sctp_association_hold(%struct.sctp_association* %12)
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %15 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @skb_set_owner_w(%struct.TYPE_4__* %16, %struct.sock* %17)
  %19 = load i32, i32* @sctp_wfree, align 4
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %21 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  store i32 %19, i32* %23, align 8
  %24 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %26 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.sctp_chunk**
  store %struct.sctp_chunk* %24, %struct.sctp_chunk** %30, align 8
  %31 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %32 = call i64 @SCTP_DATA_SNDSIZE(%struct.sctp_chunk* %31)
  %33 = add i64 %32, 4
  %34 = add i64 %33, 16
  %35 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %36 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 8
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 1
  %43 = call i32 @atomic_add(i32 16, i32* %42)
  %44 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %45 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = load %struct.sctp_chunk*, %struct.sctp_chunk** %2, align 8
  %55 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @sk_mem_charge(%struct.sock* %53, i32 %58)
  ret void
}

declare dso_local i32 @sctp_association_hold(%struct.sctp_association*) #1

declare dso_local i32 @skb_set_owner_w(%struct.TYPE_4__*, %struct.sock*) #1

declare dso_local i64 @SCTP_DATA_SNDSIZE(%struct.sctp_chunk*) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @sk_mem_charge(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

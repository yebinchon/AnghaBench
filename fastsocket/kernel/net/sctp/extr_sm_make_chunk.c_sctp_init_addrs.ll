; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_init_addrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_init_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { i32, i32 }
%union.sctp_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_init_addrs(%struct.sctp_chunk* %0, %union.sctp_addr* %1, %union.sctp_addr* %2) #0 {
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %union.sctp_addr*, align 8
  %6 = alloca %union.sctp_addr*, align 8
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %4, align 8
  store %union.sctp_addr* %1, %union.sctp_addr** %5, align 8
  store %union.sctp_addr* %2, %union.sctp_addr** %6, align 8
  %7 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %8 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %7, i32 0, i32 1
  %9 = load %union.sctp_addr*, %union.sctp_addr** %5, align 8
  %10 = call i32 @memcpy(i32* %8, %union.sctp_addr* %9, i32 4)
  %11 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %12 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %11, i32 0, i32 0
  %13 = load %union.sctp_addr*, %union.sctp_addr** %6, align 8
  %14 = call i32 @memcpy(i32* %12, %union.sctp_addr* %13, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32*, %union.sctp_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

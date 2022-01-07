; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_source.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_make_chunk.c_sctp_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sctp_addr = type { i32 }
%struct.sctp_chunk = type { %union.sctp_addr, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %union.sctp_addr }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.sctp_addr* @sctp_source(%struct.sctp_chunk* %0) #0 {
  %2 = alloca %union.sctp_addr*, align 8
  %3 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %3, align 8
  %4 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %5 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %10 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %union.sctp_addr* %12, %union.sctp_addr** %2, align 8
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %15 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %14, i32 0, i32 0
  store %union.sctp_addr* %15, %union.sctp_addr** %2, align 8
  br label %16

16:                                               ; preds = %13, %8
  %17 = load %union.sctp_addr*, %union.sctp_addr** %2, align 8
  ret %union.sctp_addr* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

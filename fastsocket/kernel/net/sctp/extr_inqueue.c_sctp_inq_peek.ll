; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_inqueue.c_sctp_inq_peek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_inqueue.c_sctp_inq_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunkhdr = type { i32 }
%struct.sctp_inq = type { %struct.sctp_chunk* }
%struct.sctp_chunk = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_chunkhdr* @sctp_inq_peek(%struct.sctp_inq* %0) #0 {
  %2 = alloca %struct.sctp_chunkhdr*, align 8
  %3 = alloca %struct.sctp_inq*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.sctp_chunkhdr*, align 8
  store %struct.sctp_inq* %0, %struct.sctp_inq** %3, align 8
  store %struct.sctp_chunkhdr* null, %struct.sctp_chunkhdr** %5, align 8
  %6 = load %struct.sctp_inq*, %struct.sctp_inq** %3, align 8
  %7 = getelementptr inbounds %struct.sctp_inq, %struct.sctp_inq* %6, i32 0, i32 0
  %8 = load %struct.sctp_chunk*, %struct.sctp_chunk** %7, align 8
  store %struct.sctp_chunk* %8, %struct.sctp_chunk** %4, align 8
  %9 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %10 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %1
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %15 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %20 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13, %1
  store %struct.sctp_chunkhdr* null, %struct.sctp_chunkhdr** %2, align 8
  br label %30

24:                                               ; preds = %18
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %26 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.sctp_chunkhdr*
  store %struct.sctp_chunkhdr* %28, %struct.sctp_chunkhdr** %5, align 8
  %29 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %5, align 8
  store %struct.sctp_chunkhdr* %29, %struct.sctp_chunkhdr** %2, align 8
  br label %30

30:                                               ; preds = %24, %23
  %31 = load %struct.sctp_chunkhdr*, %struct.sctp_chunkhdr** %2, align 8
  ret %struct.sctp_chunkhdr* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

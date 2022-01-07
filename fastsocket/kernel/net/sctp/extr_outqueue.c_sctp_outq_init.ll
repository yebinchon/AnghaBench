; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_outqueue.c_sctp_outq_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_outqueue.c_sctp_outq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32 }
%struct.sctp_outq = type { i32, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, %struct.sctp_association* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_outq_init(%struct.sctp_association* %0, %struct.sctp_outq* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_outq*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_outq* %1, %struct.sctp_outq** %4, align 8
  %5 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %6 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %7 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %6, i32 0, i32 11
  store %struct.sctp_association* %5, %struct.sctp_association** %7, align 8
  %8 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %8, i32 0, i32 10
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %12 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %11, i32 0, i32 9
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %15 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %14, i32 0, i32 8
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %18 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %17, i32 0, i32 7
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %21 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %20, i32 0, i32 6
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %24 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %26 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %30 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %32 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.sctp_outq*, %struct.sctp_outq** %4, align 8
  %34 = getelementptr inbounds %struct.sctp_outq, %struct.sctp_outq* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

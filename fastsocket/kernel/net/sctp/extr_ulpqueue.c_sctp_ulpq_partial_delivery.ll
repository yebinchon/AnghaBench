; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_partial_delivery.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_partial_delivery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { i64, %struct.sctp_association* }
%struct.sctp_association = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.sctp_ulpevent = type { i32 }
%struct.sctp_sock = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_ulpq_partial_delivery(%struct.sctp_ulpq* %0, %struct.sctp_chunk* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_ulpq*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_ulpevent*, align 8
  %8 = alloca %struct.sctp_association*, align 8
  %9 = alloca %struct.sctp_sock*, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %11 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %10, i32 0, i32 1
  %12 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  store %struct.sctp_association* %12, %struct.sctp_association** %8, align 8
  %13 = load %struct.sctp_association*, %struct.sctp_association** %8, align 8
  %14 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.sctp_sock* @sctp_sk(i32 %16)
  store %struct.sctp_sock* %17, %struct.sctp_sock** %9, align 8
  %18 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %19 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %45

23:                                               ; preds = %3
  %24 = load %struct.sctp_sock*, %struct.sctp_sock** %9, align 8
  %25 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.sctp_sock*, %struct.sctp_sock** %9, align 8
  %30 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %29, i32 0, i32 0
  %31 = call i64 @atomic_read(i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28, %23
  %34 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %35 = call %struct.sctp_ulpevent* @sctp_ulpq_retrieve_first(%struct.sctp_ulpq* %34)
  store %struct.sctp_ulpevent* %35, %struct.sctp_ulpevent** %7, align 8
  %36 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %7, align 8
  %37 = icmp ne %struct.sctp_ulpevent* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %40 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %7, align 8
  %41 = call i32 @sctp_ulpq_tail_event(%struct.sctp_ulpq* %39, %struct.sctp_ulpevent* %40)
  %42 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %43 = call i32 @sctp_ulpq_set_pd(%struct.sctp_ulpq* %42)
  br label %45

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %22, %38, %44, %28
  ret void
}

declare dso_local %struct.sctp_sock* @sctp_sk(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpq_retrieve_first(%struct.sctp_ulpq*) #1

declare dso_local i32 @sctp_ulpq_tail_event(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_ulpq_set_pd(%struct.sctp_ulpq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

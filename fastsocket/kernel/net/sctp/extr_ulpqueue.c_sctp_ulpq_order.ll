; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_order.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sctp_stream }
%struct.sctp_stream = type { i32 }
%struct.sctp_ulpevent = type { i32, i64, i64 }

@SCTP_DATA_UNORDERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_ulpevent* (%struct.sctp_ulpq*, %struct.sctp_ulpevent*)* @sctp_ulpq_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_ulpevent* @sctp_ulpq_order(%struct.sctp_ulpq* %0, %struct.sctp_ulpevent* %1) #0 {
  %3 = alloca %struct.sctp_ulpevent*, align 8
  %4 = alloca %struct.sctp_ulpq*, align 8
  %5 = alloca %struct.sctp_ulpevent*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sctp_stream*, align 8
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %4, align 8
  store %struct.sctp_ulpevent* %1, %struct.sctp_ulpevent** %5, align 8
  %9 = load i32, i32* @SCTP_DATA_UNORDERED, align 4
  %10 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %11 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %9, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  store %struct.sctp_ulpevent* %16, %struct.sctp_ulpevent** %3, align 8
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %19 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %22 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  %24 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %25 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store %struct.sctp_stream* %29, %struct.sctp_stream** %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @sctp_ssn_peek(%struct.sctp_stream* %31, i64 %32)
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %17
  %36 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %37 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %38 = call i32 @sctp_ulpq_store_ordered(%struct.sctp_ulpq* %36, %struct.sctp_ulpevent* %37)
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %3, align 8
  br label %47

39:                                               ; preds = %17
  %40 = load %struct.sctp_stream*, %struct.sctp_stream** %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @sctp_ssn_next(%struct.sctp_stream* %40, i64 %41)
  %43 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %44 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %45 = call i32 @sctp_ulpq_retrieve_ordered(%struct.sctp_ulpq* %43, %struct.sctp_ulpevent* %44)
  %46 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  store %struct.sctp_ulpevent* %46, %struct.sctp_ulpevent** %3, align 8
  br label %47

47:                                               ; preds = %39, %35, %15
  %48 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  ret %struct.sctp_ulpevent* %48
}

declare dso_local i64 @sctp_ssn_peek(%struct.sctp_stream*, i64) #1

declare dso_local i32 @sctp_ulpq_store_ordered(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

declare dso_local i32 @sctp_ssn_next(%struct.sctp_stream*, i64) #1

declare dso_local i32 @sctp_ulpq_retrieve_ordered(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_reasm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_reasm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_ulpevent = type { i32, i32 }

@SCTP_DATA_NOT_FRAG = common dso_local global i32 0, align 4
@SCTP_DATA_FRAG_MASK = common dso_local global i32 0, align 4
@MSG_EOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_ulpevent* (%struct.sctp_ulpq*, %struct.sctp_ulpevent*)* @sctp_ulpq_reasm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_ulpevent* @sctp_ulpq_reasm(%struct.sctp_ulpq* %0, %struct.sctp_ulpevent* %1) #0 {
  %3 = alloca %struct.sctp_ulpevent*, align 8
  %4 = alloca %struct.sctp_ulpq*, align 8
  %5 = alloca %struct.sctp_ulpevent*, align 8
  %6 = alloca %struct.sctp_ulpevent*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %4, align 8
  store %struct.sctp_ulpevent* %1, %struct.sctp_ulpevent** %5, align 8
  store %struct.sctp_ulpevent* null, %struct.sctp_ulpevent** %6, align 8
  %9 = load i32, i32* @SCTP_DATA_NOT_FRAG, align 4
  %10 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %11 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SCTP_DATA_FRAG_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @MSG_EOR, align 4
  %18 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %19 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  store %struct.sctp_ulpevent* %22, %struct.sctp_ulpevent** %3, align 8
  br label %54

23:                                               ; preds = %2
  %24 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %25 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %26 = call i32 @sctp_ulpq_store_reasm(%struct.sctp_ulpq* %24, %struct.sctp_ulpevent* %25)
  %27 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %33 = call %struct.sctp_ulpevent* @sctp_ulpq_retrieve_reassembled(%struct.sctp_ulpq* %32)
  store %struct.sctp_ulpevent* %33, %struct.sctp_ulpevent** %6, align 8
  br label %52

34:                                               ; preds = %23
  %35 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %5, align 8
  %36 = getelementptr inbounds %struct.sctp_ulpevent, %struct.sctp_ulpevent* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %39 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @sctp_tsnmap_get_ctsn(i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @TSN_lte(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %34
  %49 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %50 = call %struct.sctp_ulpevent* @sctp_ulpq_retrieve_partial(%struct.sctp_ulpq* %49)
  store %struct.sctp_ulpevent* %50, %struct.sctp_ulpevent** %6, align 8
  br label %51

51:                                               ; preds = %48, %34
  br label %52

52:                                               ; preds = %51, %31
  %53 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %6, align 8
  store %struct.sctp_ulpevent* %53, %struct.sctp_ulpevent** %3, align 8
  br label %54

54:                                               ; preds = %52, %16
  %55 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %3, align 8
  ret %struct.sctp_ulpevent* %55
}

declare dso_local i32 @sctp_ulpq_store_reasm(%struct.sctp_ulpq*, %struct.sctp_ulpevent*) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpq_retrieve_reassembled(%struct.sctp_ulpq*) #1

declare dso_local i32 @sctp_tsnmap_get_ctsn(i32*) #1

declare dso_local i64 @TSN_lte(i32, i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpq_retrieve_partial(%struct.sctp_ulpq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

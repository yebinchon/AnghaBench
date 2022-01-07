; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_renege.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_ulpqueue.c_sctp_ulpq_renege.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ulpq = type { %struct.sctp_association* }
%struct.sctp_association = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.sctp_chunk = type { i32, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@SCTP_DEFAULT_MAXWINDOW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_ulpq_renege(%struct.sctp_ulpq* %0, %struct.sctp_chunk* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_ulpq*, align 8
  %5 = alloca %struct.sctp_chunk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.sctp_ulpq* %0, %struct.sctp_ulpq** %4, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %12 = getelementptr inbounds %struct.sctp_ulpq, %struct.sctp_ulpq* %11, i32 0, i32 0
  %13 = load %struct.sctp_association*, %struct.sctp_association** %12, align 8
  store %struct.sctp_association* %13, %struct.sctp_association** %7, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %15 = icmp ne %struct.sctp_chunk* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %18 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %17, i32 0, i32 2
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ntohs(i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = sub i64 %23, 4
  store i64 %24, i64* %8, align 8
  br label %27

25:                                               ; preds = %3
  %26 = load i64, i64* @SCTP_DEFAULT_MAXWINDOW, align 8
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %25, %16
  store i64 0, i64* %9, align 8
  %28 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %29 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = call i64 @skb_queue_empty(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %27
  %36 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @sctp_ulpq_renege_order(%struct.sctp_ulpq* %36, i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub nsw i64 %44, %45
  %47 = call i64 @sctp_ulpq_renege_frags(%struct.sctp_ulpq* %43, i64 %46)
  %48 = load i64, i64* %9, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %42, %35
  br label %51

51:                                               ; preds = %50, %27
  %52 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %53 = icmp ne %struct.sctp_chunk* %52, null
  br i1 %53, label %54, label %82

54:                                               ; preds = %51
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %54
  %59 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %60 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ntohl(i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %67 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %71 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @sctp_tsnmap_mark(i32* %68, i32 %69, i32 %72)
  %74 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %75 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @sctp_ulpq_tail_data(%struct.sctp_ulpq* %74, %struct.sctp_chunk* %75, i32 %76)
  %78 = load %struct.sctp_ulpq*, %struct.sctp_ulpq** %4, align 8
  %79 = load %struct.sctp_chunk*, %struct.sctp_chunk** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @sctp_ulpq_partial_delivery(%struct.sctp_ulpq* %78, %struct.sctp_chunk* %79, i32 %80)
  br label %82

82:                                               ; preds = %58, %54, %51
  %83 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %84 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = call i32 @sk_mem_reclaim(%struct.TYPE_12__* %86)
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i64 @sctp_ulpq_renege_order(%struct.sctp_ulpq*, i64) #1

declare dso_local i64 @sctp_ulpq_renege_frags(%struct.sctp_ulpq*, i64) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sctp_tsnmap_mark(i32*, i32, i32) #1

declare dso_local i32 @sctp_ulpq_tail_data(%struct.sctp_ulpq*, %struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_ulpq_partial_delivery(%struct.sctp_ulpq*, %struct.sctp_chunk*, i32) #1

declare dso_local i32 @sk_mem_reclaim(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_inqueue.c_sctp_inq_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_inqueue.c_sctp_inq_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_inq = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*)* }
%struct.sctp_chunk = type { %struct.TYPE_7__*, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_inq_push(%struct.sctp_inq* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_inq*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  store %struct.sctp_inq* %0, %struct.sctp_inq** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %5 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %6 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %5, i32 0, i32 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %13 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %12)
  br label %40

14:                                               ; preds = %2
  %15 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %16 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %15, i32 0, i32 1
  %17 = load %struct.sctp_inq*, %struct.sctp_inq** %3, align 8
  %18 = getelementptr inbounds %struct.sctp_inq, %struct.sctp_inq* %17, i32 0, i32 1
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  %20 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %21 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = icmp ne %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %14
  %25 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %26 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %24, %14
  %33 = load %struct.sctp_inq*, %struct.sctp_inq** %3, align 8
  %34 = getelementptr inbounds %struct.sctp_inq, %struct.sctp_inq* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %35, align 8
  %37 = load %struct.sctp_inq*, %struct.sctp_inq** %3, align 8
  %38 = getelementptr inbounds %struct.sctp_inq, %struct.sctp_inq* %37, i32 0, i32 0
  %39 = call i32 %36(%struct.TYPE_8__* %38)
  br label %40

40:                                               ; preds = %32, %11
  ret void
}

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_chunk.c_sctp_chunk_abandoned.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_chunk.c_sctp_chunk_abandoned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_chunk = type { %struct.sctp_datamsg* }
%struct.sctp_datamsg = type { i32, i32 }

@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_chunk_abandoned(%struct.sctp_chunk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sctp_chunk*, align 8
  %4 = alloca %struct.sctp_datamsg*, align 8
  store %struct.sctp_chunk* %0, %struct.sctp_chunk** %3, align 8
  %5 = load %struct.sctp_chunk*, %struct.sctp_chunk** %3, align 8
  %6 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %5, i32 0, i32 0
  %7 = load %struct.sctp_datamsg*, %struct.sctp_datamsg** %6, align 8
  store %struct.sctp_datamsg* %7, %struct.sctp_datamsg** %4, align 8
  %8 = load %struct.sctp_datamsg*, %struct.sctp_datamsg** %4, align 8
  %9 = getelementptr inbounds %struct.sctp_datamsg, %struct.sctp_datamsg* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load i32, i32* @jiffies, align 4
  %15 = load %struct.sctp_datamsg*, %struct.sctp_datamsg** %4, align 8
  %16 = getelementptr inbounds %struct.sctp_datamsg, %struct.sctp_datamsg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @time_after(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %22

21:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %21, %20, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @time_after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

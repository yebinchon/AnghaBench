; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statetable.c_sctp_sm_lookup_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_sm_statetable.c_sctp_sm_lookup_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SCTP_EVENT_TIMEOUT_MAX = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@timeout_event_table = common dso_local global i32 0, align 4
@SCTP_EVENT_OTHER_MAX = common dso_local global i32 0, align 4
@other = common dso_local global i32 0, align 4
@other_event_table = common dso_local global i32 0, align 4
@SCTP_EVENT_PRIMITIVE_MAX = common dso_local global i32 0, align 4
@primitive = common dso_local global i32 0, align 4
@primitive_event_table = common dso_local global i32 0, align 4
@bug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @sctp_sm_lookup_event(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 %2, i32* %8, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %30 [
    i32 131, label %10
    i32 128, label %15
    i32 130, label %20
    i32 129, label %25
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32* @sctp_chunk_event_lookup(i32 %12, i32 %13)
  store i32* %14, i32** %4, align 8
  br label %31

15:                                               ; preds = %3
  %16 = load i32, i32* @SCTP_EVENT_TIMEOUT_MAX, align 4
  %17 = load i32, i32* @timeout, align 4
  %18 = load i32, i32* @timeout_event_table, align 4
  %19 = call i32 @DO_LOOKUP(i32 %16, i32 %17, i32 %18)
  br label %31

20:                                               ; preds = %3
  %21 = load i32, i32* @SCTP_EVENT_OTHER_MAX, align 4
  %22 = load i32, i32* @other, align 4
  %23 = load i32, i32* @other_event_table, align 4
  %24 = call i32 @DO_LOOKUP(i32 %21, i32 %22, i32 %23)
  br label %31

25:                                               ; preds = %3
  %26 = load i32, i32* @SCTP_EVENT_PRIMITIVE_MAX, align 4
  %27 = load i32, i32* @primitive, align 4
  %28 = load i32, i32* @primitive_event_table, align 4
  %29 = call i32 @DO_LOOKUP(i32 %26, i32 %27, i32 %28)
  br label %31

30:                                               ; preds = %3
  store i32* @bug, i32** %4, align 8
  br label %31

31:                                               ; preds = %10, %30, %25, %20, %15
  %32 = load i32*, i32** %4, align 8
  ret i32* %32
}

declare dso_local i32* @sctp_chunk_event_lookup(i32, i32) #1

declare dso_local i32 @DO_LOOKUP(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

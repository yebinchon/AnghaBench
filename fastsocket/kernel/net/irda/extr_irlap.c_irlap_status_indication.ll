; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap.c_irlap_status_indication.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/irda/extr_irlap.c_irlap_status_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irlap_cb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"IrLAP, no activity on link!\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"IrLAP, noisy link!\0A\00", align 1
@LOCK_NO_CHANGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @irlap_status_indication(%struct.irlap_cb* %0, i32 %1) #0 {
  %3 = alloca %struct.irlap_cb*, align 8
  %4 = alloca i32, align 4
  store %struct.irlap_cb* %0, %struct.irlap_cb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %10 [
    i32 128, label %6
    i32 129, label %8
  ]

6:                                                ; preds = %2
  %7 = call i32 @IRDA_MESSAGE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %11

8:                                                ; preds = %2
  %9 = call i32 @IRDA_MESSAGE(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %11

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %10, %8, %6
  %12 = load %struct.irlap_cb*, %struct.irlap_cb** %3, align 8
  %13 = getelementptr inbounds %struct.irlap_cb, %struct.irlap_cb* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @LOCK_NO_CHANGE, align 4
  %18 = call i32 @irlmp_status_indication(i32 %15, i32 %16, i32 %17)
  ret void
}

declare dso_local i32 @IRDA_MESSAGE(i8*) #1

declare dso_local i32 @irlmp_status_indication(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_evtchn.c_evtchn_bind_to_user.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/extr_evtchn.c_evtchn_bind_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_user_data = type { i32 }

@port_user = common dso_local global %struct.per_user_data** null, align 8
@evtchn_interrupt = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.per_user_data*, i32)* @evtchn_bind_to_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evtchn_bind_to_user(%struct.per_user_data* %0, i32 %1) #0 {
  %3 = alloca %struct.per_user_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.per_user_data* %0, %struct.per_user_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.per_user_data**, %struct.per_user_data*** @port_user, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.per_user_data*, %struct.per_user_data** %6, i64 %8
  %10 = load %struct.per_user_data*, %struct.per_user_data** %9, align 8
  %11 = icmp ne %struct.per_user_data* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %15 = load %struct.per_user_data**, %struct.per_user_data*** @port_user, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.per_user_data*, %struct.per_user_data** %15, i64 %17
  store %struct.per_user_data* %14, %struct.per_user_data** %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @evtchn_interrupt, align 4
  %21 = load i32, i32* @IRQF_DISABLED, align 4
  %22 = load %struct.per_user_data*, %struct.per_user_data** %3, align 8
  %23 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @bind_evtchn_to_irqhandler(i32 %19, i32 %20, i32 %21, i32 %24, i8* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bind_evtchn_to_irqhandler(i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

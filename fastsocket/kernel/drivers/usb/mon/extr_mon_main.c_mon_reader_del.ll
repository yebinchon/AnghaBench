; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_main.c_mon_reader_del.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/mon/extr_mon_main.c_mon_reader_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_bus = type { i64, i32, i32 }
%struct.mon_reader = type { i32 }

@mon_bus_drop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mon_reader_del(%struct.mon_bus* %0, %struct.mon_reader* %1) #0 {
  %3 = alloca %struct.mon_bus*, align 8
  %4 = alloca %struct.mon_reader*, align 8
  %5 = alloca i64, align 8
  store %struct.mon_bus* %0, %struct.mon_bus** %3, align 8
  store %struct.mon_reader* %1, %struct.mon_reader** %4, align 8
  %6 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %7 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %6, i32 0, i32 2
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.mon_reader*, %struct.mon_reader** %4, align 8
  %11 = getelementptr inbounds %struct.mon_reader, %struct.mon_reader* %10, i32 0, i32 0
  %12 = call i32 @list_del(i32* %11)
  %13 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %14 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %18 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %23 = call i32 @mon_stop(%struct.mon_bus* %22)
  br label %24

24:                                               ; preds = %21, %2
  %25 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %26 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %25, i32 0, i32 2
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.mon_bus*, %struct.mon_bus** %3, align 8
  %30 = getelementptr inbounds %struct.mon_bus, %struct.mon_bus* %29, i32 0, i32 1
  %31 = load i32, i32* @mon_bus_drop, align 4
  %32 = call i32 @kref_put(i32* %30, i32 %31)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mon_stop(%struct.mon_bus*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

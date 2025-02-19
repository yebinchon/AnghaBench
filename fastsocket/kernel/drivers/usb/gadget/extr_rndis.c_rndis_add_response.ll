; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_rndis.c_rndis_add_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_rndis.c_rndis_add_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i64, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@rndis_per_dev_params = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i64)* @rndis_add_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @rndis_add_response(i32 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = add i64 32, %7
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call %struct.TYPE_5__* @kmalloc(i64 %8, i32 %9)
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 1
  %17 = bitcast %struct.TYPE_5__* %16 to i32*
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 3
  store i32* %17, i32** %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @rndis_per_dev_params, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = call i32 @list_add_tail(i32* %26, i32* %31)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %3, align 8
  br label %34

34:                                               ; preds = %14, %13
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %35
}

declare dso_local %struct.TYPE_5__* @kmalloc(i64, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_usb.c_carlusb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.carlu* ()* @carlusb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.carlu* @carlusb_open() #0 {
  %1 = alloca %struct.carlu*, align 8
  %2 = alloca %struct.carlu*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.carlu* @carlu_alloc_driver(i32 4)
  store %struct.carlu* %4, %struct.carlu** %2, align 8
  %5 = load %struct.carlu*, %struct.carlu** %2, align 8
  %6 = icmp eq %struct.carlu* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.carlu* null, %struct.carlu** %1, align 8
  br label %27

8:                                                ; preds = %0
  %9 = load %struct.carlu*, %struct.carlu** %2, align 8
  %10 = call i32 @carlusb_init(%struct.carlu* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %22

14:                                               ; preds = %8
  %15 = load %struct.carlu*, %struct.carlu** %2, align 8
  %16 = call i32 @carlusb_get_dev(%struct.carlu* %15, i32 1)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %22

20:                                               ; preds = %14
  %21 = load %struct.carlu*, %struct.carlu** %2, align 8
  store %struct.carlu* %21, %struct.carlu** %1, align 8
  br label %27

22:                                               ; preds = %19, %13
  %23 = load %struct.carlu*, %struct.carlu** %2, align 8
  %24 = call i32 @carlusb_free_driver(%struct.carlu* %23)
  %25 = load i32, i32* %3, align 4
  %26 = call %struct.carlu* @ERR_PTR(i32 %25)
  store %struct.carlu* %26, %struct.carlu** %1, align 8
  br label %27

27:                                               ; preds = %22, %20, %7
  %28 = load %struct.carlu*, %struct.carlu** %1, align 8
  ret %struct.carlu* %28
}

declare dso_local %struct.carlu* @carlu_alloc_driver(i32) #1

declare dso_local i32 @carlusb_init(%struct.carlu*) #1

declare dso_local i32 @carlusb_get_dev(%struct.carlu*, i32) #1

declare dso_local i32 @carlusb_free_driver(%struct.carlu*) #1

declare dso_local %struct.carlu* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

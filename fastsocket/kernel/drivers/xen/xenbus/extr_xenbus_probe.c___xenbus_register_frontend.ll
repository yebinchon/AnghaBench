; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c___xenbus_register_frontend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/xen/xenbus/extr_xenbus_probe.c___xenbus_register_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_driver = type { i32 }
%struct.module = type { i32 }

@read_backend_details = common dso_local global i32 0, align 4
@xenbus_frontend = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xenbus_register_frontend(%struct.xenbus_driver* %0, %struct.module* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xenbus_driver*, align 8
  %6 = alloca %struct.module*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.xenbus_driver* %0, %struct.xenbus_driver** %5, align 8
  store %struct.module* %1, %struct.module** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @read_backend_details, align 4
  %10 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %11 = getelementptr inbounds %struct.xenbus_driver, %struct.xenbus_driver* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %13 = load %struct.module*, %struct.module** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @xenbus_register_driver_common(%struct.xenbus_driver* %12, i32* @xenbus_frontend, %struct.module* %13, i8* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load %struct.xenbus_driver*, %struct.xenbus_driver** %5, align 8
  %22 = call i32 @wait_for_devices(%struct.xenbus_driver* %21)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @xenbus_register_driver_common(%struct.xenbus_driver*, i32*, %struct.module*, i8*) #1

declare dso_local i32 @wait_for_devices(%struct.xenbus_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

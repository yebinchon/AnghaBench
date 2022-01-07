; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_uss720.c_set_1284_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/misc/extr_uss720.c_set_1284_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parport = type { %struct.parport_uss720_private* }
%struct.parport_uss720_private = type { i32 }
%struct.uss720_async_request = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"set_1284_register(%u,%u) failed\00", align 1
@destroy_async = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parport*, i8, i8, i32)* @set_1284_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_1284_register(%struct.parport* %0, i8 zeroext %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parport*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca %struct.parport_uss720_private*, align 8
  %11 = alloca %struct.uss720_async_request*, align 8
  store %struct.parport* %0, %struct.parport** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %12 = load %struct.parport*, %struct.parport** %6, align 8
  %13 = icmp ne %struct.parport* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %45

17:                                               ; preds = %4
  %18 = load %struct.parport*, %struct.parport** %6, align 8
  %19 = getelementptr inbounds %struct.parport, %struct.parport* %18, i32 0, i32 0
  %20 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %19, align 8
  store %struct.parport_uss720_private* %20, %struct.parport_uss720_private** %10, align 8
  %21 = load %struct.parport_uss720_private*, %struct.parport_uss720_private** %10, align 8
  %22 = load i8, i8* %7, align 1
  %23 = zext i8 %22 to i32
  %24 = shl i32 %23, 8
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %24, %26
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.uss720_async_request* @submit_async_request(%struct.parport_uss720_private* %21, i32 4, i32 64, i32 %27, i32 0, i32 %28)
  store %struct.uss720_async_request* %29, %struct.uss720_async_request** %11, align 8
  %30 = load %struct.uss720_async_request*, %struct.uss720_async_request** %11, align 8
  %31 = icmp ne %struct.uss720_async_request* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %17
  %33 = load i8, i8* %7, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %8, align 1
  %36 = zext i8 %35 to i32
  %37 = call i32 @err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %45

40:                                               ; preds = %17
  %41 = load %struct.uss720_async_request*, %struct.uss720_async_request** %11, align 8
  %42 = getelementptr inbounds %struct.uss720_async_request, %struct.uss720_async_request* %41, i32 0, i32 0
  %43 = load i32, i32* @destroy_async, align 4
  %44 = call i32 @kref_put(i32* %42, i32 %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %32, %14
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.uss720_async_request* @submit_async_request(%struct.parport_uss720_private*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @err(i8*, i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

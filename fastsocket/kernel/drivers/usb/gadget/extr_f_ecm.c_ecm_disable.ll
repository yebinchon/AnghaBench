; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_ecm.c_ecm_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_f_ecm.c_ecm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.usb_composite_dev* }
%struct.usb_composite_dev = type { i32 }
%struct.f_ecm = type { i32*, %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"ecm deactivated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_function*)* @ecm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecm_disable(%struct.usb_function* %0) #0 {
  %2 = alloca %struct.usb_function*, align 8
  %3 = alloca %struct.f_ecm*, align 8
  %4 = alloca %struct.usb_composite_dev*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %2, align 8
  %5 = load %struct.usb_function*, %struct.usb_function** %2, align 8
  %6 = call %struct.f_ecm* @func_to_ecm(%struct.usb_function* %5)
  store %struct.f_ecm* %6, %struct.f_ecm** %3, align 8
  %7 = load %struct.usb_function*, %struct.usb_function** %2, align 8
  %8 = getelementptr inbounds %struct.usb_function, %struct.usb_function* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %10, align 8
  store %struct.usb_composite_dev* %11, %struct.usb_composite_dev** %4, align 8
  %12 = load %struct.usb_composite_dev*, %struct.usb_composite_dev** %4, align 8
  %13 = call i32 @DBG(%struct.usb_composite_dev* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.f_ecm*, %struct.f_ecm** %3, align 8
  %15 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load %struct.f_ecm*, %struct.f_ecm** %3, align 8
  %23 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %22, i32 0, i32 2
  %24 = call i32 @gether_disconnect(%struct.TYPE_8__* %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.f_ecm*, %struct.f_ecm** %3, align 8
  %27 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.f_ecm*, %struct.f_ecm** %3, align 8
  %34 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %33, i32 0, i32 1
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = call i32 @usb_ep_disable(%struct.TYPE_7__* %35)
  %37 = load %struct.f_ecm*, %struct.f_ecm** %3, align 8
  %38 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.f_ecm*, %struct.f_ecm** %3, align 8
  %42 = getelementptr inbounds %struct.f_ecm, %struct.f_ecm* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %32, %25
  ret void
}

declare dso_local %struct.f_ecm* @func_to_ecm(%struct.usb_function*) #1

declare dso_local i32 @DBG(%struct.usb_composite_dev*, i8*) #1

declare dso_local i32 @gether_disconnect(%struct.TYPE_8__*) #1

declare dso_local i32 @usb_ep_disable(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_main.c_stub_device_cleanup_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/usbip/extr_stub_main.c_stub_device_cleanup_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stub_device = type { i32*, i32* }
%struct.stub_priv = type { %struct.urb* }
%struct.urb = type { i32*, i32* }

@.str = private unnamed_addr constant [14 x i8] c"free sdev %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"   free urb %p\0A\00", align 1
@stub_priv_cache = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stub_device_cleanup_urbs(%struct.stub_device* %0) #0 {
  %2 = alloca %struct.stub_device*, align 8
  %3 = alloca %struct.stub_priv*, align 8
  %4 = alloca %struct.urb*, align 8
  store %struct.stub_device* %0, %struct.stub_device** %2, align 8
  %5 = load %struct.stub_device*, %struct.stub_device** %2, align 8
  %6 = bitcast %struct.stub_device* %5 to %struct.urb*
  %7 = call i32 @usbip_udbg(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.urb* %6)
  br label %8

8:                                                ; preds = %43, %1
  %9 = load %struct.stub_device*, %struct.stub_device** %2, align 8
  %10 = bitcast %struct.stub_device* %9 to %struct.urb*
  %11 = call %struct.stub_priv* @stub_priv_pop(%struct.urb* %10)
  store %struct.stub_priv* %11, %struct.stub_priv** %3, align 8
  %12 = icmp ne %struct.stub_priv* %11, null
  br i1 %12, label %13, label %46

13:                                               ; preds = %8
  %14 = load %struct.stub_priv*, %struct.stub_priv** %3, align 8
  %15 = getelementptr inbounds %struct.stub_priv, %struct.stub_priv* %14, i32 0, i32 0
  %16 = load %struct.urb*, %struct.urb** %15, align 8
  store %struct.urb* %16, %struct.urb** %4, align 8
  %17 = load %struct.urb*, %struct.urb** %4, align 8
  %18 = call i32 @usbip_udbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %17)
  %19 = load %struct.urb*, %struct.urb** %4, align 8
  %20 = call i32 @usb_kill_urb(%struct.urb* %19)
  %21 = load i32, i32* @stub_priv_cache, align 4
  %22 = load %struct.stub_priv*, %struct.stub_priv** %3, align 8
  %23 = call i32 @kmem_cache_free(i32 %21, %struct.stub_priv* %22)
  %24 = load %struct.urb*, %struct.urb** %4, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %13
  %29 = load %struct.urb*, %struct.urb** %4, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  br label %33

33:                                               ; preds = %28, %13
  %34 = load %struct.urb*, %struct.urb** %4, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.urb*, %struct.urb** %4, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.urb*, %struct.urb** %4, align 8
  %45 = call i32 @usb_free_urb(%struct.urb* %44)
  br label %8

46:                                               ; preds = %8
  ret void
}

declare dso_local i32 @usbip_udbg(i8*, %struct.urb*) #1

declare dso_local %struct.stub_priv* @stub_priv_pop(%struct.urb*) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.stub_priv*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

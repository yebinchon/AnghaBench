; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_dlfb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/udlfb/extr_udlfb.c_dlfb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.dlfb_data = type { %struct.TYPE_3__*, %struct.dlfb_data*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"DisplayLink device disconnected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @dlfb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlfb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.dlfb_data*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %4 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %5 = call %struct.dlfb_data* @usb_get_intfdata(%struct.usb_interface* %4)
  store %struct.dlfb_data* %5, %struct.dlfb_data** %3, align 8
  %6 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %7 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %6, i32 0, i32 5
  %8 = call i32 @mutex_unlock(i32* %7)
  %9 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %10 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @usb_kill_urb(i32 %11)
  %13 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %14 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @usb_free_urb(i32 %15)
  %17 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %18 = call i32 @usb_set_intfdata(%struct.usb_interface* %17, i32* null)
  %19 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %20 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_put_dev(i32 %21)
  %23 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %24 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = icmp ne %struct.TYPE_3__* %25, null
  br i1 %26, label %27, label %54

27:                                               ; preds = %1
  %28 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %29 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = call i32 @unregister_framebuffer(%struct.TYPE_3__* %30)
  %32 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %33 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i32 @fb_dealloc_cmap(i32* %35)
  %37 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %38 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %43 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @rvfree(i32 %41, i32 %44)
  %46 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %47 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %46, i32 0, i32 1
  %48 = load %struct.dlfb_data*, %struct.dlfb_data** %47, align 8
  %49 = call i32 @kfree(%struct.dlfb_data* %48)
  %50 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %51 = getelementptr inbounds %struct.dlfb_data, %struct.dlfb_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = call i32 @framebuffer_release(%struct.TYPE_3__* %52)
  br label %54

54:                                               ; preds = %27, %1
  %55 = load %struct.dlfb_data*, %struct.dlfb_data** %3, align 8
  %56 = call i32 @kfree(%struct.dlfb_data* %55)
  %57 = call i32 @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.dlfb_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_put_dev(i32) #1

declare dso_local i32 @unregister_framebuffer(%struct.TYPE_3__*) #1

declare dso_local i32 @fb_dealloc_cmap(i32*) #1

declare dso_local i32 @rvfree(i32, i32) #1

declare dso_local i32 @kfree(%struct.dlfb_data*) #1

declare dso_local i32 @framebuffer_release(%struct.TYPE_3__*) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

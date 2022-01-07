; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_snd_usb_mixer_status_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_mixer.c_snd_usb_mixer_status_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_mixer_interface = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.usb_endpoint_descriptor = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@snd_usb_mixer_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_mixer_interface*)* @snd_usb_mixer_status_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_usb_mixer_status_create(%struct.usb_mixer_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_mixer_interface*, align 8
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_mixer_interface* %0, %struct.usb_mixer_interface** %3, align 8
  %8 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %9 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.TYPE_4__* @get_iface_desc(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

16:                                               ; preds = %1
  %17 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %18 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.usb_endpoint_descriptor* @get_endpoint(i32 %19, i32 0)
  store %struct.usb_endpoint_descriptor* %20, %struct.usb_endpoint_descriptor** %4, align 8
  %21 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %22 = call i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %16
  %25 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %26 = call i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24, %16
  store i32 0, i32* %2, align 4
  br label %87

29:                                               ; preds = %24
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %31 = call i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor* %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %33 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le16_to_cpu(i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kmalloc(i32 %36, i32 %37)
  store i8* %38, i8** %5, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %87

44:                                               ; preds = %29
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @usb_alloc_urb(i32 0, i32 %45)
  %47 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %48 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %50 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %44
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @kfree(i8* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %87

58:                                               ; preds = %44
  %59 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %60 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %63 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %68 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %67, i32 0, i32 1
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @usb_rcvintpipe(i32 %71, i32 %72)
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @snd_usb_mixer_interrupt, align 4
  %77 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %78 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  %79 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @usb_fill_int_urb(i32 %61, i32 %66, i32 %73, i8* %74, i32 %75, i32 %76, %struct.usb_mixer_interface* %77, i32 %80)
  %82 = load %struct.usb_mixer_interface*, %struct.usb_mixer_interface** %3, align 8
  %83 = getelementptr inbounds %struct.usb_mixer_interface, %struct.usb_mixer_interface* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i32 @usb_submit_urb(i32 %84, i32 %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %58, %53, %41, %28, %15
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.TYPE_4__* @get_iface_desc(i32) #1

declare dso_local %struct.usb_endpoint_descriptor* @get_endpoint(i32, i32) #1

declare dso_local i32 @usb_endpoint_dir_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @usb_endpoint_num(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @usb_fill_int_urb(i32, i32, i32, i8*, i32, i32, %struct.usb_mixer_interface*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

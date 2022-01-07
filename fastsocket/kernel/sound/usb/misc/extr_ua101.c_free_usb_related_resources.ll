; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_free_usb_related_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/misc/extr_ua101.c_free_usb_related_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ua101 = type { i32, %struct.usb_interface**, i32, i32 }
%struct.usb_interface = type { i32 }

@ua101_driver = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ua101*, %struct.usb_interface*)* @free_usb_related_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_usb_related_resources(%struct.ua101* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.ua101*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_interface*, align 8
  store %struct.ua101* %0, %struct.ua101** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %7 = load %struct.ua101*, %struct.ua101** %3, align 8
  %8 = getelementptr inbounds %struct.ua101, %struct.ua101* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.ua101*, %struct.ua101** %3, align 8
  %11 = getelementptr inbounds %struct.ua101, %struct.ua101* %10, i32 0, i32 3
  %12 = call i32 @free_stream_urbs(i32* %11)
  %13 = load %struct.ua101*, %struct.ua101** %3, align 8
  %14 = getelementptr inbounds %struct.ua101, %struct.ua101* %13, i32 0, i32 2
  %15 = call i32 @free_stream_urbs(i32* %14)
  %16 = load %struct.ua101*, %struct.ua101** %3, align 8
  %17 = getelementptr inbounds %struct.ua101, %struct.ua101* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load %struct.ua101*, %struct.ua101** %3, align 8
  %20 = load %struct.ua101*, %struct.ua101** %3, align 8
  %21 = getelementptr inbounds %struct.ua101, %struct.ua101* %20, i32 0, i32 3
  %22 = call i32 @free_stream_buffers(%struct.ua101* %19, i32* %21)
  %23 = load %struct.ua101*, %struct.ua101** %3, align 8
  %24 = load %struct.ua101*, %struct.ua101** %3, align 8
  %25 = getelementptr inbounds %struct.ua101, %struct.ua101* %24, i32 0, i32 2
  %26 = call i32 @free_stream_buffers(%struct.ua101* %23, i32* %25)
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %67, %2
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ua101*, %struct.ua101** %3, align 8
  %30 = getelementptr inbounds %struct.ua101, %struct.ua101* %29, i32 0, i32 1
  %31 = load %struct.usb_interface**, %struct.usb_interface*** %30, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.usb_interface** %31)
  %33 = icmp ult i32 %28, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %27
  %35 = load %struct.ua101*, %struct.ua101** %3, align 8
  %36 = getelementptr inbounds %struct.ua101, %struct.ua101* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.ua101*, %struct.ua101** %3, align 8
  %39 = getelementptr inbounds %struct.ua101, %struct.ua101* %38, i32 0, i32 1
  %40 = load %struct.usb_interface**, %struct.usb_interface*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %40, i64 %42
  %44 = load %struct.usb_interface*, %struct.usb_interface** %43, align 8
  store %struct.usb_interface* %44, %struct.usb_interface** %6, align 8
  %45 = load %struct.ua101*, %struct.ua101** %3, align 8
  %46 = getelementptr inbounds %struct.ua101, %struct.ua101* %45, i32 0, i32 1
  %47 = load %struct.usb_interface**, %struct.usb_interface*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.usb_interface*, %struct.usb_interface** %47, i64 %49
  store %struct.usb_interface* null, %struct.usb_interface** %50, align 8
  %51 = load %struct.ua101*, %struct.ua101** %3, align 8
  %52 = getelementptr inbounds %struct.ua101, %struct.ua101* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %55 = icmp ne %struct.usb_interface* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %34
  %57 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %58 = call i32 @usb_set_intfdata(%struct.usb_interface* %57, i32* null)
  %59 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %60 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %61 = icmp ne %struct.usb_interface* %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %64 = call i32 @usb_driver_release_interface(i32* @ua101_driver, %struct.usb_interface* %63)
  br label %65

65:                                               ; preds = %62, %56
  br label %66

66:                                               ; preds = %65, %34
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %27

70:                                               ; preds = %27
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @free_stream_urbs(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_stream_buffers(%struct.ua101*, i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.usb_interface**) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_driver_release_interface(i32*, %struct.usb_interface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

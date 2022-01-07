; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_snd_usb_endpoint_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/extr_endpoint.c_snd_usb_endpoint_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_usb_endpoint = type { i64, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_usb_endpoint_stop(%struct.snd_usb_endpoint* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_usb_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_usb_endpoint* %0, %struct.snd_usb_endpoint** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %10 = icmp ne %struct.snd_usb_endpoint* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %46

12:                                               ; preds = %4
  %13 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %14 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @snd_BUG_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %46

21:                                               ; preds = %12
  %22 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %23 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %21
  %28 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @deactivate_urbs(%struct.snd_usb_endpoint* %28, i32 %29, i32 %30)
  %32 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %33 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %32, i32 0, i32 4
  store i32* null, i32** %33, align 8
  %34 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %35 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %34, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %37 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  %38 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %39 = getelementptr inbounds %struct.snd_usb_endpoint, %struct.snd_usb_endpoint* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %27
  %43 = load %struct.snd_usb_endpoint*, %struct.snd_usb_endpoint** %5, align 8
  %44 = call i32 @wait_clear_urbs(%struct.snd_usb_endpoint* %43)
  br label %45

45:                                               ; preds = %42, %27
  br label %46

46:                                               ; preds = %11, %20, %45, %21
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @deactivate_urbs(%struct.snd_usb_endpoint*, i32, i32) #1

declare dso_local i32 @wait_clear_urbs(%struct.snd_usb_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

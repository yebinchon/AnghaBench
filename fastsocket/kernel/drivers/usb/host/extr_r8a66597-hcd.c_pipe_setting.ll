; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_pipe_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_pipe_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32 }
%struct.r8a66597_td = type { i64, %struct.TYPE_5__*, %struct.urb* }
%struct.TYPE_5__ = type { %struct.r8a66597_pipe_info }
%struct.r8a66597_pipe_info = type { i32 }
%struct.urb = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_td*)* @pipe_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_setting(%struct.r8a66597* %0, %struct.r8a66597_td* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.r8a66597_td*, align 8
  %5 = alloca %struct.r8a66597_pipe_info*, align 8
  %6 = alloca %struct.urb*, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.r8a66597_td* %1, %struct.r8a66597_td** %4, align 8
  %7 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %8 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %7, i32 0, i32 2
  %9 = load %struct.urb*, %struct.urb** %8, align 8
  store %struct.urb* %9, %struct.urb** %6, align 8
  %10 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %11 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %2
  %15 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %16 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.r8a66597_pipe_info* %18, %struct.r8a66597_pipe_info** %5, align 8
  %19 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %20 = call i32 @cfifo_change(%struct.r8a66597* %19, i32 0)
  %21 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %22 = load %struct.r8a66597_pipe_info*, %struct.r8a66597_pipe_info** %5, align 8
  %23 = call i32 @pipe_buffer_setting(%struct.r8a66597* %21, %struct.r8a66597_pipe_info* %22)
  %24 = load %struct.urb*, %struct.urb** %6, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.urb*, %struct.urb** %6, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @usb_pipeendpoint(i32 %29)
  %31 = load %struct.urb*, %struct.urb** %6, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_pipeout(i32 %33)
  %35 = call i32 @usb_gettoggle(i32 %26, i32 %30, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %72, label %37

37:                                               ; preds = %14
  %38 = load %struct.urb*, %struct.urb** %6, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @usb_pipecontrol(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %72, label %43

43:                                               ; preds = %37
  %44 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %45 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %46 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = call i32 @r8a66597_pipe_toggle(%struct.r8a66597* %44, %struct.TYPE_5__* %47, i32 0)
  %49 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %50 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %51 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load %struct.urb*, %struct.urb** %6, align 8
  %54 = call i32 @pipe_toggle_set(%struct.r8a66597* %49, %struct.TYPE_5__* %52, %struct.urb* %53, i32 0)
  %55 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %56 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %57 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = call i32 @clear_all_buffer(%struct.r8a66597* %55, %struct.TYPE_5__* %58)
  %60 = load %struct.urb*, %struct.urb** %6, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.urb*, %struct.urb** %6, align 8
  %64 = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @usb_pipeendpoint(i32 %65)
  %67 = load %struct.urb*, %struct.urb** %6, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @usb_pipeout(i32 %69)
  %71 = call i32 @usb_settoggle(i32 %62, i32 %66, i32 %70, i32 1)
  br label %72

72:                                               ; preds = %43, %37, %14
  %73 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %74 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %75 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = load %struct.urb*, %struct.urb** %6, align 8
  %78 = call i32 @pipe_toggle_restore(%struct.r8a66597* %73, %struct.TYPE_5__* %76, %struct.urb* %77)
  br label %79

79:                                               ; preds = %72, %2
  ret void
}

declare dso_local i32 @cfifo_change(%struct.r8a66597*, i32) #1

declare dso_local i32 @pipe_buffer_setting(%struct.r8a66597*, %struct.r8a66597_pipe_info*) #1

declare dso_local i32 @usb_gettoggle(i32, i32, i32) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i32 @usb_pipeout(i32) #1

declare dso_local i32 @usb_pipecontrol(i32) #1

declare dso_local i32 @r8a66597_pipe_toggle(%struct.r8a66597*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @pipe_toggle_set(%struct.r8a66597*, %struct.TYPE_5__*, %struct.urb*, i32) #1

declare dso_local i32 @clear_all_buffer(%struct.r8a66597*, %struct.TYPE_5__*) #1

declare dso_local i32 @usb_settoggle(i32, i32, i32, i32) #1

declare dso_local i32 @pipe_toggle_restore(%struct.r8a66597*, %struct.TYPE_5__*, %struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

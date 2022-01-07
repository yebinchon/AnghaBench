; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_set_td_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_r8a66597-hcd.c_set_td_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8a66597 = type { i32, i32*, i32* }
%struct.r8a66597_td = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8a66597*, %struct.r8a66597_td*)* @set_td_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_td_timer(%struct.r8a66597* %0, %struct.r8a66597_td* %1) #0 {
  %3 = alloca %struct.r8a66597*, align 8
  %4 = alloca %struct.r8a66597_td*, align 8
  %5 = alloca i64, align 8
  store %struct.r8a66597* %0, %struct.r8a66597** %3, align 8
  store %struct.r8a66597_td* %1, %struct.r8a66597_td** %4, align 8
  %6 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %7 = icmp ne %struct.r8a66597_td* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %12 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %15 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %67, label %20

20:                                               ; preds = %2
  %21 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %22 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @usb_pipecontrol(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %67, label %28

28:                                               ; preds = %20
  %29 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %30 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @usb_pipein(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %28
  %37 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %38 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 1, %40
  %42 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %43 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  %46 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %47 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @usb_pipetype(i32 %50)
  switch i32 %51, label %53 [
    i32 129, label %52
    i32 128, label %52
  ]

52:                                               ; preds = %36, %36
  store i64 30, i64* %5, align 8
  br label %54

53:                                               ; preds = %36
  store i64 300, i64* %5, align 8
  br label %54

54:                                               ; preds = %53, %52
  %55 = load %struct.r8a66597*, %struct.r8a66597** %3, align 8
  %56 = getelementptr inbounds %struct.r8a66597, %struct.r8a66597* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load %struct.r8a66597_td*, %struct.r8a66597_td** %4, align 8
  %59 = getelementptr inbounds %struct.r8a66597_td, %struct.r8a66597_td* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  %62 = load i64, i64* @jiffies, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @msecs_to_jiffies(i64 %63)
  %65 = add nsw i64 %62, %64
  %66 = call i32 @mod_timer(i32* %61, i64 %65)
  br label %67

67:                                               ; preds = %54, %28, %20, %2
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @usb_pipecontrol(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usb_pipetype(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_free_urbs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/caiaq/extr_audio.c_free_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { %struct.urb** }

@N_URBS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb**)* @free_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_urbs(%struct.urb** %0) #0 {
  %2 = alloca %struct.urb**, align 8
  %3 = alloca i32, align 4
  store %struct.urb** %0, %struct.urb*** %2, align 8
  %4 = load %struct.urb**, %struct.urb*** %2, align 8
  %5 = icmp ne %struct.urb** %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %47

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %41, %7
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @N_URBS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %44

12:                                               ; preds = %8
  %13 = load %struct.urb**, %struct.urb*** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.urb*, %struct.urb** %13, i64 %15
  %17 = load %struct.urb*, %struct.urb** %16, align 8
  %18 = icmp ne %struct.urb* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %41

20:                                               ; preds = %12
  %21 = load %struct.urb**, %struct.urb*** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.urb*, %struct.urb** %21, i64 %23
  %25 = load %struct.urb*, %struct.urb** %24, align 8
  %26 = call i32 @usb_kill_urb(%struct.urb* %25)
  %27 = load %struct.urb**, %struct.urb*** %2, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.urb*, %struct.urb** %27, i64 %29
  %31 = load %struct.urb*, %struct.urb** %30, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 0
  %33 = load %struct.urb**, %struct.urb*** %32, align 8
  %34 = call i32 @kfree(%struct.urb** %33)
  %35 = load %struct.urb**, %struct.urb*** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.urb*, %struct.urb** %35, i64 %37
  %39 = load %struct.urb*, %struct.urb** %38, align 8
  %40 = call i32 @usb_free_urb(%struct.urb* %39)
  br label %41

41:                                               ; preds = %20, %19
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %8

44:                                               ; preds = %8
  %45 = load %struct.urb**, %struct.urb*** %2, align 8
  %46 = call i32 @kfree(%struct.urb** %45)
  br label %47

47:                                               ; preds = %44, %6
  ret void
}

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.urb**) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

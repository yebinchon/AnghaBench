; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_giveback_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_giveback_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { i32 }
%struct.urb = type { %struct.c67x00_urb_priv* }
%struct.c67x00_urb_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c67x00_hcd*, %struct.urb*, i32)* @c67x00_giveback_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c67x00_giveback_urb(%struct.c67x00_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.c67x00_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.c67x00_urb_priv*, align 8
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.urb*, %struct.urb** %5, align 8
  %9 = icmp ne %struct.urb* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  br label %41

11:                                               ; preds = %3
  %12 = load %struct.urb*, %struct.urb** %5, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 0
  %14 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %13, align 8
  store %struct.c67x00_urb_priv* %14, %struct.c67x00_urb_priv** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %7, align 8
  %17 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %7, align 8
  %19 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %18, i32 0, i32 1
  %20 = call i32 @list_del_init(i32* %19)
  %21 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %4, align 8
  %22 = load %struct.urb*, %struct.urb** %5, align 8
  %23 = call i32 @c67x00_release_urb(%struct.c67x00_hcd* %21, %struct.urb* %22)
  %24 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %4, align 8
  %25 = call i32 @c67x00_hcd_to_hcd(%struct.c67x00_hcd* %24)
  %26 = load %struct.urb*, %struct.urb** %5, align 8
  %27 = call i32 @usb_hcd_unlink_urb_from_ep(i32 %25, %struct.urb* %26)
  %28 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %4, align 8
  %29 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %4, align 8
  %32 = call i32 @c67x00_hcd_to_hcd(%struct.c67x00_hcd* %31)
  %33 = load %struct.urb*, %struct.urb** %5, align 8
  %34 = load %struct.c67x00_urb_priv*, %struct.c67x00_urb_priv** %7, align 8
  %35 = getelementptr inbounds %struct.c67x00_urb_priv, %struct.c67x00_urb_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_hcd_giveback_urb(i32 %32, %struct.urb* %33, i32 %36)
  %38 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %4, align 8
  %39 = getelementptr inbounds %struct.c67x00_hcd, %struct.c67x00_hcd* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  br label %41

41:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @c67x00_release_urb(%struct.c67x00_hcd*, %struct.urb*) #1

declare dso_local i32 @usb_hcd_unlink_urb_from_ep(i32, %struct.urb*) #1

declare dso_local i32 @c67x00_hcd_to_hcd(%struct.c67x00_hcd*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usb_hcd_giveback_urb(i32, %struct.urb*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

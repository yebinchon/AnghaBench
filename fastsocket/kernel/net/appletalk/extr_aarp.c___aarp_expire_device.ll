; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_aarp.c___aarp_expire_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_aarp.c___aarp_expire_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aarp_entry = type { %struct.aarp_entry*, %struct.net_device* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aarp_entry**, %struct.net_device*)* @__aarp_expire_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__aarp_expire_device(%struct.aarp_entry** %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.aarp_entry**, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.aarp_entry*, align 8
  store %struct.aarp_entry** %0, %struct.aarp_entry*** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  br label %6

6:                                                ; preds = %31, %2
  %7 = load %struct.aarp_entry**, %struct.aarp_entry*** %3, align 8
  %8 = load %struct.aarp_entry*, %struct.aarp_entry** %7, align 8
  %9 = icmp ne %struct.aarp_entry* %8, null
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load %struct.aarp_entry**, %struct.aarp_entry*** %3, align 8
  %12 = load %struct.aarp_entry*, %struct.aarp_entry** %11, align 8
  %13 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %12, i32 0, i32 1
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = icmp eq %struct.net_device* %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.aarp_entry**, %struct.aarp_entry*** %3, align 8
  %19 = load %struct.aarp_entry*, %struct.aarp_entry** %18, align 8
  store %struct.aarp_entry* %19, %struct.aarp_entry** %5, align 8
  %20 = load %struct.aarp_entry**, %struct.aarp_entry*** %3, align 8
  %21 = load %struct.aarp_entry*, %struct.aarp_entry** %20, align 8
  %22 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %21, i32 0, i32 0
  %23 = load %struct.aarp_entry*, %struct.aarp_entry** %22, align 8
  %24 = load %struct.aarp_entry**, %struct.aarp_entry*** %3, align 8
  store %struct.aarp_entry* %23, %struct.aarp_entry** %24, align 8
  %25 = load %struct.aarp_entry*, %struct.aarp_entry** %5, align 8
  %26 = call i32 @__aarp_expire(%struct.aarp_entry* %25)
  br label %31

27:                                               ; preds = %10
  %28 = load %struct.aarp_entry**, %struct.aarp_entry*** %3, align 8
  %29 = load %struct.aarp_entry*, %struct.aarp_entry** %28, align 8
  %30 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %29, i32 0, i32 0
  store %struct.aarp_entry** %30, %struct.aarp_entry*** %3, align 8
  br label %31

31:                                               ; preds = %27, %17
  br label %6

32:                                               ; preds = %6
  ret void
}

declare dso_local i32 @__aarp_expire(%struct.aarp_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

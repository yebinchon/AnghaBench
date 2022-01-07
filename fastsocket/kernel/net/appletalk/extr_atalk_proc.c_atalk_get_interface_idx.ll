; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_atalk_proc.c_atalk_get_interface_idx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_atalk_proc.c_atalk_get_interface_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atalk_iface = type { %struct.atalk_iface* }

@atalk_interfaces = common dso_local global %struct.atalk_iface* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.atalk_iface* (i64)* @atalk_get_interface_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.atalk_iface* @atalk_get_interface_idx(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.atalk_iface*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.atalk_iface*, %struct.atalk_iface** @atalk_interfaces, align 8
  store %struct.atalk_iface* %4, %struct.atalk_iface** %3, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load i64, i64* %2, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %10 = icmp ne %struct.atalk_iface* %9, null
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %20

13:                                               ; preds = %11
  %14 = load i64, i64* %2, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %2, align 8
  br label %16

16:                                               ; preds = %13
  %17 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %18 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %17, i32 0, i32 0
  %19 = load %struct.atalk_iface*, %struct.atalk_iface** %18, align 8
  store %struct.atalk_iface* %19, %struct.atalk_iface** %3, align 8
  br label %5

20:                                               ; preds = %11
  %21 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  ret %struct.atalk_iface* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

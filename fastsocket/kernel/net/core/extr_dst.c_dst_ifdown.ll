; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dst.c_dst_ifdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dst.c_dst_ifdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_entry = type { %struct.net_device*, %struct.TYPE_4__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.net_device* }
%struct.TYPE_5__ = type { i32 (%struct.dst_entry*, %struct.net_device*, i32)* }
%struct.net_device = type { i32 }
%struct.TYPE_6__ = type { %struct.net_device* }

@dst_discard = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dst_entry*, %struct.net_device*, i32)* @dst_ifdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dst_ifdown(%struct.dst_entry* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca %struct.dst_entry*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.dst_entry* %0, %struct.dst_entry** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %8 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %7, i32 0, i32 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32 (%struct.dst_entry*, %struct.net_device*, i32)*, i32 (%struct.dst_entry*, %struct.net_device*, i32)** %10, align 8
  %12 = icmp ne i32 (%struct.dst_entry*, %struct.net_device*, i32)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %15 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %14, i32 0, i32 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32 (%struct.dst_entry*, %struct.net_device*, i32)*, i32 (%struct.dst_entry*, %struct.net_device*, i32)** %17, align 8
  %19 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 %18(%struct.dst_entry* %19, %struct.net_device* %20, i32 %21)
  br label %23

23:                                               ; preds = %13, %3
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %26 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %25, i32 0, i32 0
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  %28 = icmp ne %struct.net_device* %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %81

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @dst_discard, align 4
  %35 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %36 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %38 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %37, i32 0, i32 3
  store i32 %34, i32* %38, align 4
  br label %81

39:                                               ; preds = %30
  %40 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %41 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %40, i32 0, i32 0
  %42 = load %struct.net_device*, %struct.net_device** %41, align 8
  %43 = call %struct.TYPE_6__* @dev_net(%struct.net_device* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.net_device*, %struct.net_device** %44, align 8
  %46 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %47 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %46, i32 0, i32 0
  store %struct.net_device* %45, %struct.net_device** %47, align 8
  %48 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %49 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %48, i32 0, i32 0
  %50 = load %struct.net_device*, %struct.net_device** %49, align 8
  %51 = call i32 @dev_hold(%struct.net_device* %50)
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = call i32 @dev_put(%struct.net_device* %52)
  %54 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %55 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %80

58:                                               ; preds = %39
  %59 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %60 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load %struct.net_device*, %struct.net_device** %62, align 8
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = icmp eq %struct.net_device* %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %58
  %67 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %68 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %67, i32 0, i32 0
  %69 = load %struct.net_device*, %struct.net_device** %68, align 8
  %70 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %71 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store %struct.net_device* %69, %struct.net_device** %73, align 8
  %74 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %75 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %74, i32 0, i32 0
  %76 = load %struct.net_device*, %struct.net_device** %75, align 8
  %77 = call i32 @dev_hold(%struct.net_device* %76)
  %78 = load %struct.net_device*, %struct.net_device** %5, align 8
  %79 = call i32 @dev_put(%struct.net_device* %78)
  br label %80

80:                                               ; preds = %66, %58, %39
  br label %81

81:                                               ; preds = %29, %80, %33
  ret void
}

declare dso_local %struct.TYPE_6__* @dev_net(%struct.net_device*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

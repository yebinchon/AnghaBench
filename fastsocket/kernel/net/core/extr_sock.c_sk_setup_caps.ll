; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sk_setup_caps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sk_setup_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32 }
%struct.dst_entry = type { %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NETIF_F_GSO = common dso_local global i32 0, align 4
@NETIF_F_GSO_SOFTWARE = common dso_local global i32 0, align 4
@NETIF_F_GSO_MASK = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sk_setup_caps(%struct.sock* %0, %struct.dst_entry* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.dst_entry*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %4, align 8
  %5 = load %struct.sock*, %struct.sock** %3, align 8
  %6 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %7 = call i32 @__sk_dst_set(%struct.sock* %5, %struct.dst_entry* %6)
  %8 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %9 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sock*, %struct.sock** %3, align 8
  %16 = getelementptr inbounds %struct.sock, %struct.sock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NETIF_F_GSO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @NETIF_F_GSO_SOFTWARE, align 4
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %2
  %28 = load %struct.sock*, %struct.sock** %3, align 8
  %29 = call i64 @sk_can_gso(%struct.sock* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %68

31:                                               ; preds = %27
  %32 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %33 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* @NETIF_F_GSO_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.sock*, %struct.sock** %3, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %67

43:                                               ; preds = %31
  %44 = load i32, i32* @NETIF_F_SG, align 4
  %45 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.sock*, %struct.sock** %3, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %52 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sock*, %struct.sock** %3, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.dst_entry*, %struct.dst_entry** %4, align 8
  %59 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = call %struct.TYPE_5__* @netdev_extended(%struct.TYPE_6__* %60)
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sock*, %struct.sock** %3, align 8
  %65 = call %struct.TYPE_4__* @sk_extended(%struct.sock* %64)
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %43, %36
  br label %68

68:                                               ; preds = %67, %27
  ret void
}

declare dso_local i32 @__sk_dst_set(%struct.sock*, %struct.dst_entry*) #1

declare dso_local i64 @sk_can_gso(%struct.sock*) #1

declare dso_local %struct.TYPE_5__* @netdev_extended(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_4__* @sk_extended(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

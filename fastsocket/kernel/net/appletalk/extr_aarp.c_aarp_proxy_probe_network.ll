; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_aarp.c_aarp_proxy_probe_network.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_aarp.c_aarp_proxy_probe_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aarp_entry = type { i32, i32, %struct.aarp_entry*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.atalk_iface = type { %struct.TYPE_4__* }
%struct.atalk_addr = type { i32, i32 }

@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@ARPHRD_LOCALTLK = common dso_local global i64 0, align 8
@ARPHRD_PPP = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@ATIF_PROBE = common dso_local global i32 0, align 4
@aarp_lock = common dso_local global i32 0, align 4
@AARP_HASH_SIZE = common dso_local global i32 0, align 4
@proxies = common dso_local global %struct.aarp_entry** null, align 8
@AARP_RETRANSMIT_LIMIT = common dso_local global i32 0, align 4
@ATIF_PROBE_FAIL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aarp_proxy_probe_network(%struct.atalk_iface* %0, %struct.atalk_addr* %1) #0 {
  %3 = alloca %struct.atalk_iface*, align 8
  %4 = alloca %struct.atalk_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aarp_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.atalk_iface* %0, %struct.atalk_iface** %3, align 8
  store %struct.atalk_addr* %1, %struct.atalk_addr** %4, align 8
  %9 = load i32, i32* @EPROTONOSUPPORT, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %12 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ARPHRD_LOCALTLK, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %20 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ARPHRD_PPP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18, %2
  br label %123

27:                                               ; preds = %18
  %28 = call %struct.aarp_entry* (...) @aarp_alloc()
  store %struct.aarp_entry* %28, %struct.aarp_entry** %7, align 8
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.aarp_entry*, %struct.aarp_entry** %7, align 8
  %32 = icmp ne %struct.aarp_entry* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %27
  br label %123

34:                                               ; preds = %27
  %35 = load %struct.aarp_entry*, %struct.aarp_entry** %7, align 8
  %36 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %35, i32 0, i32 0
  store i32 -1, i32* %36, align 8
  %37 = load i32, i32* @ATIF_PROBE, align 4
  %38 = load %struct.aarp_entry*, %struct.aarp_entry** %7, align 8
  %39 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.atalk_addr*, %struct.atalk_addr** %4, align 8
  %41 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.aarp_entry*, %struct.aarp_entry** %7, align 8
  %44 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.atalk_addr*, %struct.atalk_addr** %4, align 8
  %47 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.aarp_entry*, %struct.aarp_entry** %7, align 8
  %50 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %53 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load %struct.aarp_entry*, %struct.aarp_entry** %7, align 8
  %56 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %55, i32 0, i32 3
  store %struct.TYPE_4__* %54, %struct.TYPE_4__** %56, align 8
  %57 = call i32 @write_lock_bh(i32* @aarp_lock)
  %58 = load %struct.atalk_addr*, %struct.atalk_addr** %4, align 8
  %59 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AARP_HASH_SIZE, align 4
  %62 = sub nsw i32 %61, 1
  %63 = srem i32 %60, %62
  store i32 %63, i32* %5, align 4
  %64 = load %struct.aarp_entry**, %struct.aarp_entry*** @proxies, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.aarp_entry*, %struct.aarp_entry** %64, i64 %66
  %68 = load %struct.aarp_entry*, %struct.aarp_entry** %67, align 8
  %69 = load %struct.aarp_entry*, %struct.aarp_entry** %7, align 8
  %70 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %69, i32 0, i32 2
  store %struct.aarp_entry* %68, %struct.aarp_entry** %70, align 8
  %71 = load %struct.aarp_entry*, %struct.aarp_entry** %7, align 8
  %72 = load %struct.aarp_entry**, %struct.aarp_entry*** @proxies, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.aarp_entry*, %struct.aarp_entry** %72, i64 %74
  store %struct.aarp_entry* %71, %struct.aarp_entry** %75, align 8
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %97, %34
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @AARP_RETRANSMIT_LIMIT, align 4
  %79 = icmp ult i32 %77, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %76
  %81 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %82 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load %struct.atalk_addr*, %struct.atalk_addr** %4, align 8
  %85 = call i32 @aarp_send_probe(%struct.TYPE_4__* %83, %struct.atalk_addr* %84)
  %86 = call i32 @write_unlock_bh(i32* @aarp_lock)
  %87 = call i32 @msleep(i32 100)
  %88 = call i32 @write_lock_bh(i32* @aarp_lock)
  %89 = load %struct.aarp_entry*, %struct.aarp_entry** %7, align 8
  %90 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @ATIF_PROBE_FAIL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %80
  br label %100

96:                                               ; preds = %80
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %76

100:                                              ; preds = %95, %76
  %101 = load %struct.aarp_entry*, %struct.aarp_entry** %7, align 8
  %102 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @ATIF_PROBE_FAIL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load i32, i32* @jiffies, align 4
  %109 = sub nsw i32 %108, 1
  %110 = load %struct.aarp_entry*, %struct.aarp_entry** %7, align 8
  %111 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @EADDRINUSE, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %121

114:                                              ; preds = %100
  %115 = load i32, i32* @ATIF_PROBE, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.aarp_entry*, %struct.aarp_entry** %7, align 8
  %118 = getelementptr inbounds %struct.aarp_entry, %struct.aarp_entry* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = and i32 %119, %116
  store i32 %120, i32* %118, align 4
  store i32 1, i32* %6, align 4
  br label %121

121:                                              ; preds = %114, %107
  %122 = call i32 @write_unlock_bh(i32* @aarp_lock)
  br label %123

123:                                              ; preds = %121, %33, %26
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local %struct.aarp_entry* @aarp_alloc(...) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @aarp_send_probe(%struct.TYPE_4__*, %struct.atalk_addr*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

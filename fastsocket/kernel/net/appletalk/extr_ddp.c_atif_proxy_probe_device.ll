; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atif_proxy_probe_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atif_proxy_probe_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atalk_iface = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.atalk_addr = type { i32, i32 }

@ATADDR_ANYNODE = common dso_local global i32 0, align 4
@ATADDR_ANYNET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atalk_iface*, %struct.atalk_addr*)* @atif_proxy_probe_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atif_proxy_probe_device(%struct.atalk_iface* %0, %struct.atalk_addr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atalk_iface*, align 8
  %5 = alloca %struct.atalk_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.atalk_iface* %0, %struct.atalk_iface** %4, align 8
  store %struct.atalk_addr* %1, %struct.atalk_addr** %5, align 8
  %12 = load %struct.atalk_iface*, %struct.atalk_iface** %4, align 8
  %13 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ntohs(i32 %15)
  %17 = load %struct.atalk_iface*, %struct.atalk_iface** %4, align 8
  %18 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohs(i32 %20)
  %22 = sub nsw i32 %16, %21
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load %struct.atalk_iface*, %struct.atalk_iface** %4, align 8
  %25 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohs(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* @ATADDR_ANYNODE, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ATADDR_ANYNET, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %2
  %34 = load %struct.atalk_iface*, %struct.atalk_iface** %4, align 8
  %35 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohs(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i32, i32* @jiffies, align 4
  %43 = load i32, i32* %6, align 4
  %44 = srem i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %41, %33
  br label %48

48:                                               ; preds = %47, %2
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @ATADDR_ANYNODE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @jiffies, align 4
  %54 = and i32 %53, 255
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %48
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %116, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %119

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @htons(i32 %61)
  %63 = load %struct.atalk_addr*, %struct.atalk_addr** %5, align 8
  %64 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %96, %60
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 256
  br i1 %67, label %68, label %99

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %69, %70
  %72 = and i32 %71, 255
  %73 = load %struct.atalk_addr*, %struct.atalk_addr** %5, align 8
  %74 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.atalk_addr*, %struct.atalk_addr** %5, align 8
  %76 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %68
  %80 = load %struct.atalk_addr*, %struct.atalk_addr** %5, align 8
  %81 = getelementptr inbounds %struct.atalk_addr, %struct.atalk_addr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %82, 254
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load %struct.atalk_iface*, %struct.atalk_iface** %4, align 8
  %86 = load %struct.atalk_addr*, %struct.atalk_addr** %5, align 8
  %87 = call i32 @aarp_proxy_probe_network(%struct.atalk_iface* %85, %struct.atalk_addr* %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* @EADDRINUSE, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %3, align 4
  br label %122

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %94, %79, %68
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %65

99:                                               ; preds = %65
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.atalk_iface*, %struct.atalk_iface** %4, align 8
  %104 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ntohs(i32 %106)
  %108 = icmp sgt i32 %102, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %99
  %110 = load %struct.atalk_iface*, %struct.atalk_iface** %4, align 8
  %111 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ntohs(i32 %113)
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %109, %99
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %9, align 4
  br label %56

119:                                              ; preds = %56
  %120 = load i32, i32* @EADDRINUSE, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %119, %92
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @aarp_proxy_probe_network(%struct.atalk_iface*, %struct.atalk_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

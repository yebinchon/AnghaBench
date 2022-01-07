; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atif_probe_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/appletalk/extr_ddp.c_atif_probe_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atalk_iface = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ATADDR_ANYNET = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@ATADDR_ANYNODE = common dso_local global i32 0, align 4
@ATIF_PROBE = common dso_local global i32 0, align 4
@ATIF_PROBE_FAIL = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atalk_iface*)* @atif_probe_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atif_probe_device(%struct.atalk_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atalk_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.atalk_iface* %0, %struct.atalk_iface** %3, align 8
  %9 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %10 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ntohs(i32 %12)
  %14 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %15 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntohs(i32 %17)
  %19 = sub nsw i32 %13, %18
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  %21 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %22 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohs(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %27 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ATADDR_ANYNET, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %1
  %34 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %35 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohs(i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33
  %42 = load i32, i32* @jiffies, align 4
  %43 = load i32, i32* %4, align 4
  %44 = srem i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %41, %33
  br label %48

48:                                               ; preds = %47, %1
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @ATADDR_ANYNODE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @jiffies, align 4
  %54 = and i32 %53, 255
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %52, %48
  %56 = load i32, i32* @ATIF_PROBE, align 4
  %57 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %58 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %137, %55
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp sle i32 %62, %63
  br i1 %64, label %65, label %140

65:                                               ; preds = %61
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @htons(i32 %66)
  %68 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %69 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %117, %65
  %72 = load i32, i32* %8, align 4
  %73 = icmp slt i32 %72, 256
  br i1 %73, label %74, label %120

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %6, align 4
  %77 = add nsw i32 %75, %76
  %78 = and i32 %77, 255
  %79 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %80 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %83 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %110

87:                                               ; preds = %74
  %88 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %89 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %91, 254
  br i1 %92, label %93, label %110

93:                                               ; preds = %87
  %94 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %95 = call i32 @aarp_probe_network(%struct.atalk_iface* %94)
  %96 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %97 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ATIF_PROBE_FAIL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %109, label %102

102:                                              ; preds = %93
  %103 = load i32, i32* @ATIF_PROBE, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %106 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 4
  store i32 0, i32* %2, align 4
  br label %149

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109, %87, %74
  %111 = load i32, i32* @ATIF_PROBE_FAIL, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %114 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %110
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  br label %71

120:                                              ; preds = %71
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %125 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @ntohs(i32 %127)
  %129 = icmp sgt i32 %123, %128
  br i1 %129, label %130, label %136

130:                                              ; preds = %120
  %131 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %132 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ntohs(i32 %134)
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %130, %120
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %7, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %61

140:                                              ; preds = %61
  %141 = load i32, i32* @ATIF_PROBE, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.atalk_iface*, %struct.atalk_iface** %3, align 8
  %144 = getelementptr inbounds %struct.atalk_iface, %struct.atalk_iface* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* @EADDRINUSE, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %140, %102
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @aarp_probe_network(%struct.atalk_iface*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

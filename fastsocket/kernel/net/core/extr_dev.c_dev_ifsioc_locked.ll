; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_ifsioc_locked.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c_dev_ifsioc_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ifreq = type { i16, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.ifreq*, i32)* @dev_ifsioc_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_ifsioc_locked(%struct.net* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net*, %struct.net** %5, align 8
  %11 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %12 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net_device* @__dev_get_by_name(%struct.net* %10, i32 %13)
  store %struct.net_device* %14, %struct.net_device** %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %9, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %127

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %121 [
    i32 135, label %22
    i32 131, label %28
    i32 130, label %31
    i32 134, label %37
    i32 129, label %69
    i32 132, label %72
    i32 133, label %109
    i32 128, label %115
  ]

22:                                               ; preds = %20
  %23 = load %struct.net_device*, %struct.net_device** %9, align 8
  %24 = call i64 @dev_get_flags(%struct.net_device* %23)
  %25 = trunc i64 %24 to i16
  %26 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %26, i32 0, i32 0
  store i16 %25, i16* %27, align 4
  store i32 0, i32* %4, align 4
  br label %127

28:                                               ; preds = %20
  %29 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %30 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %29, i32 0, i32 6
  store i32 0, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %127

31:                                               ; preds = %20
  %32 = load %struct.net_device*, %struct.net_device** %9, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %36 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %127

37:                                               ; preds = %20
  %38 = load %struct.net_device*, %struct.net_device** %9, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %44 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @memset(i32 %46, i32 0, i32 4)
  br label %62

48:                                               ; preds = %37
  %49 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %50 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.net_device*, %struct.net_device** %9, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.net_device*, %struct.net_device** %9, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = call i32 @min(i32 4, i64 %59)
  %61 = call i32 @memcpy(i32 %52, i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %48, %42
  %63 = load %struct.net_device*, %struct.net_device** %9, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %67 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  store i32 0, i32* %4, align 4
  br label %127

69:                                               ; preds = %20
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %125

72:                                               ; preds = %20
  %73 = load %struct.net_device*, %struct.net_device** %9, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %77 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  store i32 %75, i32* %78, align 4
  %79 = load %struct.net_device*, %struct.net_device** %9, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %83 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 4
  store i32 %81, i32* %84, align 4
  %85 = load %struct.net_device*, %struct.net_device** %9, align 8
  %86 = getelementptr inbounds %struct.net_device, %struct.net_device* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %89 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  %91 = load %struct.net_device*, %struct.net_device** %9, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %95 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 4
  %97 = load %struct.net_device*, %struct.net_device** %9, align 8
  %98 = getelementptr inbounds %struct.net_device, %struct.net_device* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %101 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.net_device*, %struct.net_device** %9, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %107 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 4
  store i32 0, i32* %4, align 4
  br label %127

109:                                              ; preds = %20
  %110 = load %struct.net_device*, %struct.net_device** %9, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %114 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %113, i32 0, i32 2
  store i32 %112, i32* %114, align 4
  store i32 0, i32* %4, align 4
  br label %127

115:                                              ; preds = %20
  %116 = load %struct.net_device*, %struct.net_device** %9, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %120 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  store i32 0, i32* %4, align 4
  br label %127

121:                                              ; preds = %20
  %122 = call i32 @WARN_ON(i32 1)
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %121, %69
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %125, %115, %109, %72, %62, %31, %28, %22, %17
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local %struct.net_device* @__dev_get_by_name(%struct.net*, i32) #1

declare dso_local i64 @dev_get_flags(%struct.net_device*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_netdev.c_et131x_set_packet_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_netdev.c_et131x_set_packet_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_16__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_15__ = type { i8*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }

@ET131X_PACKET_TYPE_PROMISCUOUS = common dso_local global i32 0, align 4
@ET131X_PACKET_TYPE_ALL_MULTICAST = common dso_local global i32 0, align 4
@ET131X_PACKET_TYPE_DIRECTED = common dso_local global i32 0, align 4
@ET131X_PACKET_TYPE_BROADCAST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @et131x_set_packet_filter(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca %struct.TYPE_15__, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = call i8* @readl(i32* %15)
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  store i8* %16, i8** %17, align 8
  %18 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %18, i32 0, i32 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = call i8* @readl(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i8* %24, i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @ET131X_PACKET_TYPE_PROMISCUOUS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32, %1
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  br label %101

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ET131X_PACKET_TYPE_ALL_MULTICAST, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  br label %57

50:                                               ; preds = %42
  %51 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %52 = call i32 @SetupDeviceForMulticast(%struct.et131x_adapter* %51)
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %50, %47
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @ET131X_PACKET_TYPE_DIRECTED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %64 = call i32 @SetupDeviceForUnicast(%struct.et131x_adapter* %63)
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %62, %57
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @ET131X_PACKET_TYPE_BROADCAST, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %82

79:                                               ; preds = %69
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  br label %82

82:                                               ; preds = %79, %74
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %86 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %85, i32 0, i32 1
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = call i32 @writel(i8* %84, i32* %90)
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %95 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %94, i32 0, i32 1
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = call i32 @writel(i8* %93, i32* %99)
  br label %101

101:                                              ; preds = %82, %35
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i8* @readl(i32*) #1

declare dso_local i32 @SetupDeviceForMulticast(%struct.et131x_adapter*) #1

declare dso_local i32 @SetupDeviceForUnicast(%struct.et131x_adapter*) #1

declare dso_local i32 @writel(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_nv3GetConfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_nv3GetConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32* }

@nv3Busy = common dso_local global i32 0, align 4
@ShowHideCursor = common dso_local global i32 0, align 4
@LoadStateExt = common dso_local global i32 0, align 4
@UnloadStateExt = common dso_local global i32 0, align 4
@SetStartAddress3 = common dso_local global i32 0, align 4
@nv3SetSurfaces2D = common dso_local global i32 0, align 4
@nv3SetSurfaces3D = common dso_local global i32 0, align 4
@nv3LockUnlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @nv3GetConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv3GetConfig(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 16
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = call i32 @NV_RD32(i32* %6, i32 0)
  %8 = and i32 %7, 32
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %48

10:                                               ; preds = %1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 17
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @NV_RD32(i32* %13, i32 0)
  %15 = and i32 %14, 240
  %16 = icmp eq i32 %15, 32
  br i1 %16, label %17, label %42

17:                                               ; preds = %10
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 17
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @NV_RD32(i32* %20, i32 0)
  %22 = and i32 %21, 15
  %23 = icmp sge i32 %22, 2
  br i1 %23, label %24, label %42

24:                                               ; preds = %17
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 800000, i32* %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 16
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @NV_RD32(i32* %29, i32 0)
  %31 = and i32 %30, 3
  switch i32 %31, label %38 [
    i32 2, label %32
    i32 1, label %35
  ]

32:                                               ; preds = %24
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 4096, i32* %34, align 4
  br label %41

35:                                               ; preds = %24
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  store i32 2048, i32* %37, align 4
  br label %41

38:                                               ; preds = %24
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 8192, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35, %32
  br label %47

42:                                               ; preds = %17, %10
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 1000000, i32* %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 8192, i32* %46, align 4
  br label %47

47:                                               ; preds = %42, %41
  br label %66

48:                                               ; preds = %1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 1000000, i32* %50, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 16
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @NV_RD32(i32* %53, i32 0)
  %55 = and i32 %54, 3
  switch i32 %55, label %62 [
    i32 0, label %56
    i32 2, label %59
  ]

56:                                               ; preds = %48
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i32 8192, i32* %58, align 4
  br label %65

59:                                               ; preds = %48
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 4096, i32* %61, align 4
  br label %65

62:                                               ; preds = %48
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  store i32 2048, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59, %56
  br label %66

66:                                               ; preds = %65, %47
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 15
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @NV_RD32(i32* %69, i32 0)
  %71 = and i32 %70, 64
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 14318, i32 13500
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 13
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 7680
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 14
  store i32* %80, i32** %82, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i32 256, i32* %84, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 4
  store i32 256000, i32* %86, align 8
  %87 = load i32, i32* @nv3Busy, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 12
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @ShowHideCursor, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 11
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @LoadStateExt, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 10
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @UnloadStateExt, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 9
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @SetStartAddress3, align 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 8
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* @nv3SetSurfaces2D, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @nv3SetSurfaces3D, align 4
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @nv3LockUnlock, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 5
  store i32 %108, i32* %110, align 4
  ret void
}

declare dso_local i32 @NV_RD32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

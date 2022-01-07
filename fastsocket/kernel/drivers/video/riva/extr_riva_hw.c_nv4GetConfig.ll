; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_nv4GetConfig.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/riva/extr_riva_hw.c_nv4GetConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32 }

@nv4Busy = common dso_local global i32 0, align 4
@ShowHideCursor = common dso_local global i32 0, align 4
@LoadStateExt = common dso_local global i32 0, align 4
@UnloadStateExt = common dso_local global i32 0, align 4
@SetStartAddress = common dso_local global i32 0, align 4
@nv4SetSurfaces2D = common dso_local global i32 0, align 4
@nv4SetSurfaces3D = common dso_local global i32 0, align 4
@nv4LockUnlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @nv4GetConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv4GetConfig(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 16
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @NV_RD32(i32 %5, i32 0)
  %7 = and i32 %6, 256
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 16
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @NV_RD32(i32 %12, i32 0)
  %14 = ashr i32 %13, 12
  %15 = and i32 %14, 15
  %16 = mul nsw i32 %15, 1024
  %17 = mul nsw i32 %16, 2
  %18 = add nsw i32 %17, 2048
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 16
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @NV_RD32(i32 %24, i32 0)
  %26 = and i32 %25, 3
  switch i32 %26, label %37 [
    i32 0, label %27
    i32 1, label %30
    i32 2, label %33
    i32 3, label %36
  ]

27:                                               ; preds = %21
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 32768, i32* %29, align 8
  br label %40

30:                                               ; preds = %21
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 4096, i32* %32, align 8
  br label %40

33:                                               ; preds = %21
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 8192, i32* %35, align 8
  br label %40

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %21, %36
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 16384, i32* %39, align 8
  br label %40

40:                                               ; preds = %37, %33, %30, %27
  br label %41

41:                                               ; preds = %40, %9
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 16
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @NV_RD32(i32 %44, i32 0)
  %46 = ashr i32 %45, 3
  %47 = and i32 %46, 3
  switch i32 %47, label %51 [
    i32 3, label %48
  ]

48:                                               ; preds = %41
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32 800000, i32* %50, align 4
  br label %54

51:                                               ; preds = %41
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 1000000, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 15
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @NV_RD32(i32 %57, i32 0)
  %59 = and i32 %58, 64
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 14318, i32 13500
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 13
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 15872
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 14
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 3
  store i32 1, i32* %72, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 4
  store i32 350000, i32* %74, align 8
  %75 = load i32, i32* @nv4Busy, align 4
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 12
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @ShowHideCursor, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 11
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @LoadStateExt, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 10
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @UnloadStateExt, align 4
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 9
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @SetStartAddress, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 8
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @nv4SetSurfaces2D, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 7
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @nv4SetSurfaces3D, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @nv4LockUnlock, align 4
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 5
  store i32 %96, i32* %98, align 4
  ret void
}

declare dso_local i32 @NV_RD32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

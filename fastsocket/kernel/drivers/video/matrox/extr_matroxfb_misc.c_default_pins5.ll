; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_misc.c_default_pins5.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/matrox/extr_matroxfb_misc.c_default_pins5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.matrox_fb_info = type { %struct.TYPE_11__, %struct.TYPE_18__, %struct.TYPE_15__ }
%struct.TYPE_11__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_16__ }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.matrox_fb_info*)* @default_pins5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_pins5(%struct.matrox_fb_info* %0) #0 {
  %2 = alloca %struct.matrox_fb_info*, align 8
  store %struct.matrox_fb_info* %0, %struct.matrox_fb_info** %2, align 8
  %3 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %4 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  store i32 600000, i32* %6, align 4
  %7 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  store i32 600000, i32* %10, align 4
  %11 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %12 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32 600000, i32* %14, align 4
  %15 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %16 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  store i32 256000, i32* %18, align 4
  %19 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  store i32 256000, i32* %22, align 4
  %23 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %24 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  store i32 256000, i32* %26, align 4
  %27 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %28 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 1
  store i32 284000, i32* %30, align 4
  %31 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %32 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  store i32 284000, i32* %34, align 4
  %35 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %36 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  store i32 1078595936, i32* %38, align 4
  %39 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %40 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 1
  store i32 44032, i32* %42, align 4
  %43 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %44 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 2
  store i32 9479177, i32* %46, align 4
  %47 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %48 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 4
  store i32 209798699, i32* %50, align 4
  %51 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %52 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 3
  store i32 209798699, i32* %54, align 4
  %55 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %56 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 5
  store i32 -2147483644, i32* %58, align 4
  %59 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %60 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 6
  store i32 16781571, i32* %62, align 4
  %63 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %64 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  store i32 27000, i32* %66, align 4
  %67 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %68 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %72 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %76 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 2
  store i32 1, i32* %78, align 4
  %79 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %2, align 8
  %80 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 7
  store i32 16384, i32* %82, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

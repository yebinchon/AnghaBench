; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_ensure_map_for_zone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_alauda.c_alauda_ensure_map_for_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.TYPE_2__ = type { i32**, i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.us_data*, i32)* @alauda_ensure_map_for_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alauda_ensure_map_for_zone(%struct.us_data* %0, i32 %1) #0 {
  %3 = alloca %struct.us_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  store %struct.us_data* %0, %struct.us_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.us_data*, %struct.us_data** %3, align 8
  %8 = call { i32**, i32** } @MEDIA_INFO(%struct.us_data* %7)
  %9 = bitcast %struct.TYPE_2__* %5 to { i32**, i32** }*
  %10 = getelementptr inbounds { i32**, i32** }, { i32**, i32** }* %9, i32 0, i32 0
  %11 = extractvalue { i32**, i32** } %8, 0
  store i32** %11, i32*** %10, align 8
  %12 = getelementptr inbounds { i32**, i32** }, { i32**, i32** }* %9, i32 0, i32 1
  %13 = extractvalue { i32**, i32** } %8, 1
  store i32** %13, i32*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32*, i32** %15, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %2
  %22 = load %struct.us_data*, %struct.us_data** %3, align 8
  %23 = call { i32**, i32** } @MEDIA_INFO(%struct.us_data* %22)
  %24 = bitcast %struct.TYPE_2__* %6 to { i32**, i32** }*
  %25 = getelementptr inbounds { i32**, i32** }, { i32**, i32** }* %24, i32 0, i32 0
  %26 = extractvalue { i32**, i32** } %23, 0
  store i32** %26, i32*** %25, align 8
  %27 = getelementptr inbounds { i32**, i32** }, { i32**, i32** }* %24, i32 0, i32 1
  %28 = extractvalue { i32**, i32** } %23, 1
  store i32** %28, i32*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %30, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %21, %2
  %37 = load %struct.us_data*, %struct.us_data** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @alauda_read_map(%struct.us_data* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %21
  ret void
}

declare dso_local { i32**, i32** } @MEDIA_INFO(%struct.us_data*) #1

declare dso_local i32 @alauda_read_map(%struct.us_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_position_ok.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/hda/extr_hda_intel.c_azx_position_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.azx = type { i64 }
%struct.azx_dev = type { i32, i32, i32 }

@WALLCLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"hda-intel: zero azx_dev->period_bytes\00", align 1
@bdl_pos_adj = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.azx*, %struct.azx_dev*)* @azx_position_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @azx_position_ok(%struct.azx* %0, %struct.azx_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.azx*, align 8
  %5 = alloca %struct.azx_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.azx* %0, %struct.azx** %4, align 8
  store %struct.azx_dev* %1, %struct.azx_dev** %5, align 8
  %8 = load %struct.azx*, %struct.azx** %4, align 8
  %9 = load i32, i32* @WALLCLK, align 4
  %10 = call i32 @azx_readl(%struct.azx* %8, i32 %9)
  %11 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %12 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %10, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %17 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 2
  %20 = sdiv i32 %19, 3
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %71

23:                                               ; preds = %2
  %24 = load %struct.azx*, %struct.azx** %4, align 8
  %25 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %26 = call i32 @azx_get_position(%struct.azx* %24, %struct.azx_dev* %25, i32 1)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %28 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ONCE(i32 %32, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %71

36:                                               ; preds = %23
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %39 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul nsw i32 %40, 5
  %42 = sdiv i32 %41, 4
  %43 = icmp slt i32 %37, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %47 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = urem i32 %45, %48
  %50 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %51 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = udiv i32 %52, 2
  %54 = icmp ugt i32 %49, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %44
  %56 = load i64*, i64** @bdl_pos_adj, align 8
  %57 = load %struct.azx*, %struct.azx** %4, align 8
  %58 = getelementptr inbounds %struct.azx, %struct.azx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i64, i64* %56, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 0, i32 -1
  store i32 %64, i32* %3, align 4
  br label %71

65:                                               ; preds = %44, %36
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.azx_dev*, %struct.azx_dev** %5, align 8
  %68 = getelementptr inbounds %struct.azx_dev, %struct.azx_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  store i32 1, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %55, %35, %22
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @azx_readl(%struct.azx*, i32) #1

declare dso_local i32 @azx_get_position(%struct.azx*, %struct.azx_dev*, i32) #1

declare dso_local i64 @WARN_ONCE(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

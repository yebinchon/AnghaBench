; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/lx6464es/extr_lx_core.c_lx_level_peaks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/lx6464es/extr_lx_core.c_lx_level_peaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lx6464es = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32* }

@CMD_12_GET_PEAK = common dso_local global i32 0, align 4
@peak_map = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lx_level_peaks(%struct.lx6464es* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.lx6464es*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.lx6464es* %0, %struct.lx6464es** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %17 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %16, i32 0, i32 0
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %109, %4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %112

24:                                               ; preds = %20
  %25 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %26 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %25, i32 0, i32 1
  %27 = load i32, i32* @CMD_12_GET_PEAK, align 4
  %28 = call i32 @lx_message_init(%struct.TYPE_3__* %26, i32 %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @PIPE_INFO_TO_CMD(i32 %29, i32 %30)
  %32 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %33 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %31
  store i32 %38, i32* %36, align 4
  %39 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %40 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %41 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %40, i32 0, i32 1
  %42 = call i32 @lx_message_send_atomic(%struct.lx6464es* %39, %struct.TYPE_3__* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %93

45:                                               ; preds = %24
  %46 = load i64*, i64** @peak_map, align 8
  %47 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %48 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 15
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %46, i64 %54
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %12, align 8
  %57 = load i64*, i64** @peak_map, align 8
  %58 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %59 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = ashr i32 %63, 4
  %65 = and i32 %64, 15
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %57, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %13, align 8
  %69 = load i64*, i64** @peak_map, align 8
  %70 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %71 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 8
  %77 = and i32 %76, 15
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %69, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %14, align 8
  %81 = load i64*, i64** @peak_map, align 8
  %82 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %83 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = ashr i32 %87, 12
  %89 = and i32 %88, 15
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %81, i64 %90
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %15, align 8
  br label %94

93:                                               ; preds = %24
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %94

94:                                               ; preds = %93, %45
  %95 = load i64, i64* %12, align 8
  %96 = load i64*, i64** %8, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  store i64 %95, i64* %97, align 8
  %98 = load i64, i64* %13, align 8
  %99 = load i64*, i64** %8, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 1
  store i64 %98, i64* %100, align 8
  %101 = load i64, i64* %14, align 8
  %102 = load i64*, i64** %8, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 2
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* %15, align 8
  %105 = load i64*, i64** %8, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 3
  store i64 %104, i64* %106, align 8
  %107 = load i64*, i64** %8, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 4
  store i64* %108, i64** %8, align 8
  br label %109

109:                                              ; preds = %94
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 4
  store i32 %111, i32* %11, align 4
  br label %20

112:                                              ; preds = %20
  %113 = load %struct.lx6464es*, %struct.lx6464es** %5, align 8
  %114 = getelementptr inbounds %struct.lx6464es, %struct.lx6464es* %113, i32 0, i32 0
  %115 = load i64, i64* %10, align 8
  %116 = call i32 @spin_unlock_irqrestore(i32* %114, i64 %115)
  %117 = load i32, i32* %9, align 4
  ret i32 %117
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lx_message_init(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @PIPE_INFO_TO_CMD(i32, i32) #1

declare dso_local i32 @lx_message_send_atomic(%struct.lx6464es*, %struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_set_tx_power_per_channel_al7230.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_reg.c_set_tx_power_per_channel_al7230.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_data = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_tx_power_per_channel_al7230(%struct.hw_data* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca %struct.hw_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_5__* %3 to i64*
  store i64 %1, i64* %7, align 4
  store %struct.hw_data* %0, %struct.hw_data** %4, align 8
  store i32 100, i32* %6, align 4
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %73 [
    i32 130, label %10
    i32 129, label %10
    i32 128, label %32
  ]

10:                                               ; preds = %2, %2
  %11 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %12 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %13, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 255
  br i1 %20, label %21, label %31

21:                                               ; preds = %10
  %22 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %23 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %21, %10
  br label %73

32:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %69, %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 35
  br i1 %35, label %36, label %72

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %40 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %38, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %36
  %49 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %50 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 255
  br i1 %57, label %58, label %67

58:                                               ; preds = %48
  %59 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %60 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %58, %48
  br label %72

68:                                               ; preds = %36
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %33

72:                                               ; preds = %67, %33
  br label %73

73:                                               ; preds = %2, %72, %31
  %74 = load %struct.hw_data*, %struct.hw_data** %4, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @RFSynthesizer_SetPowerIndex(%struct.hw_data* %74, i32 %75)
  ret void
}

declare dso_local i32 @RFSynthesizer_SetPowerIndex(%struct.hw_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

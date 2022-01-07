; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_set_base_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_set_base_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32)* @set_base_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_base_frame(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = call i64 @idle(%struct.TYPE_13__* %8)
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %16 = call i32 @aec_stop(%struct.TYPE_13__* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %26, %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 10
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = call i64 @idle(%struct.TYPE_13__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %29

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %17

29:                                               ; preds = %24, %17
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35, %29
  store i32 -1, i32* %3, align 4
  br label %108

42:                                               ; preds = %35
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 32
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  switch i32 %49, label %53 [
    i32 30, label %50
    i32 20, label %51
    i32 10, label %52
  ]

50:                                               ; preds = %48
  store i16 2032, i16* %6, align 2
  br label %54

51:                                               ; preds = %48
  store i16 1952, i16* %6, align 2
  br label %54

52:                                               ; preds = %48
  store i16 1872, i16* %6, align 2
  br label %54

53:                                               ; preds = %48
  store i32 -1, i32* %3, align 4
  br label %108

54:                                               ; preds = %52, %51, %50
  br label %61

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 30
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %3, align 4
  br label %108

60:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %108

61:                                               ; preds = %54
  %62 = load i16, i16* %6, align 2
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = call i64 @ixj_WriteDSPCommand(i16 zeroext %62, %struct.TYPE_13__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  store i32 255, i32* %69, align 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i32 255, i32* %72, align 4
  store i32 -1, i32* %3, align 4
  br label %108

73:                                               ; preds = %61
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  store i32 %84, i32* %87, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %73
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 -1, i32* %3, align 4
  br label %108

100:                                              ; preds = %93, %73
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ixj_aec_start(%struct.TYPE_13__* %102, i32 %105)
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %101, %99, %66, %60, %58, %53, %41
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i64 @idle(%struct.TYPE_13__*) #1

declare dso_local i32 @aec_stop(%struct.TYPE_13__*) #1

declare dso_local i64 @ixj_WriteDSPCommand(i16 zeroext, %struct.TYPE_13__*) #1

declare dso_local i32 @ixj_aec_start(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

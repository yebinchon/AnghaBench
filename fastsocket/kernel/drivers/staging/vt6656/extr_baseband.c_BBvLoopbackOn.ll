; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_baseband.c_BBvLoopbackOn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_baseband.c_BBvLoopbackOn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64, i32 }

@MESSAGE_REQUEST_BBREG = common dso_local global i32 0, align 4
@RATE_11M = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BBvLoopbackOn(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = call i32 @ControlvReadByte(%struct.TYPE_5__* %4, i32 %5, i32 201, i32* %7)
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %11 = call i32 @ControlvWriteByte(%struct.TYPE_5__* %9, i32 %10, i32 201, i32 0)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = call i32 @ControlvReadByte(%struct.TYPE_5__* %12, i32 %13, i32 77, i32* %15)
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %18 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %19 = call i32 @ControlvWriteByte(%struct.TYPE_5__* %17, i32 %18, i32 77, i32 144)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = call i32 @ControlvReadByte(%struct.TYPE_5__* %20, i32 %21, i32 136, i32* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RATE_11M, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %33 = call i32 @ControlvReadByte(%struct.TYPE_5__* %31, i32 %32, i32 33, i32* %3)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, 1
  %38 = call i32 @ControlvWriteByte(%struct.TYPE_5__* %34, i32 %35, i32 33, i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %40 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %41 = call i32 @ControlvWriteByte(%struct.TYPE_5__* %39, i32 %40, i32 154, i32 0)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %43 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %44 = call i32 @ControlvWriteByte(%struct.TYPE_5__* %42, i32 %43, i32 136, i32 2)
  br label %60

45:                                               ; preds = %1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %48 = call i32 @ControlvReadByte(%struct.TYPE_5__* %46, i32 %47, i32 154, i32* %3)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %50 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, 1
  %53 = call i32 @ControlvWriteByte(%struct.TYPE_5__* %49, i32 %50, i32 154, i32 %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %56 = call i32 @ControlvWriteByte(%struct.TYPE_5__* %54, i32 %55, i32 33, i32 0)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %59 = call i32 @ControlvWriteByte(%struct.TYPE_5__* %57, i32 %58, i32 136, i32 3)
  br label %60

60:                                               ; preds = %45, %30
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %63 = call i32 @ControlvWriteByte(%struct.TYPE_5__* %61, i32 %62, i32 14, i32 0)
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  %68 = call i32 @ControlvReadByte(%struct.TYPE_5__* %64, i32 %65, i32 9, i32* %67)
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %70 = load i32, i32* @MESSAGE_REQUEST_BBREG, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, 222
  %75 = call i32 @ControlvWriteByte(%struct.TYPE_5__* %69, i32 %70, i32 9, i32 %74)
  ret void
}

declare dso_local i32 @ControlvReadByte(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @ControlvWriteByte(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

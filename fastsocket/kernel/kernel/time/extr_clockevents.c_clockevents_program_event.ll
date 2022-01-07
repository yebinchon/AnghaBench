; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_clockevents.c_clockevents_program_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/time/extr_clockevents.c_clockevents_program_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i64, i64, i64, i64, i64, i32 (i64, %struct.clock_event_device*)*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ETIME = common dso_local global i32 0, align 4
@CLOCK_EVT_MODE_SHUTDOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clockevents_program_event(%struct.clock_event_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca %struct.clock_event_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i64 %1, i64* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store i64 %2, i64* %11, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = call i32 @WARN_ON_ONCE(i32 1)
  %20 = load i32, i32* @ETIME, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %82

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @ktime_sub(i64 %24, i64 %26)
  %28 = call i64 @ktime_to_ns(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ule i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @ETIME, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %82

34:                                               ; preds = %22
  %35 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %36 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %35, i32 0, i32 6
  %37 = bitcast %struct.TYPE_6__* %36 to i8*
  %38 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 8, i1 false)
  %39 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %40 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CLOCK_EVT_MODE_SHUTDOWN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %82

45:                                               ; preds = %34
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %48 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ugt i64 %46, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %53 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %9, align 8
  br label %55

55:                                               ; preds = %51, %45
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %58 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ult i64 %56, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %63 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %68 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = mul i64 %66, %69
  store i64 %70, i64* %8, align 8
  %71 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %72 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = lshr i64 %74, %73
  store i64 %75, i64* %8, align 8
  %76 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %77 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %76, i32 0, i32 5
  %78 = load i32 (i64, %struct.clock_event_device*)*, i32 (i64, %struct.clock_event_device*)** %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.clock_event_device*, %struct.clock_event_device** %7, align 8
  %81 = call i32 %78(i64 %79, %struct.clock_event_device* %80)
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %65, %44, %31, %18
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

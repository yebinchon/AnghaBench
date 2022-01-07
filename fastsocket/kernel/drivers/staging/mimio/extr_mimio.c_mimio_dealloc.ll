; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/mimio/extr_mimio.c_mimio_dealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/mimio/extr_mimio.c_mimio_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mimio = type { %struct.TYPE_7__*, %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [61 x i8] c"mimio->idev->grab == NULL -- didn't call input_close_device\0A\00", align 1
@MIMIO_MAXPAYLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mimio*)* @mimio_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mimio_dealloc(%struct.mimio* %0) #0 {
  %2 = alloca %struct.mimio*, align 8
  store %struct.mimio* %0, %struct.mimio** %2, align 8
  %3 = load %struct.mimio*, %struct.mimio** %2, align 8
  %4 = icmp eq %struct.mimio* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %109

6:                                                ; preds = %1
  %7 = load %struct.mimio*, %struct.mimio** %2, align 8
  %8 = getelementptr inbounds %struct.mimio, %struct.mimio* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @usb_kill_urb(i32 %10)
  %12 = load %struct.mimio*, %struct.mimio** %2, align 8
  %13 = getelementptr inbounds %struct.mimio, %struct.mimio* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @usb_kill_urb(i32 %15)
  %17 = load %struct.mimio*, %struct.mimio** %2, align 8
  %18 = getelementptr inbounds %struct.mimio, %struct.mimio* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = icmp ne %struct.TYPE_7__* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %6
  %22 = load %struct.mimio*, %struct.mimio** %2, align 8
  %23 = getelementptr inbounds %struct.mimio, %struct.mimio* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = call i32 @input_unregister_device(%struct.TYPE_7__* %24)
  %26 = load %struct.mimio*, %struct.mimio** %2, align 8
  %27 = getelementptr inbounds %struct.mimio, %struct.mimio* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21
  %33 = load %struct.mimio*, %struct.mimio** %2, align 8
  %34 = getelementptr inbounds %struct.mimio, %struct.mimio* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @input_close_device(i64 %37)
  br label %45

39:                                               ; preds = %21
  %40 = load %struct.mimio*, %struct.mimio** %2, align 8
  %41 = getelementptr inbounds %struct.mimio, %struct.mimio* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %39, %32
  br label %46

46:                                               ; preds = %45, %6
  %47 = load %struct.mimio*, %struct.mimio** %2, align 8
  %48 = getelementptr inbounds %struct.mimio, %struct.mimio* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usb_free_urb(i32 %50)
  %52 = load %struct.mimio*, %struct.mimio** %2, align 8
  %53 = getelementptr inbounds %struct.mimio, %struct.mimio* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @usb_free_urb(i32 %55)
  %57 = load %struct.mimio*, %struct.mimio** %2, align 8
  %58 = getelementptr inbounds %struct.mimio, %struct.mimio* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %46
  %63 = load %struct.mimio*, %struct.mimio** %2, align 8
  %64 = getelementptr inbounds %struct.mimio, %struct.mimio* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @MIMIO_MAXPAYLOAD, align 4
  %67 = load %struct.mimio*, %struct.mimio** %2, align 8
  %68 = getelementptr inbounds %struct.mimio, %struct.mimio* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.mimio*, %struct.mimio** %2, align 8
  %72 = getelementptr inbounds %struct.mimio, %struct.mimio* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @usb_buffer_free(i32 %65, i32 %66, i64 %70, i32 %74)
  br label %76

76:                                               ; preds = %62, %46
  %77 = load %struct.mimio*, %struct.mimio** %2, align 8
  %78 = getelementptr inbounds %struct.mimio, %struct.mimio* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load %struct.mimio*, %struct.mimio** %2, align 8
  %84 = getelementptr inbounds %struct.mimio, %struct.mimio* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @MIMIO_MAXPAYLOAD, align 4
  %87 = load %struct.mimio*, %struct.mimio** %2, align 8
  %88 = getelementptr inbounds %struct.mimio, %struct.mimio* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.mimio*, %struct.mimio** %2, align 8
  %92 = getelementptr inbounds %struct.mimio, %struct.mimio* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @usb_buffer_free(i32 %85, i32 %86, i64 %90, i32 %94)
  br label %96

96:                                               ; preds = %82, %76
  %97 = load %struct.mimio*, %struct.mimio** %2, align 8
  %98 = getelementptr inbounds %struct.mimio, %struct.mimio* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = icmp ne %struct.TYPE_7__* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.mimio*, %struct.mimio** %2, align 8
  %103 = getelementptr inbounds %struct.mimio, %struct.mimio* %102, i32 0, i32 0
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = call i32 @input_free_device(%struct.TYPE_7__* %104)
  br label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.mimio*, %struct.mimio** %2, align 8
  %108 = call i32 @kfree(%struct.mimio* %107)
  br label %109

109:                                              ; preds = %106, %5
  ret void
}

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @input_unregister_device(%struct.TYPE_7__*) #1

declare dso_local i32 @input_close_device(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_buffer_free(i32, i32, i64, i32) #1

declare dso_local i32 @input_free_device(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(%struct.mimio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

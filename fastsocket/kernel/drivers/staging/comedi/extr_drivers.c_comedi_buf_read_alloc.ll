; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_buf_read_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_buf_read_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_async = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_buf_read_alloc(%struct.comedi_async* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_async*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_async* %0, %struct.comedi_async** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %6 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = add i32 %7, %8
  %10 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = sub i32 %9, %12
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %17 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %20 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub i32 %18, %21
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %15, %2
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %26 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = call i32 (...) @smp_rmb()
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @smp_rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

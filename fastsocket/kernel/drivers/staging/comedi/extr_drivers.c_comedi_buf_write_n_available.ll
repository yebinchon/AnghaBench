; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_buf_write_n_available.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_buf_write_n_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_async = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_buf_write_n_available(%struct.comedi_async* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_async*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.comedi_async* %0, %struct.comedi_async** %3, align 8
  %6 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %7 = icmp eq %struct.comedi_async* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

9:                                                ; preds = %1
  %10 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %14 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add i32 %12, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %17, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %24 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bytes_per_sample(i32 %25)
  %27 = urem i32 %22, %26
  %28 = load i32, i32* %5, align 4
  %29 = sub i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = call i32 (...) @smp_mb()
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %9, %8
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @bytes_per_sample(i32) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

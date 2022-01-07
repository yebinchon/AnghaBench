; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_buf_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_buf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_async = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_buf_get(%struct.comedi_async* %0, i16* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_async*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_async* %0, %struct.comedi_async** %4, align 8
  store i16* %1, i16** %5, align 8
  %7 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %8 = call i32 @comedi_buf_read_n_available(%struct.comedi_async* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

13:                                               ; preds = %2
  %14 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %15 = call i32 @comedi_buf_read_alloc(%struct.comedi_async* %14, i32 2)
  %16 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %20 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = inttoptr i64 %22 to i16*
  %24 = load i16, i16* %23, align 2
  %25 = load i16*, i16** %5, align 8
  store i16 %24, i16* %25, align 2
  %26 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %27 = call i32 @comedi_buf_read_free(%struct.comedi_async* %26, i32 2)
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %13, %12
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @comedi_buf_read_n_available(%struct.comedi_async*) #1

declare dso_local i32 @comedi_buf_read_alloc(%struct.comedi_async*, i32) #1

declare dso_local i32 @comedi_buf_read_free(%struct.comedi_async*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

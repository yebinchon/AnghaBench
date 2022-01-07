; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_buf_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_buf_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_async = type { i64, i64, i32 }

@COMEDI_CB_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_buf_put(%struct.comedi_async* %0, i16 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_async*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.comedi_async* %0, %struct.comedi_async** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %8 = call i32 @comedi_buf_write_alloc_strict(%struct.comedi_async* %7, i32 2)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %10, 2
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %14 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  store i32 0, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = load i16, i16* %5, align 2
  %20 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %24 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = inttoptr i64 %26 to i16*
  store i16 %19, i16* %27, align 2
  %28 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %29 = call i32 @comedi_buf_write_free(%struct.comedi_async* %28, i32 2)
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %18, %12
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @comedi_buf_write_alloc_strict(%struct.comedi_async*, i32) #1

declare dso_local i32 @comedi_buf_write_free(%struct.comedi_async*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

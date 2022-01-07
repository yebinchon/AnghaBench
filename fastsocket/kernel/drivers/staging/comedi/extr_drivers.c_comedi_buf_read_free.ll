; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_buf_read_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_buf_read_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_async = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [74 x i8] c"comedi: attempted to read-free more bytes than have been read-allocated.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_buf_read_free(%struct.comedi_async* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_async*, align 8
  %4 = alloca i32, align 4
  store %struct.comedi_async* %0, %struct.comedi_async** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @smp_mb()
  %6 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = add i32 %8, %9
  %11 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %12 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sub i32 %10, %13
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = call i32 @printk(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %22 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %20, %23
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %16, %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %28 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %33 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %37 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %40 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = urem i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

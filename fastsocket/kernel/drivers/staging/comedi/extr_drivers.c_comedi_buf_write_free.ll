; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_buf_write_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_buf_write_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_async = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [76 x i8] c"comedi: attempted to write-free more bytes than have been write-allocated.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_buf_write_free(%struct.comedi_async* %0, i32 %1) #0 {
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
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = call i32 @printk(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %21 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub i32 %19, %22
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %15, %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %27 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %32 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = add i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %36 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %37 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %40 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = sub i32 %38, %41
  %43 = call i32 @comedi_buf_munge(%struct.comedi_async* %35, i32 %42)
  %44 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %45 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %48 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = icmp uge i32 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %24
  %52 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %53 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.comedi_async*, %struct.comedi_async** %3, align 8
  %56 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = urem i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %51, %24
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @comedi_buf_munge(%struct.comedi_async*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

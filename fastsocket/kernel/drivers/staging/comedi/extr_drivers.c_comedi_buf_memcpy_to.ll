; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_buf_memcpy_to.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_buf_memcpy_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_async = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_buf_memcpy_to(%struct.comedi_async* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_async* %0, %struct.comedi_async** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = add i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp uge i32 %16, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %23 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = urem i32 %25, %24
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %21, %4
  br label %28

28:                                               ; preds = %47, %27
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %32, %33
  %35 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %36 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %31
  %40 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %41 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub i32 %42, %43
  store i32 %44, i32* %10, align 4
  br label %47

45:                                               ; preds = %31
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %45, %39
  %48 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %49 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = load i8*, i8** %7, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @memcpy(i64 %53, i8* %54, i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = zext i32 %57 to i64
  %60 = getelementptr i8, i8* %58, i64 %59
  store i8* %60, i8** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %8, align 4
  %63 = sub i32 %62, %61
  store i32 %63, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %28

64:                                               ; preds = %28
  ret void
}

declare dso_local i32 @memcpy(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_recognize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_recognize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_driver = type { i8**, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @comedi_recognize(%struct.comedi_driver* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.comedi_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.comedi_driver* %0, %struct.comedi_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.comedi_driver*, %struct.comedi_driver** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %8, i32 0, i32 0
  %10 = load i8**, i8*** %9, align 8
  store i8** %10, i8*** %7, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %35, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.comedi_driver*, %struct.comedi_driver** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load i8**, i8*** %7, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @strcmp(i8* %19, i8* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i8**, i8*** %7, align 8
  %25 = bitcast i8** %24 to i8*
  store i8* %25, i8** %3, align 8
  br label %39

26:                                               ; preds = %17
  %27 = load i8**, i8*** %7, align 8
  %28 = bitcast i8** %27 to i8*
  %29 = load %struct.comedi_driver*, %struct.comedi_driver** %4, align 8
  %30 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %28, i64 %32
  %34 = bitcast i8* %33 to i8**
  store i8** %34, i8*** %7, align 8
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %11

38:                                               ; preds = %11
  store i8* null, i8** %3, align 8
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

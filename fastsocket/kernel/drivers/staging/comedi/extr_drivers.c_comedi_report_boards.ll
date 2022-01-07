; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_report_boards.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/comedi/extr_drivers.c_comedi_report_boards.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_driver = type { i8*, i8**, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"comedi: valid board names for %s driver are:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_report_boards(%struct.comedi_driver* %0) #0 {
  %2 = alloca %struct.comedi_driver*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  store %struct.comedi_driver* %0, %struct.comedi_driver** %2, align 8
  %5 = load %struct.comedi_driver*, %struct.comedi_driver** %2, align 8
  %6 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = call i32 @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load %struct.comedi_driver*, %struct.comedi_driver** %2, align 8
  %10 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %9, i32 0, i32 1
  %11 = load i8**, i8*** %10, align 8
  store i8** %11, i8*** %4, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %30, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.comedi_driver*, %struct.comedi_driver** %2, align 8
  %15 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %12
  %19 = load i8**, i8*** %4, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i8**, i8*** %4, align 8
  %23 = bitcast i8** %22 to i8*
  %24 = load %struct.comedi_driver*, %struct.comedi_driver** %2, align 8
  %25 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %23, i64 %27
  %29 = bitcast i8* %28 to i8**
  store i8** %29, i8*** %4, align 8
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %12

33:                                               ; preds = %12
  %34 = load %struct.comedi_driver*, %struct.comedi_driver** %2, align 8
  %35 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.comedi_driver*, %struct.comedi_driver** %2, align 8
  %40 = getelementptr inbounds %struct.comedi_driver, %struct.comedi_driver* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @printk(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %38, %33
  ret void
}

declare dso_local i32 @printk(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

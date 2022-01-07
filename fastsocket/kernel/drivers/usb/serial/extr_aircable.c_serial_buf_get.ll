; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_aircable.c_serial_buf_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_aircable.c_serial_buf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.circ_buf = type { i32, i64, i32 }

@AIRCABLE_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.circ_buf*, i8*, i32)* @serial_buf_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_buf_get(%struct.circ_buf* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.circ_buf* %0, %struct.circ_buf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %3, %27
  %10 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %11 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %14 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @AIRCABLE_BUF_SIZE, align 4
  %17 = call i32 @CIRC_CNT_TO_END(i32 %12, i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %9
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %9
  %24 = load i32, i32* %7, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %57

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %30 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %33 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %31, %35
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @memcpy(i8* %28, i64 %36, i32 %37)
  %39 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %40 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* @AIRCABLE_BUF_SIZE, align 4
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %43, %45
  %47 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %48 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %54, %53
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %8, align 4
  br label %9

57:                                               ; preds = %26
  %58 = load i32, i32* %8, align 4
  ret i32 %58
}

declare dso_local i32 @CIRC_CNT_TO_END(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

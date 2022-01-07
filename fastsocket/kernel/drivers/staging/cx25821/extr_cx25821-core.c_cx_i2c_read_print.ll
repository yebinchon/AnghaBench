; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx_i2c_read_print.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx_i2c_read_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx_i2c_read_print(%struct.cx25821_dev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.cx25821_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.cx25821_dev*, %struct.cx25821_dev** %4, align 8
  %10 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @cx25821_i2c_read(i32* %12, i32 %13, i32* %7)
  store i32 %14, i32* %8, align 4
  ret void
}

declare dso_local i32 @cx25821_i2c_read(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

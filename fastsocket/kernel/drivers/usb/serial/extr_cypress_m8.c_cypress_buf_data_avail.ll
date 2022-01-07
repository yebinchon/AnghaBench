; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_cypress_m8.c_cypress_buf_data_avail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/serial/extr_cypress_m8.c_cypress_buf_data_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cypress_buf = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cypress_buf*)* @cypress_buf_data_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_buf_data_avail(%struct.cypress_buf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cypress_buf*, align 8
  store %struct.cypress_buf* %0, %struct.cypress_buf** %3, align 8
  %4 = load %struct.cypress_buf*, %struct.cypress_buf** %3, align 8
  %5 = icmp ne %struct.cypress_buf* %4, null
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = load %struct.cypress_buf*, %struct.cypress_buf** %3, align 8
  %8 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cypress_buf*, %struct.cypress_buf** %3, align 8
  %11 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add i32 %9, %12
  %14 = load %struct.cypress_buf*, %struct.cypress_buf** %3, align 8
  %15 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = sub i32 %13, %16
  %18 = load %struct.cypress_buf*, %struct.cypress_buf** %3, align 8
  %19 = getelementptr inbounds %struct.cypress_buf, %struct.cypress_buf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = urem i32 %17, %20
  store i32 %21, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %6
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

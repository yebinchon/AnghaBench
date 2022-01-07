; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_set_bulk_out_req_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_set_bulk_out_req_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_dev = type { i32 }
%struct.fsg_buffhd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsg_dev*, %struct.fsg_buffhd*, i32)* @set_bulk_out_req_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_bulk_out_req_length(%struct.fsg_dev* %0, %struct.fsg_buffhd* %1, i32 %2) #0 {
  %4 = alloca %struct.fsg_dev*, align 8
  %5 = alloca %struct.fsg_buffhd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fsg_dev* %0, %struct.fsg_dev** %4, align 8
  store %struct.fsg_buffhd* %1, %struct.fsg_buffhd** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %10 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %13 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = urem i32 %11, %14
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ugt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %20 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = sub i32 %21, %22
  %24 = load i32, i32* %6, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %18, %3
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %29 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

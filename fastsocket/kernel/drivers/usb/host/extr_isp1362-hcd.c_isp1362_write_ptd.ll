; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1362-hcd.c_isp1362_write_ptd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp1362-hcd.c_isp1362_write_ptd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1362_hcd = type { i32 }
%struct.isp1362_ep = type { i32, i32, %struct.ptd*, %struct.ptd }
%struct.ptd = type { i32 }
%struct.isp1362_ep_queue = type { i32 }

@PTD_DIR_IN = common dso_local global i64 0, align 8
@PTD_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1362_hcd*, %struct.isp1362_ep*, %struct.isp1362_ep_queue*)* @isp1362_write_ptd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1362_write_ptd(%struct.isp1362_hcd* %0, %struct.isp1362_ep* %1, %struct.isp1362_ep_queue* %2) #0 {
  %4 = alloca %struct.isp1362_hcd*, align 8
  %5 = alloca %struct.isp1362_ep*, align 8
  %6 = alloca %struct.isp1362_ep_queue*, align 8
  %7 = alloca %struct.ptd*, align 8
  %8 = alloca i32, align 4
  store %struct.isp1362_hcd* %0, %struct.isp1362_hcd** %4, align 8
  store %struct.isp1362_ep* %1, %struct.isp1362_ep** %5, align 8
  store %struct.isp1362_ep_queue* %2, %struct.isp1362_ep_queue** %6, align 8
  %9 = load %struct.isp1362_ep*, %struct.isp1362_ep** %5, align 8
  %10 = getelementptr inbounds %struct.isp1362_ep, %struct.isp1362_ep* %9, i32 0, i32 3
  store %struct.ptd* %10, %struct.ptd** %7, align 8
  %11 = load %struct.ptd*, %struct.ptd** %7, align 8
  %12 = call i64 @PTD_GET_DIR(%struct.ptd* %11)
  %13 = load i64, i64* @PTD_DIR_IN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.isp1362_ep*, %struct.isp1362_ep** %5, align 8
  %18 = getelementptr inbounds %struct.isp1362_ep, %struct.isp1362_ep* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  br label %20

20:                                               ; preds = %16, %15
  %21 = phi i32 [ 0, %15 ], [ %19, %16 ]
  store i32 %21, i32* %8, align 4
  %22 = load %struct.isp1362_ep*, %struct.isp1362_ep** %5, align 8
  %23 = getelementptr inbounds %struct.isp1362_ep, %struct.isp1362_ep* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @_BUG_ON(i32 %26)
  %28 = load %struct.ptd*, %struct.ptd** %7, align 8
  %29 = call i32 @prefetch(%struct.ptd* %28)
  %30 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %4, align 8
  %31 = load %struct.ptd*, %struct.ptd** %7, align 8
  %32 = load %struct.isp1362_ep*, %struct.isp1362_ep** %5, align 8
  %33 = getelementptr inbounds %struct.isp1362_ep, %struct.isp1362_ep* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @PTD_HEADER_SIZE, align 4
  %36 = call i32 @isp1362_write_buffer(%struct.isp1362_hcd* %30, %struct.ptd* %31, i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %20
  %40 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %4, align 8
  %41 = load %struct.isp1362_ep*, %struct.isp1362_ep** %5, align 8
  %42 = getelementptr inbounds %struct.isp1362_ep, %struct.isp1362_ep* %41, i32 0, i32 2
  %43 = load %struct.ptd*, %struct.ptd** %42, align 8
  %44 = load %struct.isp1362_ep*, %struct.isp1362_ep** %5, align 8
  %45 = getelementptr inbounds %struct.isp1362_ep, %struct.isp1362_ep* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PTD_HEADER_SIZE, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @isp1362_write_buffer(%struct.isp1362_hcd* %40, %struct.ptd* %43, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %39, %20
  %52 = load %struct.ptd*, %struct.ptd** %7, align 8
  %53 = call i32 @dump_ptd(%struct.ptd* %52)
  %54 = load %struct.ptd*, %struct.ptd** %7, align 8
  %55 = load %struct.isp1362_ep*, %struct.isp1362_ep** %5, align 8
  %56 = getelementptr inbounds %struct.isp1362_ep, %struct.isp1362_ep* %55, i32 0, i32 2
  %57 = load %struct.ptd*, %struct.ptd** %56, align 8
  %58 = call i32 @dump_ptd_out_data(%struct.ptd* %54, %struct.ptd* %57)
  ret void
}

declare dso_local i64 @PTD_GET_DIR(%struct.ptd*) #1

declare dso_local i32 @_BUG_ON(i32) #1

declare dso_local i32 @prefetch(%struct.ptd*) #1

declare dso_local i32 @isp1362_write_buffer(%struct.isp1362_hcd*, %struct.ptd*, i32, i32) #1

declare dso_local i32 @dump_ptd(%struct.ptd*) #1

declare dso_local i32 @dump_ptd_out_data(%struct.ptd*, %struct.ptd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

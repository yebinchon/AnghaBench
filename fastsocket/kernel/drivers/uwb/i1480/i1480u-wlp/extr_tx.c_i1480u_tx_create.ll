; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_tx.c_i1480u_tx_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/i1480/i1480u-wlp/extr_tx.c_i1480u_tx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480u_tx = type { i64, %struct.i1480u_tx*, i32, i32 }
%struct.i1480u = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.sk_buff = type { i64, i32 }

@i1480u_MAX_FRG_SIZE = common dso_local global i32 0, align 4
@i1480u_tx_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i1480u_tx* (%struct.i1480u*, %struct.sk_buff*, i32)* @i1480u_tx_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i1480u_tx* @i1480u_tx_create(%struct.i1480u* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.i1480u_tx*, align 8
  %5 = alloca %struct.i1480u*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_endpoint_descriptor*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.i1480u_tx*, align 8
  %13 = alloca i64, align 8
  store %struct.i1480u* %0, %struct.i1480u** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @i1480u_MAX_FRG_SIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 %15, 4
  %17 = sub i64 %16, 4
  store i64 %17, i64* %13, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.i1480u_tx* @kmalloc(i32 24, i32 %18)
  store %struct.i1480u_tx* %19, %struct.i1480u_tx** %12, align 8
  %20 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  %21 = icmp eq %struct.i1480u_tx* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %128

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = call %struct.i1480u_tx* @usb_alloc_urb(i32 0, i32 %24)
  %26 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  %27 = getelementptr inbounds %struct.i1480u_tx, %struct.i1480u_tx* %26, i32 0, i32 1
  store %struct.i1480u_tx* %25, %struct.i1480u_tx** %27, align 8
  %28 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  %29 = getelementptr inbounds %struct.i1480u_tx, %struct.i1480u_tx* %28, i32 0, i32 1
  %30 = load %struct.i1480u_tx*, %struct.i1480u_tx** %29, align 8
  %31 = icmp eq %struct.i1480u_tx* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %125

33:                                               ; preds = %23
  %34 = load %struct.i1480u*, %struct.i1480u** %5, align 8
  %35 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %34, i32 0, i32 3
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %42, %struct.usb_endpoint_descriptor** %9, align 8
  %43 = load %struct.i1480u*, %struct.i1480u** %5, align 8
  %44 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %9, align 8
  %47 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usb_sndbulkpipe(i32 %45, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %13, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %33
  %56 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @i1480u_tx_create_n(%struct.i1480u_tx* %56, %struct.sk_buff* %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %120

63:                                               ; preds = %55
  %64 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  %65 = getelementptr inbounds %struct.i1480u_tx, %struct.i1480u_tx* %64, i32 0, i32 1
  %66 = load %struct.i1480u_tx*, %struct.i1480u_tx** %65, align 8
  %67 = load %struct.i1480u*, %struct.i1480u** %5, align 8
  %68 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  %72 = getelementptr inbounds %struct.i1480u_tx, %struct.i1480u_tx* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  %75 = getelementptr inbounds %struct.i1480u_tx, %struct.i1480u_tx* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* @i1480u_tx_cb, align 4
  %78 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  %79 = call i32 @usb_fill_bulk_urb(%struct.i1480u_tx* %66, i32 %69, i32 %70, i32 %73, i64 %76, i32 %77, %struct.i1480u_tx* %78)
  br label %105

80:                                               ; preds = %33
  %81 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @i1480u_tx_create_1(%struct.i1480u_tx* %81, %struct.sk_buff* %82, i32 %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %120

88:                                               ; preds = %80
  %89 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  %90 = getelementptr inbounds %struct.i1480u_tx, %struct.i1480u_tx* %89, i32 0, i32 1
  %91 = load %struct.i1480u_tx*, %struct.i1480u_tx** %90, align 8
  %92 = load %struct.i1480u*, %struct.i1480u** %5, align 8
  %93 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %97 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @i1480u_tx_cb, align 4
  %103 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  %104 = call i32 @usb_fill_bulk_urb(%struct.i1480u_tx* %91, i32 %94, i32 %95, i32 %98, i64 %101, i32 %102, %struct.i1480u_tx* %103)
  br label %105

105:                                              ; preds = %88, %63
  %106 = load %struct.i1480u*, %struct.i1480u** %5, align 8
  %107 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %106, i32 0, i32 0
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @spin_lock_irqsave(i32* %107, i64 %108)
  %110 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  %111 = getelementptr inbounds %struct.i1480u_tx, %struct.i1480u_tx* %110, i32 0, i32 2
  %112 = load %struct.i1480u*, %struct.i1480u** %5, align 8
  %113 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %112, i32 0, i32 1
  %114 = call i32 @list_add(i32* %111, i32* %113)
  %115 = load %struct.i1480u*, %struct.i1480u** %5, align 8
  %116 = getelementptr inbounds %struct.i1480u, %struct.i1480u* %115, i32 0, i32 0
  %117 = load i64, i64* %11, align 8
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i64 %117)
  %119 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  store %struct.i1480u_tx* %119, %struct.i1480u_tx** %4, align 8
  br label %129

120:                                              ; preds = %87, %62
  %121 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  %122 = getelementptr inbounds %struct.i1480u_tx, %struct.i1480u_tx* %121, i32 0, i32 1
  %123 = load %struct.i1480u_tx*, %struct.i1480u_tx** %122, align 8
  %124 = call i32 @kfree(%struct.i1480u_tx* %123)
  br label %125

125:                                              ; preds = %120, %32
  %126 = load %struct.i1480u_tx*, %struct.i1480u_tx** %12, align 8
  %127 = call i32 @kfree(%struct.i1480u_tx* %126)
  br label %128

128:                                              ; preds = %125, %22
  store %struct.i1480u_tx* null, %struct.i1480u_tx** %4, align 8
  br label %129

129:                                              ; preds = %128, %105
  %130 = load %struct.i1480u_tx*, %struct.i1480u_tx** %4, align 8
  ret %struct.i1480u_tx* %130
}

declare dso_local %struct.i1480u_tx* @kmalloc(i32, i32) #1

declare dso_local %struct.i1480u_tx* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @i1480u_tx_create_n(%struct.i1480u_tx*, %struct.sk_buff*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.i1480u_tx*, i32, i32, i32, i64, i32, %struct.i1480u_tx*) #1

declare dso_local i32 @i1480u_tx_create_1(%struct.i1480u_tx*, %struct.sk_buff*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.i1480u_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

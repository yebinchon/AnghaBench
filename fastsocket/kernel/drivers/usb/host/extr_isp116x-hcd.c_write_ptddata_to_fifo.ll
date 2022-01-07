; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp116x-hcd.c_write_ptddata_to_fifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_isp116x-hcd.c_write_ptddata_to_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp116x = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp116x*, i8*, i32)* @write_ptddata_to_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_ptddata_to_fifo(%struct.isp116x* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.isp116x*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.isp116x* %0, %struct.isp116x** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = srem i32 %15, 4
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = ptrtoint i32* %17 to i64
  %19 = and i64 %18, 1
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %7, align 8
  %28 = load i32, i32* %26, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %7, align 8
  %31 = load i32, i32* %29, align 4
  %32 = shl i32 %31, 8
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.isp116x*, %struct.isp116x** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @isp116x_raw_write_data16(%struct.isp116x* %35, i32 %36)
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = sub nsw i32 %39, 2
  store i32 %40, i32* %6, align 4
  br label %22

41:                                               ; preds = %22
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load %struct.isp116x*, %struct.isp116x** %4, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @isp116x_write_data16(%struct.isp116x* %45, i32 %47)
  br label %49

49:                                               ; preds = %44, %41
  br label %74

50:                                               ; preds = %3
  br label %51

51:                                               ; preds = %61, %50
  %52 = load i32, i32* %6, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct.isp116x*, %struct.isp116x** %4, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %8, align 8
  %58 = load i32, i32* %56, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = call i32 @isp116x_raw_write_data16(%struct.isp116x* %55, i32 %59)
  br label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %62, 2
  store i32 %63, i32* %6, align 4
  br label %51

64:                                               ; preds = %51
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.isp116x*, %struct.isp116x** %4, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %69, align 4
  %71 = and i32 255, %70
  %72 = call i32 @isp116x_write_data16(%struct.isp116x* %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %64
  br label %74

74:                                               ; preds = %73, %49
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %83

80:                                               ; preds = %77, %74
  %81 = load %struct.isp116x*, %struct.isp116x** %4, align 8
  %82 = call i32 @isp116x_raw_write_data16(%struct.isp116x* %81, i32 0)
  br label %83

83:                                               ; preds = %80, %77
  ret void
}

declare dso_local i32 @isp116x_raw_write_data16(%struct.isp116x*, i32) #1

declare dso_local i32 @isp116x_write_data16(%struct.isp116x*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_qset.c_get_urb_status_from_qtd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/whci/extr_qset.c_get_urb_status_from_qtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64, i64, i32 }

@QTD_STS_HALTED = common dso_local global i32 0, align 4
@QTD_STS_DBE = common dso_local global i32 0, align 4
@ENOSR = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@QTD_STS_BABBLE = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@QTD_STS_RCE = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*, i32)* @get_urb_status_from_qtd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_urb_status_from_qtd(%struct.urb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urb*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @QTD_STS_HALTED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @QTD_STS_DBE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %10
  %16 = load %struct.urb*, %struct.urb** %4, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @usb_pipein(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @ENOSR, align 4
  %23 = sub nsw i32 0, %22
  br label %27

24:                                               ; preds = %15
  %25 = load i32, i32* @ECOMM, align 4
  %26 = sub nsw i32 0, %25
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %23, %21 ], [ %26, %24 ]
  store i32 %28, i32* %3, align 4
  br label %75

29:                                               ; preds = %10
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @QTD_STS_BABBLE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EOVERFLOW, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %75

37:                                               ; preds = %29
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @QTD_STS_RCE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ETIME, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %75

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* @EPIPE, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %75

50:                                               ; preds = %2
  %51 = load %struct.urb*, %struct.urb** %4, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @usb_pipein(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %74

56:                                               ; preds = %50
  %57 = load %struct.urb*, %struct.urb** %4, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load %struct.urb*, %struct.urb** %4, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.urb*, %struct.urb** %4, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %66, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @EREMOTEIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %75

74:                                               ; preds = %63, %56, %50
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %71, %47, %42, %34, %27
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @usb_pipein(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

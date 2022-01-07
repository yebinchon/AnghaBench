; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_ep_aio_read_retry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_inode.c_ep_aio_read_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { %struct.kiocb_priv* }
%struct.kiocb_priv = type { i64, i32, %struct.kiocb_priv*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@EFAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.kiocb*)* @ep_aio_read_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ep_aio_read_retry(%struct.kiocb* %0) #0 {
  %2 = alloca %struct.kiocb*, align 8
  %3 = alloca %struct.kiocb_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.kiocb* %0, %struct.kiocb** %2, align 8
  %9 = load %struct.kiocb*, %struct.kiocb** %2, align 8
  %10 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %9, i32 0, i32 0
  %11 = load %struct.kiocb_priv*, %struct.kiocb_priv** %10, align 8
  store %struct.kiocb_priv* %11, %struct.kiocb_priv** %3, align 8
  %12 = load %struct.kiocb_priv*, %struct.kiocb_priv** %3, align 8
  %13 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  store i64 0, i64* %4, align 8
  %15 = load %struct.kiocb_priv*, %struct.kiocb_priv** %3, align 8
  %16 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %15, i32 0, i32 2
  %17 = load %struct.kiocb_priv*, %struct.kiocb_priv** %16, align 8
  %18 = bitcast %struct.kiocb_priv* %17 to i8*
  store i8* %18, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %69, %1
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.kiocb_priv*, %struct.kiocb_priv** %3, align 8
  %22 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %72

25:                                               ; preds = %19
  %26 = load %struct.kiocb_priv*, %struct.kiocb_priv** %3, align 8
  %27 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @min(i64 %33, i64 %34)
  store i64 %35, i64* %8, align 8
  %36 = load %struct.kiocb_priv*, %struct.kiocb_priv** %3, align 8
  %37 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i64 @copy_to_user(i32 %43, i8* %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %25
  %49 = load i64, i64* %4, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i64, i64* @EFAULT, align 8
  %53 = sub nsw i64 0, %52
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %51, %48
  br label %72

55:                                               ; preds = %25
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %5, align 8
  %58 = sub nsw i64 %57, %56
  store i64 %58, i64* %5, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %4, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %8, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr i8, i8* %63, i64 %62
  store i8* %64, i8** %6, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %72

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %19

72:                                               ; preds = %67, %54, %19
  %73 = load %struct.kiocb_priv*, %struct.kiocb_priv** %3, align 8
  %74 = getelementptr inbounds %struct.kiocb_priv, %struct.kiocb_priv* %73, i32 0, i32 2
  %75 = load %struct.kiocb_priv*, %struct.kiocb_priv** %74, align 8
  %76 = call i32 @kfree(%struct.kiocb_priv* %75)
  %77 = load %struct.kiocb_priv*, %struct.kiocb_priv** %3, align 8
  %78 = call i32 @kfree(%struct.kiocb_priv* %77)
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @copy_to_user(i32, i8*, i64) #1

declare dso_local i32 @kfree(%struct.kiocb_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

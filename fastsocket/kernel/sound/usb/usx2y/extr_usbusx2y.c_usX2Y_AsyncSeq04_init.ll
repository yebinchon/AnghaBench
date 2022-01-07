; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usbusx2y.c_usX2Y_AsyncSeq04_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/usb/usx2y/extr_usbusx2y.c_usX2Y_AsyncSeq04_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usX2Ydev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32** }

@URB_DataLen_AsyncSeq = common dso_local global i32 0, align 4
@URBS_AsyncSeq = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@i_usX2Y_Out04Int = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usX2Y_AsyncSeq04_init(%struct.usX2Ydev* %0) #0 {
  %2 = alloca %struct.usX2Ydev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.usX2Ydev* %0, %struct.usX2Ydev** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @URB_DataLen_AsyncSeq, align 4
  %6 = load i32, i32* @URBS_AsyncSeq, align 4
  %7 = mul nsw i32 %5, %6
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32* @kmalloc(i32 %7, i32 %8)
  %10 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %11 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32* %9, i32** %12, align 8
  %13 = icmp eq i32* null, %9
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %68

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %64, %17
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @URBS_AsyncSeq, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %18
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @usb_alloc_urb(i32 0, i32 %23)
  %25 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %26 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  store i32* %24, i32** %31, align 8
  %32 = icmp eq i32* null, %24
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %67

36:                                               ; preds = %22
  %37 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %38 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %46 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %49 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usb_sndbulkpipe(i32 %50, i32 4)
  %52 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %53 = getelementptr inbounds %struct.usX2Ydev, %struct.usX2Ydev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @URB_DataLen_AsyncSeq, align 4
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* @i_usX2Y_Out04Int, align 4
  %62 = load %struct.usX2Ydev*, %struct.usX2Ydev** %2, align 8
  %63 = call i32 @usb_fill_bulk_urb(i32* %44, i32 %47, i32 %51, i32* %60, i32 0, i32 %61, %struct.usX2Ydev* %62)
  br label %64

64:                                               ; preds = %36
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %18

67:                                               ; preds = %33, %18
  br label %68

68:                                               ; preds = %67, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(i32*, i32, i32, i32*, i32, i32, %struct.usX2Ydev*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

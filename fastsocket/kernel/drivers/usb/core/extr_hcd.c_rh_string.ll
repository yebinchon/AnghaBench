; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_rh_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hcd.c_rh_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i8*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_6__ = type { i8*, i8* }

@rh_string.langids = internal constant [4 x i8] c"\04\80\09\04", align 1
@.str = private unnamed_addr constant [9 x i8] c"%s %s %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.usb_hcd*, i32*, i32)* @rh_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rh_string(i32 %0, %struct.usb_hcd* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hcd*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [100 x i8], align 16
  %11 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.usb_hcd* %1, %struct.usb_hcd** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %46 [
    i32 0, label %13
    i32 1, label %22
    i32 2, label %27
    i32 3, label %31
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ugt i32 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 4, i32* %9, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @memcpy(i32* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @rh_string.langids, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %5, align 4
  br label %52

22:                                               ; preds = %4
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %24 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %11, align 8
  br label %47

27:                                               ; preds = %4
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  br label %47

31:                                               ; preds = %4
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  %33 = call %struct.TYPE_6__* (...) @init_utsname()
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call %struct.TYPE_6__* (...) @init_utsname()
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %40 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %39, i32 0, i32 1
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @snprintf(i8* %32, i32 100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %35, i8* %38, i8* %43)
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %10, i64 0, i64 0
  store i8* %45, i8** %11, align 8
  br label %47

46:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %52

47:                                               ; preds = %31, %27, %22
  %48 = load i8*, i8** %11, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ascii2desc(i8* %48, i32* %49, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %47, %46, %17
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @init_utsname(...) #1

declare dso_local i32 @ascii2desc(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

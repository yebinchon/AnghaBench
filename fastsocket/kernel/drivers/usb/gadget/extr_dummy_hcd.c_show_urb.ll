; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_show_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_dummy_hcd.c_show_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"urb/%p %s ep%d%s%s len %d/%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"ls\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"fs\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"hs\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"-bulk\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"-int\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"-iso\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.urb*)* @show_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_urb(i8* %0, i64 %1, %struct.urb* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.urb* %2, %struct.urb** %6, align 8
  %12 = load %struct.urb*, %struct.urb** %6, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_pipeendpoint(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.urb*, %struct.urb** %6, align 8
  %19 = load %struct.urb*, %struct.urb** %6, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %27 [
    i32 128, label %24
    i32 130, label %25
    i32 129, label %26
  ]

24:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %28

25:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %28

26:                                               ; preds = %3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %28

27:                                               ; preds = %3
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %28

28:                                               ; preds = %27, %26, %25, %24
  %29 = load i8*, i8** %8, align 8
  store i8* %29, i8** %9, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.urb*, %struct.urb** %6, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @usb_pipein(i32 %38)
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  br label %44

43:                                               ; preds = %28
  br label %44

44:                                               ; preds = %43, %35
  %45 = phi i8* [ %42, %35 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), %43 ]
  %46 = load %struct.urb*, %struct.urb** %6, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @usb_pipetype(i32 %48)
  switch i32 %49, label %53 [
    i32 132, label %50
    i32 133, label %51
    i32 131, label %52
  ]

50:                                               ; preds = %44
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0), i8** %10, align 8
  br label %54

51:                                               ; preds = %44
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %10, align 8
  br label %54

52:                                               ; preds = %44
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** %10, align 8
  br label %54

53:                                               ; preds = %44
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8** %10, align 8
  br label %54

54:                                               ; preds = %53, %52, %51, %50
  %55 = load i8*, i8** %10, align 8
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.urb*, %struct.urb** %6, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.urb*, %struct.urb** %6, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @snprintf(i8* %16, i64 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.urb* %18, i32 %31, i32 %32, i8* %45, i32 %57, i32 %60, i32 %63)
  ret i32 %64
}

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, %struct.urb*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i32 @usb_pipetype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

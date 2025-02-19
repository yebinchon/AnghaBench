; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_message.c_sg_clean.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_message.c_sg_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_sg_request = type { i64, %struct.TYPE_4__*, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_sg_request*)* @sg_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sg_clean(%struct.usb_sg_request* %0) #0 {
  %2 = alloca %struct.usb_sg_request*, align 8
  store %struct.usb_sg_request* %0, %struct.usb_sg_request** %2, align 8
  %3 = load %struct.usb_sg_request*, %struct.usb_sg_request** %2, align 8
  %4 = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %3, i32 0, i32 5
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %31

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %14, %7
  %9 = load %struct.usb_sg_request*, %struct.usb_sg_request** %2, align 8
  %10 = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = icmp ne i64 %11, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load %struct.usb_sg_request*, %struct.usb_sg_request** %2, align 8
  %16 = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %15, i32 0, i32 5
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.usb_sg_request*, %struct.usb_sg_request** %2, align 8
  %19 = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @usb_free_urb(i32 %22)
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.usb_sg_request*, %struct.usb_sg_request** %2, align 8
  %26 = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @kfree(i32* %27)
  %29 = load %struct.usb_sg_request*, %struct.usb_sg_request** %2, align 8
  %30 = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %29, i32 0, i32 5
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %24, %1
  %32 = load %struct.usb_sg_request*, %struct.usb_sg_request** %2, align 8
  %33 = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %31
  %40 = load %struct.usb_sg_request*, %struct.usb_sg_request** %2, align 8
  %41 = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load %struct.usb_sg_request*, %struct.usb_sg_request** %2, align 8
  %44 = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @usb_pipein(i32 %45)
  %47 = load %struct.usb_sg_request*, %struct.usb_sg_request** %2, align 8
  %48 = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.usb_sg_request*, %struct.usb_sg_request** %2, align 8
  %51 = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @usb_buffer_unmap_sg(%struct.TYPE_4__* %42, i32 %46, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %39, %31
  %55 = load %struct.usb_sg_request*, %struct.usb_sg_request** %2, align 8
  %56 = getelementptr inbounds %struct.usb_sg_request, %struct.usb_sg_request* %55, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %56, align 8
  ret void
}

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @usb_buffer_unmap_sg(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @usb_pipein(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

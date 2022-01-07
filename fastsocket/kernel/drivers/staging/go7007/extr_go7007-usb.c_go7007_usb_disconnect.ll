; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-usb.c_go7007_usb_disconnect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/go7007/extr_go7007-usb.c_go7007_usb_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.go7007 = type { %struct.go7007_usb*, i32 }
%struct.go7007_usb = type { %struct.urb*, %struct.urb**, %struct.urb** }
%struct.urb = type { %struct.go7007_usb* }

@STATUS_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_interface*)* @go7007_usb_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @go7007_usb_disconnect(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.usb_interface*, align 8
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca %struct.go7007_usb*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %2, align 8
  %8 = load %struct.usb_interface*, %struct.usb_interface** %2, align 8
  %9 = call %struct.go7007* @usb_get_intfdata(%struct.usb_interface* %8)
  store %struct.go7007* %9, %struct.go7007** %3, align 8
  %10 = load %struct.go7007*, %struct.go7007** %3, align 8
  %11 = getelementptr inbounds %struct.go7007, %struct.go7007* %10, i32 0, i32 0
  %12 = load %struct.go7007_usb*, %struct.go7007_usb** %11, align 8
  store %struct.go7007_usb* %12, %struct.go7007_usb** %4, align 8
  %13 = load i32, i32* @STATUS_SHUTDOWN, align 4
  %14 = load %struct.go7007*, %struct.go7007** %3, align 8
  %15 = getelementptr inbounds %struct.go7007, %struct.go7007* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.go7007_usb*, %struct.go7007_usb** %4, align 8
  %17 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %16, i32 0, i32 0
  %18 = load %struct.urb*, %struct.urb** %17, align 8
  %19 = call i32 @usb_kill_urb(%struct.urb* %18)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %74, %1
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %77

23:                                               ; preds = %20
  %24 = load %struct.go7007_usb*, %struct.go7007_usb** %4, align 8
  %25 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %24, i32 0, i32 2
  %26 = load %struct.urb**, %struct.urb*** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.urb*, %struct.urb** %26, i64 %28
  %30 = load %struct.urb*, %struct.urb** %29, align 8
  store %struct.urb* %30, %struct.urb** %5, align 8
  %31 = load %struct.urb*, %struct.urb** %5, align 8
  %32 = icmp ne %struct.urb* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %23
  %34 = load %struct.urb*, %struct.urb** %5, align 8
  %35 = call i32 @usb_kill_urb(%struct.urb* %34)
  %36 = load %struct.urb*, %struct.urb** %5, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 0
  %38 = load %struct.go7007_usb*, %struct.go7007_usb** %37, align 8
  %39 = icmp ne %struct.go7007_usb* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.urb*, %struct.urb** %5, align 8
  %42 = getelementptr inbounds %struct.urb, %struct.urb* %41, i32 0, i32 0
  %43 = load %struct.go7007_usb*, %struct.go7007_usb** %42, align 8
  %44 = call i32 @kfree(%struct.go7007_usb* %43)
  br label %45

45:                                               ; preds = %40, %33
  %46 = load %struct.urb*, %struct.urb** %5, align 8
  %47 = call i32 @usb_free_urb(%struct.urb* %46)
  br label %48

48:                                               ; preds = %45, %23
  %49 = load %struct.go7007_usb*, %struct.go7007_usb** %4, align 8
  %50 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %49, i32 0, i32 1
  %51 = load %struct.urb**, %struct.urb*** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.urb*, %struct.urb** %51, i64 %53
  %55 = load %struct.urb*, %struct.urb** %54, align 8
  store %struct.urb* %55, %struct.urb** %6, align 8
  %56 = load %struct.urb*, %struct.urb** %6, align 8
  %57 = icmp ne %struct.urb* %56, null
  br i1 %57, label %58, label %73

58:                                               ; preds = %48
  %59 = load %struct.urb*, %struct.urb** %6, align 8
  %60 = call i32 @usb_kill_urb(%struct.urb* %59)
  %61 = load %struct.urb*, %struct.urb** %6, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 0
  %63 = load %struct.go7007_usb*, %struct.go7007_usb** %62, align 8
  %64 = icmp ne %struct.go7007_usb* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.urb*, %struct.urb** %6, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 0
  %68 = load %struct.go7007_usb*, %struct.go7007_usb** %67, align 8
  %69 = call i32 @kfree(%struct.go7007_usb* %68)
  br label %70

70:                                               ; preds = %65, %58
  %71 = load %struct.urb*, %struct.urb** %6, align 8
  %72 = call i32 @usb_free_urb(%struct.urb* %71)
  br label %73

73:                                               ; preds = %70, %48
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %7, align 4
  br label %20

77:                                               ; preds = %20
  %78 = load %struct.go7007_usb*, %struct.go7007_usb** %4, align 8
  %79 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %78, i32 0, i32 0
  %80 = load %struct.urb*, %struct.urb** %79, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 0
  %82 = load %struct.go7007_usb*, %struct.go7007_usb** %81, align 8
  %83 = call i32 @kfree(%struct.go7007_usb* %82)
  %84 = load %struct.go7007_usb*, %struct.go7007_usb** %4, align 8
  %85 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %84, i32 0, i32 0
  %86 = load %struct.urb*, %struct.urb** %85, align 8
  %87 = call i32 @usb_free_urb(%struct.urb* %86)
  %88 = load %struct.go7007*, %struct.go7007** %3, align 8
  %89 = getelementptr inbounds %struct.go7007, %struct.go7007* %88, i32 0, i32 0
  %90 = load %struct.go7007_usb*, %struct.go7007_usb** %89, align 8
  %91 = call i32 @kfree(%struct.go7007_usb* %90)
  %92 = load %struct.go7007*, %struct.go7007** %3, align 8
  %93 = call i32 @go7007_remove(%struct.go7007* %92)
  ret void
}

declare dso_local %struct.go7007* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @usb_kill_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.go7007_usb*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @go7007_remove(%struct.go7007*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

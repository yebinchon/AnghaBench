; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_initial_empty_sent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_initial_empty_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.u132_endp = type { i64, %struct.u132* }
%struct.u132 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"device has been removed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"device is being removed urb=%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"CALLBACK called urb=%p unlinked=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @u132_hcd_initial_empty_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_hcd_initial_empty_sent(i8* %0, %struct.urb* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
  %13 = alloca i8*, align 8
  %14 = alloca %struct.urb*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca %struct.u132_endp*, align 8
  %26 = alloca %struct.u132*, align 8
  store i8* %0, i8** %13, align 8
  store %struct.urb* %1, %struct.urb** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i32 %9, i32* %22, align 4
  store i32 %10, i32* %23, align 4
  store i32 %11, i32* %24, align 4
  %27 = load i8*, i8** %13, align 8
  %28 = bitcast i8* %27 to %struct.u132_endp*
  store %struct.u132_endp* %28, %struct.u132_endp** %25, align 8
  %29 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %30 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %29, i32 0, i32 1
  %31 = load %struct.u132*, %struct.u132** %30, align 8
  store %struct.u132* %31, %struct.u132** %26, align 8
  %32 = load %struct.u132*, %struct.u132** %26, align 8
  %33 = getelementptr inbounds %struct.u132, %struct.u132* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.u132*, %struct.u132** %26, align 8
  %36 = getelementptr inbounds %struct.u132, %struct.u132* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sgt i32 %37, 1
  br i1 %38, label %39, label %57

39:                                               ; preds = %12
  %40 = load %struct.u132*, %struct.u132** %26, align 8
  %41 = getelementptr inbounds %struct.u132, %struct.u132* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.u132*, %struct.u132** %26, align 8
  %45 = getelementptr inbounds %struct.u132, %struct.u132* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.u132*, %struct.u132** %26, align 8
  %49 = getelementptr inbounds %struct.u132, %struct.u132* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load %struct.u132*, %struct.u132** %26, align 8
  %52 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %53 = load %struct.urb*, %struct.urb** %14, align 8
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i32 @u132_hcd_forget_urb(%struct.u132* %51, %struct.u132_endp* %52, %struct.urb* %53, i32 %55)
  br label %125

57:                                               ; preds = %12
  %58 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %59 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %57
  %63 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %64 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.u132*, %struct.u132** %26, align 8
  %66 = getelementptr inbounds %struct.u132, %struct.u132* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load %struct.u132*, %struct.u132** %26, align 8
  %69 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %70 = load %struct.urb*, %struct.urb** %14, align 8
  %71 = load i32, i32* @EINTR, align 4
  %72 = sub nsw i32 0, %71
  %73 = call i32 @u132_hcd_giveback_urb(%struct.u132* %68, %struct.u132_endp* %69, %struct.urb* %70, i32 %72)
  br label %125

74:                                               ; preds = %57
  %75 = load %struct.u132*, %struct.u132** %26, align 8
  %76 = getelementptr inbounds %struct.u132, %struct.u132* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %74
  %80 = load %struct.u132*, %struct.u132** %26, align 8
  %81 = getelementptr inbounds %struct.u132, %struct.u132* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load %struct.urb*, %struct.urb** %14, align 8
  %85 = call i32 (i32*, i8*, ...) @dev_err(i32* %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %84)
  %86 = load %struct.u132*, %struct.u132** %26, align 8
  %87 = getelementptr inbounds %struct.u132, %struct.u132* %86, i32 0, i32 1
  %88 = call i32 @mutex_unlock(i32* %87)
  %89 = load %struct.u132*, %struct.u132** %26, align 8
  %90 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %91 = load %struct.urb*, %struct.urb** %14, align 8
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  %94 = call i32 @u132_hcd_giveback_urb(%struct.u132* %89, %struct.u132_endp* %90, %struct.urb* %91, i32 %93)
  br label %125

95:                                               ; preds = %74
  %96 = load %struct.urb*, %struct.urb** %14, align 8
  %97 = getelementptr inbounds %struct.urb, %struct.urb* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %95
  %101 = load %struct.u132*, %struct.u132** %26, align 8
  %102 = getelementptr inbounds %struct.u132, %struct.u132* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.u132*, %struct.u132** %26, align 8
  %105 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %106 = load %struct.urb*, %struct.urb** %14, align 8
  %107 = call i32 @u132_hcd_giveback_urb(%struct.u132* %104, %struct.u132_endp* %105, %struct.urb* %106, i32 0)
  br label %125

108:                                              ; preds = %95
  %109 = load %struct.u132*, %struct.u132** %26, align 8
  %110 = getelementptr inbounds %struct.u132, %struct.u132* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load %struct.urb*, %struct.urb** %14, align 8
  %114 = load %struct.urb*, %struct.urb** %14, align 8
  %115 = getelementptr inbounds %struct.urb, %struct.urb* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i32*, i8*, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %113, i32 %116)
  %118 = load %struct.u132*, %struct.u132** %26, align 8
  %119 = getelementptr inbounds %struct.u132, %struct.u132* %118, i32 0, i32 1
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load %struct.u132*, %struct.u132** %26, align 8
  %122 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %123 = load %struct.urb*, %struct.urb** %14, align 8
  %124 = call i32 @u132_hcd_giveback_urb(%struct.u132* %121, %struct.u132_endp* %122, %struct.urb* %123, i32 0)
  br label %125

125:                                              ; preds = %108, %100, %79, %62, %39
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @u132_hcd_forget_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

declare dso_local i32 @u132_hcd_giveback_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

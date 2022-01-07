; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_initial_setup_sent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_initial_setup_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.u132_endp = type { i64, i32, %struct.u132_ring*, i64, %struct.u132* }
%struct.u132_ring = type { i32 }
%struct.u132 = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"device has been removed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"device is being removed urb=%p\0A\00", align 1
@u132_hcd_initial_input_recv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"CALLBACK called urb=%p unlinked=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @u132_hcd_initial_setup_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_hcd_initial_setup_sent(i8* %0, %struct.urb* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
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
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.u132_ring*, align 8
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
  %30 = load i8*, i8** %13, align 8
  %31 = bitcast i8* %30 to %struct.u132_endp*
  store %struct.u132_endp* %31, %struct.u132_endp** %25, align 8
  %32 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %33 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %32, i32 0, i32 4
  %34 = load %struct.u132*, %struct.u132** %33, align 8
  store %struct.u132* %34, %struct.u132** %26, align 8
  %35 = load %struct.u132*, %struct.u132** %26, align 8
  %36 = getelementptr inbounds %struct.u132, %struct.u132* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %39 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %27, align 4
  %44 = load %struct.u132*, %struct.u132** %26, align 8
  %45 = getelementptr inbounds %struct.u132, %struct.u132* %44, i32 0, i32 1
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.u132*, %struct.u132** %26, align 8
  %48 = getelementptr inbounds %struct.u132, %struct.u132* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %69

51:                                               ; preds = %12
  %52 = load %struct.u132*, %struct.u132** %26, align 8
  %53 = getelementptr inbounds %struct.u132, %struct.u132* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.u132*, %struct.u132** %26, align 8
  %57 = getelementptr inbounds %struct.u132, %struct.u132* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (i32*, i8*, ...) @dev_err(i32* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.u132*, %struct.u132** %26, align 8
  %61 = getelementptr inbounds %struct.u132, %struct.u132* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load %struct.u132*, %struct.u132** %26, align 8
  %64 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %65 = load %struct.urb*, %struct.urb** %14, align 8
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i32 @u132_hcd_forget_urb(%struct.u132* %63, %struct.u132_endp* %64, %struct.urb* %65, i32 %67)
  br label %159

69:                                               ; preds = %12
  %70 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %71 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %76 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  %77 = load %struct.u132*, %struct.u132** %26, align 8
  %78 = getelementptr inbounds %struct.u132, %struct.u132* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.u132*, %struct.u132** %26, align 8
  %81 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %82 = load %struct.urb*, %struct.urb** %14, align 8
  %83 = load i32, i32* @EINTR, align 4
  %84 = sub nsw i32 0, %83
  %85 = call i32 @u132_hcd_giveback_urb(%struct.u132* %80, %struct.u132_endp* %81, %struct.urb* %82, i32 %84)
  br label %159

86:                                               ; preds = %69
  %87 = load %struct.u132*, %struct.u132** %26, align 8
  %88 = getelementptr inbounds %struct.u132, %struct.u132* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = load %struct.u132*, %struct.u132** %26, align 8
  %93 = getelementptr inbounds %struct.u132, %struct.u132* %92, i32 0, i32 2
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.urb*, %struct.urb** %14, align 8
  %97 = call i32 (i32*, i8*, ...) @dev_err(i32* %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %96)
  %98 = load %struct.u132*, %struct.u132** %26, align 8
  %99 = getelementptr inbounds %struct.u132, %struct.u132* %98, i32 0, i32 1
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load %struct.u132*, %struct.u132** %26, align 8
  %102 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %103 = load %struct.urb*, %struct.urb** %14, align 8
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  %106 = call i32 @u132_hcd_giveback_urb(%struct.u132* %101, %struct.u132_endp* %102, %struct.urb* %103, i32 %105)
  br label %159

107:                                              ; preds = %86
  %108 = load %struct.urb*, %struct.urb** %14, align 8
  %109 = getelementptr inbounds %struct.urb, %struct.urb* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %142, label %112

112:                                              ; preds = %107
  %113 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %114 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %113, i32 0, i32 2
  %115 = load %struct.u132_ring*, %struct.u132_ring** %114, align 8
  store %struct.u132_ring* %115, %struct.u132_ring** %29, align 8
  %116 = load %struct.u132*, %struct.u132** %26, align 8
  %117 = getelementptr inbounds %struct.u132, %struct.u132* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load %struct.u132*, %struct.u132** %26, align 8
  %120 = getelementptr inbounds %struct.u132, %struct.u132* %119, i32 0, i32 2
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = load %struct.u132_ring*, %struct.u132_ring** %29, align 8
  %123 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %126 = load %struct.urb*, %struct.urb** %14, align 8
  %127 = load i32, i32* %27, align 4
  %128 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %129 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @u132_hcd_initial_input_recv, align 4
  %132 = call i32 @usb_ftdi_elan_edset_input(%struct.TYPE_4__* %121, i32 %124, %struct.u132_endp* %125, %struct.urb* %126, i32 %127, i32 %130, i32 0, i32 %131)
  store i32 %132, i32* %28, align 4
  %133 = load i32, i32* %28, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %112
  %136 = load %struct.u132*, %struct.u132** %26, align 8
  %137 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %138 = load %struct.urb*, %struct.urb** %14, align 8
  %139 = load i32, i32* %28, align 4
  %140 = call i32 @u132_hcd_giveback_urb(%struct.u132* %136, %struct.u132_endp* %137, %struct.urb* %138, i32 %139)
  br label %141

141:                                              ; preds = %135, %112
  br label %159

142:                                              ; preds = %107
  %143 = load %struct.u132*, %struct.u132** %26, align 8
  %144 = getelementptr inbounds %struct.u132, %struct.u132* %143, i32 0, i32 2
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load %struct.urb*, %struct.urb** %14, align 8
  %148 = load %struct.urb*, %struct.urb** %14, align 8
  %149 = getelementptr inbounds %struct.urb, %struct.urb* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (i32*, i8*, ...) @dev_err(i32* %146, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %147, i32 %150)
  %152 = load %struct.u132*, %struct.u132** %26, align 8
  %153 = getelementptr inbounds %struct.u132, %struct.u132* %152, i32 0, i32 1
  %154 = call i32 @mutex_unlock(i32* %153)
  %155 = load %struct.u132*, %struct.u132** %26, align 8
  %156 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %157 = load %struct.urb*, %struct.urb** %14, align 8
  %158 = call i32 @u132_hcd_giveback_urb(%struct.u132* %155, %struct.u132_endp* %156, %struct.urb* %157, i32 0)
  br label %159

159:                                              ; preds = %142, %141, %91, %74, %51
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @u132_hcd_forget_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

declare dso_local i32 @u132_hcd_giveback_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

declare dso_local i32 @usb_ftdi_elan_edset_input(%struct.TYPE_4__*, i32, %struct.u132_endp*, %struct.urb*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

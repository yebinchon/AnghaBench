; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_enumeration_address_sent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_u132-hcd.c_u132_hcd_enumeration_address_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.u132_endp = type { i32, %struct.u132_ring*, i64, %struct.u132* }
%struct.u132_ring = type { i32 }
%struct.u132 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"device has been removed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"device is being removed urb=%p\0A\00", align 1
@u132_hcd_enumeration_empty_recv = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"CALLBACK called urb=%p unlinked=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.urb*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @u132_hcd_enumeration_address_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u132_hcd_enumeration_address_sent(i8* %0, %struct.urb* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11) #0 {
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
  %28 = alloca %struct.u132_ring*, align 8
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
  %29 = load i8*, i8** %13, align 8
  %30 = bitcast i8* %29 to %struct.u132_endp*
  store %struct.u132_endp* %30, %struct.u132_endp** %25, align 8
  %31 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %32 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %31, i32 0, i32 3
  %33 = load %struct.u132*, %struct.u132** %32, align 8
  store %struct.u132* %33, %struct.u132** %26, align 8
  %34 = load %struct.u132*, %struct.u132** %26, align 8
  %35 = getelementptr inbounds %struct.u132, %struct.u132* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.u132*, %struct.u132** %26, align 8
  %38 = getelementptr inbounds %struct.u132, %struct.u132* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %59

41:                                               ; preds = %12
  %42 = load %struct.u132*, %struct.u132** %26, align 8
  %43 = getelementptr inbounds %struct.u132, %struct.u132* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.u132*, %struct.u132** %26, align 8
  %47 = getelementptr inbounds %struct.u132, %struct.u132* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load %struct.u132*, %struct.u132** %26, align 8
  %51 = getelementptr inbounds %struct.u132, %struct.u132* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.u132*, %struct.u132** %26, align 8
  %54 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %55 = load %struct.urb*, %struct.urb** %14, align 8
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  %58 = call i32 @u132_hcd_forget_urb(%struct.u132* %53, %struct.u132_endp* %54, %struct.urb* %55, i32 %57)
  br label %148

59:                                               ; preds = %12
  %60 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %61 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %59
  %65 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %66 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.u132*, %struct.u132** %26, align 8
  %68 = getelementptr inbounds %struct.u132, %struct.u132* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load %struct.u132*, %struct.u132** %26, align 8
  %71 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %72 = load %struct.urb*, %struct.urb** %14, align 8
  %73 = load i32, i32* @EINTR, align 4
  %74 = sub nsw i32 0, %73
  %75 = call i32 @u132_hcd_giveback_urb(%struct.u132* %70, %struct.u132_endp* %71, %struct.urb* %72, i32 %74)
  br label %148

76:                                               ; preds = %59
  %77 = load %struct.u132*, %struct.u132** %26, align 8
  %78 = getelementptr inbounds %struct.u132, %struct.u132* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %76
  %82 = load %struct.u132*, %struct.u132** %26, align 8
  %83 = getelementptr inbounds %struct.u132, %struct.u132* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load %struct.urb*, %struct.urb** %14, align 8
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %86)
  %88 = load %struct.u132*, %struct.u132** %26, align 8
  %89 = getelementptr inbounds %struct.u132, %struct.u132* %88, i32 0, i32 1
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %struct.u132*, %struct.u132** %26, align 8
  %92 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %93 = load %struct.urb*, %struct.urb** %14, align 8
  %94 = load i32, i32* @ENODEV, align 4
  %95 = sub nsw i32 0, %94
  %96 = call i32 @u132_hcd_giveback_urb(%struct.u132* %91, %struct.u132_endp* %92, %struct.urb* %93, i32 %95)
  br label %148

97:                                               ; preds = %76
  %98 = load %struct.urb*, %struct.urb** %14, align 8
  %99 = getelementptr inbounds %struct.urb, %struct.urb* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %131, label %102

102:                                              ; preds = %97
  %103 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %104 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %103, i32 0, i32 1
  %105 = load %struct.u132_ring*, %struct.u132_ring** %104, align 8
  store %struct.u132_ring* %105, %struct.u132_ring** %28, align 8
  %106 = load %struct.u132*, %struct.u132** %26, align 8
  %107 = getelementptr inbounds %struct.u132, %struct.u132* %106, i32 0, i32 1
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load %struct.u132*, %struct.u132** %26, align 8
  %110 = getelementptr inbounds %struct.u132, %struct.u132* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load %struct.u132_ring*, %struct.u132_ring** %28, align 8
  %113 = getelementptr inbounds %struct.u132_ring, %struct.u132_ring* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %116 = load %struct.urb*, %struct.urb** %14, align 8
  %117 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %118 = getelementptr inbounds %struct.u132_endp, %struct.u132_endp* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @u132_hcd_enumeration_empty_recv, align 4
  %121 = call i32 @usb_ftdi_elan_edset_input(%struct.TYPE_2__* %111, i32 %114, %struct.u132_endp* %115, %struct.urb* %116, i32 0, i32 %119, i32 0, i32 %120)
  store i32 %121, i32* %27, align 4
  %122 = load i32, i32* %27, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %102
  %125 = load %struct.u132*, %struct.u132** %26, align 8
  %126 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %127 = load %struct.urb*, %struct.urb** %14, align 8
  %128 = load i32, i32* %27, align 4
  %129 = call i32 @u132_hcd_giveback_urb(%struct.u132* %125, %struct.u132_endp* %126, %struct.urb* %127, i32 %128)
  br label %130

130:                                              ; preds = %124, %102
  br label %148

131:                                              ; preds = %97
  %132 = load %struct.u132*, %struct.u132** %26, align 8
  %133 = getelementptr inbounds %struct.u132, %struct.u132* %132, i32 0, i32 2
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load %struct.urb*, %struct.urb** %14, align 8
  %137 = load %struct.urb*, %struct.urb** %14, align 8
  %138 = getelementptr inbounds %struct.urb, %struct.urb* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i32*, i8*, ...) @dev_err(i32* %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), %struct.urb* %136, i32 %139)
  %141 = load %struct.u132*, %struct.u132** %26, align 8
  %142 = getelementptr inbounds %struct.u132, %struct.u132* %141, i32 0, i32 1
  %143 = call i32 @mutex_unlock(i32* %142)
  %144 = load %struct.u132*, %struct.u132** %26, align 8
  %145 = load %struct.u132_endp*, %struct.u132_endp** %25, align 8
  %146 = load %struct.urb*, %struct.urb** %14, align 8
  %147 = call i32 @u132_hcd_giveback_urb(%struct.u132* %144, %struct.u132_endp* %145, %struct.urb* %146, i32 0)
  br label %148

148:                                              ; preds = %131, %130, %81, %64, %41
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @u132_hcd_forget_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

declare dso_local i32 @u132_hcd_giveback_urb(%struct.u132*, %struct.u132_endp*, %struct.urb*, i32) #1

declare dso_local i32 @usb_ftdi_elan_edset_input(%struct.TYPE_2__*, i32, %struct.u132_endp*, %struct.urb*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

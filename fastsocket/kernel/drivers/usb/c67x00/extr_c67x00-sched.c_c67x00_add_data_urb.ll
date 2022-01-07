; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_add_data_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/c67x00/extr_c67x00-sched.c_c67x00_add_data_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c67x00_hcd = type { i32 }
%struct.urb = type { i32, i32, i32, i32, i32, i32 }

@URB_ZERO_PACKET = common dso_local global i32 0, align 4
@USB_PID_OUT = common dso_local global i32 0, align 4
@USB_PID_IN = common dso_local global i32 0, align 4
@DATA_STAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c67x00_hcd*, %struct.urb*)* @c67x00_add_data_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c67x00_add_data_urb(%struct.c67x00_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.c67x00_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.c67x00_hcd* %0, %struct.c67x00_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.urb*, %struct.urb** %5, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.urb*, %struct.urb** %5, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @usb_pipeendpoint(i32 %19)
  %21 = load %struct.urb*, %struct.urb** %5, align 8
  %22 = getelementptr inbounds %struct.urb, %struct.urb* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @usb_pipeout(i32 %23)
  %25 = call i32 @usb_gettoggle(i32 %16, i32 %20, i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.urb*, %struct.urb** %5, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.urb*, %struct.urb** %5, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.urb*, %struct.urb** %5, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.urb*, %struct.urb** %5, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.urb*, %struct.urb** %5, align 8
  %40 = getelementptr inbounds %struct.urb, %struct.urb* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @usb_pipeout(i32 %41)
  %43 = call i32 @usb_maxpacket(i32 %35, i32 %38, i64 %42)
  store i32 %43, i32* %10, align 4
  %44 = load %struct.urb*, %struct.urb** %5, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @URB_ZERO_PACKET, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %2
  %51 = load %struct.urb*, %struct.urb** %5, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @usb_pipeout(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %10, align 4
  %59 = srem i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %56, %50, %2
  %63 = phi i1 [ false, %50 ], [ false, %2 ], [ %61, %56 ]
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %133, %62
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ true, %65 ], [ %70, %68 ]
  br i1 %72, label %73, label %134

73:                                               ; preds = %71
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* %10, align 4
  br label %81

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  br label %81

81:                                               ; preds = %79, %77
  %82 = phi i32 [ %78, %77 ], [ %80, %79 ]
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  store i32 0, i32* %11, align 4
  br label %86

86:                                               ; preds = %85, %81
  %87 = load %struct.urb*, %struct.urb** %5, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @usb_pipeout(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @USB_PID_OUT, align 4
  br label %96

94:                                               ; preds = %86
  %95 = load i32, i32* @USB_PID_IN, align 4
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi i32 [ %93, %92 ], [ %95, %94 ]
  store i32 %97, i32* %8, align 4
  %98 = load %struct.urb*, %struct.urb** %5, align 8
  %99 = getelementptr inbounds %struct.urb, %struct.urb* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.urb*, %struct.urb** %5, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %100, %103
  %105 = load i32, i32* %6, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %13, align 8
  %109 = load %struct.c67x00_hcd*, %struct.c67x00_hcd** %4, align 8
  %110 = load %struct.urb*, %struct.urb** %5, align 8
  %111 = load i8*, i8** %13, align 8
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @DATA_STAGE, align 4
  %116 = call i32 @c67x00_create_td(%struct.c67x00_hcd* %109, %struct.urb* %110, i8* %111, i32 %112, i32 %113, i32 %114, i32 %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %96
  %120 = load i32, i32* %9, align 4
  store i32 %120, i32* %3, align 4
  br label %135

121:                                              ; preds = %96
  %122 = load i32, i32* %7, align 4
  %123 = xor i32 %122, 1
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %6, align 4
  %126 = sub nsw i32 %125, %124
  store i32 %126, i32* %6, align 4
  %127 = load %struct.urb*, %struct.urb** %5, align 8
  %128 = getelementptr inbounds %struct.urb, %struct.urb* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @usb_pipecontrol(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %121
  br label %134

133:                                              ; preds = %121
  br label %65

134:                                              ; preds = %132, %71
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %119
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @usb_gettoggle(i32, i32, i64) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i64 @usb_pipeout(i32) #1

declare dso_local i32 @usb_maxpacket(i32, i32, i64) #1

declare dso_local i32 @c67x00_create_td(%struct.c67x00_hcd*, %struct.urb*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @usb_pipecontrol(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

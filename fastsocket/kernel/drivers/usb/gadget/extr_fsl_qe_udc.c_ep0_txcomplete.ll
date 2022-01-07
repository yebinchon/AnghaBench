; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_ep0_txcomplete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_fsl_qe_udc.c_ep0_txcomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qe_ep = type { i32, i64, %struct.TYPE_4__*, %struct.qe_req*, %struct.qe_frame* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qe_req = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.qe_frame = type { i32 }

@ZLP = common dso_local global i32 0, align 4
@NO_REQ = common dso_local global i32 0, align 4
@WAIT_FOR_SETUP = common dso_local global i32 0, align 4
@SETUP_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"the ep0_controller have no req\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qe_ep*, i8)* @ep0_txcomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep0_txcomplete(%struct.qe_ep* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qe_ep*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.qe_req*, align 8
  %7 = alloca %struct.qe_frame*, align 8
  %8 = alloca i32, align 4
  store %struct.qe_ep* %0, %struct.qe_ep** %4, align 8
  store i8 %1, i8* %5, align 1
  store %struct.qe_req* null, %struct.qe_req** %6, align 8
  %9 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %10 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %9, i32 0, i32 4
  %11 = load %struct.qe_frame*, %struct.qe_frame** %10, align 8
  store %struct.qe_frame* %11, %struct.qe_frame** %7, align 8
  %12 = load %struct.qe_frame*, %struct.qe_frame** %7, align 8
  %13 = call i32 @frame_get_info(%struct.qe_frame* %12)
  %14 = load i32, i32* @ZLP, align 4
  %15 = load i32, i32* @NO_REQ, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @ZLP, align 4
  %19 = load i32, i32* @NO_REQ, align 4
  %20 = or i32 %18, %19
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %2
  %23 = load i8, i8* %5, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* @WAIT_FOR_SETUP, align 4
  %27 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %28 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  br label %40

31:                                               ; preds = %22
  %32 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %33 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %34 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %33, i32 0, i32 4
  %35 = load %struct.qe_frame*, %struct.qe_frame** %34, align 8
  %36 = load i32, i32* @SETUP_STATUS, align 4
  %37 = load i32, i32* @NO_REQ, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @sendnulldata(%struct.qe_ep* %32, %struct.qe_frame* %35, i32 %38)
  br label %40

40:                                               ; preds = %31, %25
  store i32 0, i32* %3, align 4
  br label %112

41:                                               ; preds = %2
  %42 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %43 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %42, i32 0, i32 3
  %44 = load %struct.qe_req*, %struct.qe_req** %43, align 8
  store %struct.qe_req* %44, %struct.qe_req** %6, align 8
  %45 = load %struct.qe_req*, %struct.qe_req** %6, align 8
  %46 = icmp ne %struct.qe_req* %45, null
  br i1 %46, label %47, label %104

47:                                               ; preds = %41
  %48 = load i8, i8* %5, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %47
  %51 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %52 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %57 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %62 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %68

65:                                               ; preds = %47
  %66 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %67 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %50
  %69 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %70 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %69, i32 0, i32 3
  %71 = load %struct.qe_req*, %struct.qe_req** %70, align 8
  %72 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %76 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = sub nsw i64 %74, %77
  %79 = icmp sle i64 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %68
  %81 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %82 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  %85 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %86 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %85, i32 0, i32 3
  %87 = load %struct.qe_req*, %struct.qe_req** %86, align 8
  %88 = getelementptr inbounds %struct.qe_req, %struct.qe_req* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i32 %84, i32* %89, align 8
  %90 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %91 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %90, i32 0, i32 2
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %94 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %93, i32 0, i32 3
  %95 = load %struct.qe_req*, %struct.qe_req** %94, align 8
  %96 = call i32 @ep0_req_complete(%struct.TYPE_4__* %92, %struct.qe_req* %95)
  %97 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %98 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %97, i32 0, i32 3
  store %struct.qe_req* null, %struct.qe_req** %98, align 8
  %99 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %100 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %102 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  br label %103

103:                                              ; preds = %80, %68
  br label %111

104:                                              ; preds = %41
  %105 = load %struct.qe_ep*, %struct.qe_ep** %4, align 8
  %106 = getelementptr inbounds %struct.qe_ep, %struct.qe_ep* %105, i32 0, i32 2
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dev_vdbg(i32 %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %111

111:                                              ; preds = %104, %103
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %40
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @frame_get_info(%struct.qe_frame*) #1

declare dso_local i32 @sendnulldata(%struct.qe_ep*, %struct.qe_frame*, i32) #1

declare dso_local i32 @ep0_req_complete(%struct.TYPE_4__*, %struct.qe_req*) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

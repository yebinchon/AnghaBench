; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_port_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/core/extr_hub.c_hub_port_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hub = type { i32, i32 }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"only USB3 hub support warm reset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ehci_cf_port_reset_rwsem = common dso_local global i32 0, align 4
@PORT_RESET_TRIES = common dso_local global i32 0, align 4
@USB_PORT_FEAT_BH_PORT_RESET = common dso_local global i32 0, align 4
@USB_PORT_FEAT_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot %sreset port %d (err = %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"warm \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOTCONN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"port_wait_reset: err = %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"port %d not enabled, trying %sreset again...\0A\00", align 1
@HUB_LONG_RESET_TIME = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [53 x i8] c"Cannot enable port %i.  Maybe the USB cable is bad?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hub*, i32, %struct.usb_device*, i32, i32)* @hub_port_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hub_port_reset(%struct.usb_hub* %0, i32 %1, %struct.usb_device* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hub*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.usb_hub* %0, %struct.usb_hub** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.usb_device* %2, %struct.usb_device** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %17 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @hub_is_superspeed(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %33, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %26 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dev_err(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %153

31:                                               ; preds = %21
  %32 = call i32 @down_read(i32* @ehci_cf_port_reset_rwsem)
  br label %51

33:                                               ; preds = %5
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @hub_port_status(%struct.usb_hub* %37, i32 %38, i32* %15, i32* %14)
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %143

43:                                               ; preds = %36
  %44 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i64 @hub_port_warm_reset_required(%struct.usb_hub* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 1, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %43
  br label %50

50:                                               ; preds = %49, %33
  br label %51

51:                                               ; preds = %50, %31
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %134, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @PORT_RESET_TRIES, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %137

56:                                               ; preds = %52
  %57 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %58 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @USB_PORT_FEAT_BH_PORT_RESET, align 4
  br label %67

65:                                               ; preds = %56
  %66 = load i32, i32* @USB_PORT_FEAT_RESET, align 4
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i32 [ %64, %63 ], [ %66, %65 ]
  %69 = call i32 @set_port_feature(i32 %59, i32 %60, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %74 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 (i32, i8*, ...) @dev_err(i32 %75, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %79, i32 %80, i32 %81)
  br label %104

83:                                               ; preds = %67
  %84 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @hub_port_wait_reset(%struct.usb_hub* %84, i32 %85, %struct.usb_device* %86, i32 %87, i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %83
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @ENOTCONN, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %99 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %13, align 4
  %102 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %100, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %97, %92, %83
  br label %104

104:                                              ; preds = %103, %72
  %105 = load i32, i32* %13, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %117, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @ENOTCONN, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* @ENODEV, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %112, %107, %104
  %118 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %121 = load i32, i32* %11, align 4
  %122 = call i32 @hub_port_finish_reset(%struct.usb_hub* %118, i32 %119, %struct.usb_device* %120, i32* %13, i32 %121)
  br label %143

123:                                              ; preds = %112
  %124 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %125 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %132 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %126, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %127, i8* %131)
  %133 = load i32, i32* @HUB_LONG_RESET_TIME, align 4
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %123
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %52

137:                                              ; preds = %52
  %138 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %139 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 (i32, i8*, ...) @dev_err(i32 %140, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %137, %117, %42
  %144 = load %struct.usb_hub*, %struct.usb_hub** %7, align 8
  %145 = getelementptr inbounds %struct.usb_hub, %struct.usb_hub* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @hub_is_superspeed(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %143
  %150 = call i32 @up_read(i32* @ehci_cf_port_reset_rwsem)
  br label %151

151:                                              ; preds = %149, %143
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %6, align 4
  br label %153

153:                                              ; preds = %151, %24
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @hub_is_superspeed(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @hub_port_status(%struct.usb_hub*, i32, i32*, i32*) #1

declare dso_local i64 @hub_port_warm_reset_required(%struct.usb_hub*, i32) #1

declare dso_local i32 @set_port_feature(i32, i32, i32) #1

declare dso_local i32 @hub_port_wait_reset(%struct.usb_hub*, i32, %struct.usb_device*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @hub_port_finish_reset(%struct.usb_hub*, i32, %struct.usb_device*, i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-hcd.c_ohci_endpoint_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/host/extr_ohci-hcd.c_ohci_endpoint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { %struct.ed*, %struct.TYPE_2__ }
%struct.ed = type { i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ohci_hcd = type { i32, i32, %struct.ed*, i32 }

@PIPE_INTERRUPT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"ED unlink timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Attempting ZF TD recovery\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"leak ed %p (#%02x) state %d%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" (has tds)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @ohci_endpoint_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_endpoint_disable(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.ohci_hcd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ed*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %9)
  store %struct.ohci_hcd* %10, %struct.ohci_hcd** %5, align 8
  %11 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %12 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %11, i32 0, i32 0
  %13 = load %struct.ed*, %struct.ed** %12, align 8
  store %struct.ed* %13, %struct.ed** %7, align 8
  store i32 1000, i32* %8, align 4
  %14 = load %struct.ed*, %struct.ed** %7, align 8
  %15 = icmp ne %struct.ed* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %122

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %72, %17
  %19 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %20 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %19, i32 0, i32 1
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %24 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @HC_IS_RUNNING(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %71, %28
  %30 = load %struct.ed*, %struct.ed** %7, align 8
  %31 = getelementptr inbounds %struct.ed, %struct.ed* %30, i32 0, i32 0
  store i32 129, i32* %31, align 8
  %32 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %33 = call i64 @quirk_zfmicro(%struct.ohci_hcd* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.ed*, %struct.ed** %7, align 8
  %37 = getelementptr inbounds %struct.ed, %struct.ed* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PIPE_INTERRUPT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %43 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %41, %35, %29
  %47 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %48 = call i32 @finish_unlinks(%struct.ohci_hcd* %47, i32 0)
  br label %49

49:                                               ; preds = %46, %18
  %50 = load %struct.ed*, %struct.ed** %7, align 8
  %51 = getelementptr inbounds %struct.ed, %struct.ed* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %93 [
    i32 128, label %53
    i32 129, label %78
  ]

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %8, align 4
  %56 = icmp eq i32 %54, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %59 = call i32 @ohci_warn(%struct.ohci_hcd* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %61 = call i64 @quirk_zfmicro(%struct.ohci_hcd* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %57
  %64 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %65 = call i32 @ohci_warn(%struct.ohci_hcd* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.ed*, %struct.ed** %7, align 8
  %67 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %68 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %67, i32 0, i32 2
  store %struct.ed* %66, %struct.ed** %68, align 8
  %69 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %70 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %69, i32 0, i32 0
  store i32 2, i32* %70, align 8
  br label %71

71:                                               ; preds = %63, %57
  br label %29

72:                                               ; preds = %53
  %73 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %74 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %73, i32 0, i32 1
  %75 = load i64, i64* %6, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %18

78:                                               ; preds = %49
  %79 = load %struct.ed*, %struct.ed** %7, align 8
  %80 = getelementptr inbounds %struct.ed, %struct.ed* %79, i32 0, i32 3
  %81 = call i32 @list_empty(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %85 = load %struct.ed*, %struct.ed** %7, align 8
  %86 = getelementptr inbounds %struct.ed, %struct.ed* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @td_free(%struct.ohci_hcd* %84, i32 %87)
  %89 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %90 = load %struct.ed*, %struct.ed** %7, align 8
  %91 = call i32 @ed_free(%struct.ohci_hcd* %89, %struct.ed* %90)
  br label %115

92:                                               ; preds = %78
  br label %93

93:                                               ; preds = %49, %92
  %94 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %95 = load %struct.ed*, %struct.ed** %7, align 8
  %96 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %97 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ed*, %struct.ed** %7, align 8
  %101 = getelementptr inbounds %struct.ed, %struct.ed* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ed*, %struct.ed** %7, align 8
  %104 = getelementptr inbounds %struct.ed, %struct.ed* %103, i32 0, i32 3
  %105 = call i32 @list_empty(i32* %104)
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  %109 = call i32 @ohci_err(%struct.ohci_hcd* %94, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.ed* %95, i32 %99, i32 %102, i8* %108)
  %110 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %111 = load %struct.ed*, %struct.ed** %7, align 8
  %112 = getelementptr inbounds %struct.ed, %struct.ed* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @td_free(%struct.ohci_hcd* %110, i32 %113)
  br label %115

115:                                              ; preds = %93, %83
  %116 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %117 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %116, i32 0, i32 0
  store %struct.ed* null, %struct.ed** %117, align 8
  %118 = load %struct.ohci_hcd*, %struct.ohci_hcd** %5, align 8
  %119 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %118, i32 0, i32 1
  %120 = load i64, i64* %6, align 8
  %121 = call i32 @spin_unlock_irqrestore(i32* %119, i64 %120)
  br label %122

122:                                              ; preds = %115, %16
  ret void
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @HC_IS_RUNNING(i32) #1

declare dso_local i64 @quirk_zfmicro(%struct.ohci_hcd*) #1

declare dso_local i32 @finish_unlinks(%struct.ohci_hcd*, i32) #1

declare dso_local i32 @ohci_warn(%struct.ohci_hcd*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @td_free(%struct.ohci_hcd*, i32) #1

declare dso_local i32 @ed_free(%struct.ohci_hcd*, %struct.ed*) #1

declare dso_local i32 @ohci_err(%struct.ohci_hcd*, i8*, %struct.ed*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_received_cbw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/gadget/extr_file_storage.c_received_cbw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.fsg_dev = type { i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.fsg_buffhd = type { %struct.usb_request* }
%struct.usb_request = type { i64, i64, %struct.bulk_cb_wrap* }
%struct.bulk_cb_wrap = type { i64, i64, i32, i64, i64, i32, i32 }

@IGNORE_BULK_OUT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@USB_BULK_CB_WRAP_LEN = common dso_local global i64 0, align 8
@USB_BULK_CB_SIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid CBW: len %u sig 0x%x\0A\00", align 1
@MAX_LUNS = common dso_local global i64 0, align 8
@USB_BULK_IN_FLAG = common dso_local global i32 0, align 4
@MAX_COMMAND_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"non-meaningful CBW: lun = %u, flags = 0x%x, cmdlen %u\0A\00", align 1
@mod_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DATA_DIR_TO_HOST = common dso_local global i32 0, align 4
@DATA_DIR_FROM_HOST = common dso_local global i32 0, align 4
@DATA_DIR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_dev*, %struct.fsg_buffhd*)* @received_cbw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @received_cbw(%struct.fsg_dev* %0, %struct.fsg_buffhd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fsg_dev*, align 8
  %5 = alloca %struct.fsg_buffhd*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca %struct.bulk_cb_wrap*, align 8
  store %struct.fsg_dev* %0, %struct.fsg_dev** %4, align 8
  store %struct.fsg_buffhd* %1, %struct.fsg_buffhd** %5, align 8
  %8 = load %struct.fsg_buffhd*, %struct.fsg_buffhd** %5, align 8
  %9 = getelementptr inbounds %struct.fsg_buffhd, %struct.fsg_buffhd* %8, i32 0, i32 0
  %10 = load %struct.usb_request*, %struct.usb_request** %9, align 8
  store %struct.usb_request* %10, %struct.usb_request** %6, align 8
  %11 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %12 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %11, i32 0, i32 2
  %13 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %12, align 8
  store %struct.bulk_cb_wrap* %13, %struct.bulk_cb_wrap** %7, align 8
  %14 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %15 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IGNORE_BULK_OUT, align 4
  %20 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %21 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %20, i32 0, i32 7
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %164

27:                                               ; preds = %18
  %28 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %29 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @USB_BULK_CB_WRAP_LEN, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %35 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @USB_BULK_CB_SIG, align 4
  %38 = call i64 @cpu_to_le32(i32 %37)
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %33, %27
  %41 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %42 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %43 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %46 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @le32_to_cpu(i64 %47)
  %49 = call i32 (%struct.fsg_dev*, i8*, i64, i32, ...) @DBG(%struct.fsg_dev* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %48)
  %50 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %51 = call i32 @wedge_bulk_in_endpoint(%struct.fsg_dev* %50)
  %52 = load i32, i32* @IGNORE_BULK_OUT, align 4
  %53 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %54 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %53, i32 0, i32 7
  %55 = call i32 @set_bit(i32 %52, i32* %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %164

58:                                               ; preds = %33
  %59 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %60 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @MAX_LUNS, align 8
  %63 = icmp sge i64 %61, %62
  br i1 %63, label %83, label %64

64:                                               ; preds = %58
  %65 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %66 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @USB_BULK_IN_FLAG, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %64
  %73 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %74 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp sle i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %72
  %78 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %79 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @MAX_COMMAND_SIZE, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %108

83:                                               ; preds = %77, %72, %64, %58
  %84 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %85 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %86 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %89 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %92 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (%struct.fsg_dev*, i8*, i64, i32, ...) @DBG(%struct.fsg_dev* %84, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i64 %87, i32 %90, i64 %93)
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @mod_data, i32 0, i32 0), align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %83
  %98 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %99 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %100 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @fsg_set_halt(%struct.fsg_dev* %98, i32 %101)
  %103 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %104 = call i32 @halt_bulk_in_endpoint(%struct.fsg_dev* %103)
  br label %105

105:                                              ; preds = %97, %83
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %164

108:                                              ; preds = %77
  %109 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %110 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %113 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %115 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %118 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %121 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @memcpy(i32 %116, i32 %119, i64 %122)
  %124 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %125 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @USB_BULK_IN_FLAG, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %108
  %131 = load i32, i32* @DATA_DIR_TO_HOST, align 4
  %132 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %133 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  br label %138

134:                                              ; preds = %108
  %135 = load i32, i32* @DATA_DIR_FROM_HOST, align 4
  %136 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %137 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 4
  br label %138

138:                                              ; preds = %134, %130
  %139 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %140 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @le32_to_cpu(i64 %141)
  %143 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %144 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %146 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %138
  %150 = load i32, i32* @DATA_DIR_NONE, align 4
  %151 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %152 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %149, %138
  %154 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %155 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %158 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  %159 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %7, align 8
  %160 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.fsg_dev*, %struct.fsg_dev** %4, align 8
  %163 = getelementptr inbounds %struct.fsg_dev, %struct.fsg_dev* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 8
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %153, %105, %40, %24
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @DBG(%struct.fsg_dev*, i8*, i64, i32, ...) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @wedge_bulk_in_endpoint(%struct.fsg_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @fsg_set_halt(%struct.fsg_dev*, i32) #1

declare dso_local i32 @halt_bulk_in_endpoint(%struct.fsg_dev*) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

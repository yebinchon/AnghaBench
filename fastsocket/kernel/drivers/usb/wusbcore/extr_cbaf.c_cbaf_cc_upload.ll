; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_cbaf.c_cbaf_cc_upload.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_cbaf.c_cbaf_cc_upload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusb_cbaf_cc_data = type { i32, i32, i32, i32 }
%struct.cbaf = type { i8*, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.wusb_cbaf_cc_data* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.device }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }

@WUSB_CKHDID_STRSIZE = common dso_local global i32 0, align 4
@cbaf_cc_data_defaults = common dso_local global %struct.wusb_cbaf_cc_data zeroinitializer, align 4
@.str = private unnamed_addr constant [22 x i8] c"Trying to upload CC:\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"  CHID       %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"  CDID       %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"  Bandgroups 0x%04x\0A\00", align 1
@CBAF_REQ_SET_ASSOCIATION_RESPONSE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cbaf*)* @cbaf_cc_upload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbaf_cc_upload(%struct.cbaf* %0) #0 {
  %2 = alloca %struct.cbaf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.wusb_cbaf_cc_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.cbaf* %0, %struct.cbaf** %2, align 8
  %8 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %9 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 1
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load i32, i32* @WUSB_CKHDID_STRSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %17 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %16, i32 0, i32 6
  %18 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %17, align 8
  store %struct.wusb_cbaf_cc_data* %18, %struct.wusb_cbaf_cc_data** %5, align 8
  %19 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %20 = bitcast %struct.wusb_cbaf_cc_data* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.wusb_cbaf_cc_data* @cbaf_cc_data_defaults to i8*), i64 16, i1 false)
  %21 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %22 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %25 = getelementptr inbounds %struct.wusb_cbaf_cc_data, %struct.wusb_cbaf_cc_data* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %27 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %30 = getelementptr inbounds %struct.wusb_cbaf_cc_data, %struct.wusb_cbaf_cc_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %32 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %35 = getelementptr inbounds %struct.wusb_cbaf_cc_data, %struct.wusb_cbaf_cc_data* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %37 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @cpu_to_le16(i8* %38)
  %40 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %41 = getelementptr inbounds %struct.wusb_cbaf_cc_data, %struct.wusb_cbaf_cc_data* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %44 = trunc i64 %13 to i32
  %45 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %46 = getelementptr inbounds %struct.wusb_cbaf_cc_data, %struct.wusb_cbaf_cc_data* %45, i32 0, i32 1
  %47 = call i32 @ckhdid_printf(i8* %15, i32 %44, i32* %46)
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %48, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %50 = trunc i64 %13 to i32
  %51 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %52 = getelementptr inbounds %struct.wusb_cbaf_cc_data, %struct.wusb_cbaf_cc_data* %51, i32 0, i32 0
  %53 = call i32 @ckhdid_printf(i8* %15, i32 %50, i32* %52)
  %54 = load %struct.device*, %struct.device** %4, align 8
  %55 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %15)
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %58 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %59)
  %61 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %62 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %65 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @usb_sndctrlpipe(i32 %66, i32 0)
  %68 = load i32, i32* @CBAF_REQ_SET_ASSOCIATION_RESPONSE, align 4
  %69 = load i32, i32* @USB_DIR_OUT, align 4
  %70 = load i32, i32* @USB_TYPE_CLASS, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.cbaf*, %struct.cbaf** %2, align 8
  %75 = getelementptr inbounds %struct.cbaf, %struct.cbaf* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.wusb_cbaf_cc_data*, %struct.wusb_cbaf_cc_data** %5, align 8
  %83 = call i32 @usb_control_msg(i32 %63, i32 %67, i32 %68, i32 %73, i32 513, i32 %81, %struct.wusb_cbaf_cc_data* %82, i32 16, i32 1000)
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %85)
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cpu_to_le16(i8*) #3

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #3

declare dso_local i32 @ckhdid_printf(i8*, i32, i32*) #3

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.wusb_cbaf_cc_data*, i32, i32) #3

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

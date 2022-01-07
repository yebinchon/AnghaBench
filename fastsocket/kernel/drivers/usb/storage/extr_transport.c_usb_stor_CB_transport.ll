; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_transport.c_usb_stor_CB_transport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_transport.c_usb_stor_CB_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64*, i64, i32 }
%struct.us_data = type { i32, i32, i64, i32*, i64, i32, i32 }

@US_CBI_ADSC = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Call to usb_stor_ctrl_transfer() returned %d\0A\00", align 1
@USB_STOR_XFER_STALLED = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"CBI data stage result is 0x%x\0A\00", align 1
@US_PR_CBI = common dso_local global i64 0, align 8
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Got interrupt data (0x%x, 0x%x)\0A\00", align 1
@US_SC_UFI = common dso_local global i64 0, align 8
@REQUEST_SENSE = common dso_local global i64 0, align 8
@INQUIRY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"CBI IRQ data showed reserved bType 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_stor_CB_transport(%struct.scsi_cmnd* %0, %struct.us_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.us_data* %1, %struct.us_data** %5, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %9)
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.us_data*, %struct.us_data** %5, align 8
  %12 = load %struct.us_data*, %struct.us_data** %5, align 8
  %13 = getelementptr inbounds %struct.us_data, %struct.us_data* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @US_CBI_ADSC, align 4
  %16 = load i32, i32* @USB_TYPE_CLASS, align 4
  %17 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.us_data*, %struct.us_data** %5, align 8
  %20 = getelementptr inbounds %struct.us_data, %struct.us_data* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %26 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @usb_stor_ctrl_transfer(%struct.us_data* %11, i32 %14, i32 %15, i32 %18, i32 0, i32 %21, i64* %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 (i8*, i32, ...) @US_DEBUGP(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @USB_STOR_XFER_STALLED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %35, i32* %3, align 4
  br label %178

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %41, i32* %3, align 4
  br label %178

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %42
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.us_data*, %struct.us_data** %5, align 8
  %53 = getelementptr inbounds %struct.us_data, %struct.us_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  br label %59

55:                                               ; preds = %45
  %56 = load %struct.us_data*, %struct.us_data** %5, align 8
  %57 = getelementptr inbounds %struct.us_data, %struct.us_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %54, %51 ], [ %58, %55 ]
  store i32 %60, i32* %7, align 4
  %61 = load %struct.us_data*, %struct.us_data** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %64 = call i32 @usb_stor_bulk_srb(%struct.us_data* %61, i32 %62, %struct.scsi_cmnd* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 (i8*, i32, ...) @US_DEBUGP(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @USB_STOR_XFER_STALLED, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %59
  %71 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %71, i32* %3, align 4
  br label %178

72:                                               ; preds = %59
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @USB_STOR_XFER_STALLED, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %77, i32* %3, align 4
  br label %178

78:                                               ; preds = %72
  br label %79

79:                                               ; preds = %78, %42
  %80 = load %struct.us_data*, %struct.us_data** %5, align 8
  %81 = getelementptr inbounds %struct.us_data, %struct.us_data* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @US_PR_CBI, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %86, i32* %3, align 4
  br label %178

87:                                               ; preds = %79
  %88 = load %struct.us_data*, %struct.us_data** %5, align 8
  %89 = load %struct.us_data*, %struct.us_data** %5, align 8
  %90 = getelementptr inbounds %struct.us_data, %struct.us_data* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @usb_stor_intr_transfer(%struct.us_data* %88, i32* %91, i32 2)
  store i32 %92, i32* %8, align 4
  %93 = load %struct.us_data*, %struct.us_data** %5, align 8
  %94 = getelementptr inbounds %struct.us_data, %struct.us_data* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.us_data*, %struct.us_data** %5, align 8
  %99 = getelementptr inbounds %struct.us_data, %struct.us_data* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i32, ...) @US_DEBUGP(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %87
  %108 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %108, i32* %3, align 4
  br label %178

109:                                              ; preds = %87
  %110 = load %struct.us_data*, %struct.us_data** %5, align 8
  %111 = getelementptr inbounds %struct.us_data, %struct.us_data* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @US_SC_UFI, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %143

115:                                              ; preds = %109
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @REQUEST_SENSE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %131, label %123

123:                                              ; preds = %115
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %125 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %124, i32 0, i32 0
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @INQUIRY, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %123, %115
  %132 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %132, i32* %3, align 4
  br label %178

133:                                              ; preds = %123
  %134 = load %struct.us_data*, %struct.us_data** %5, align 8
  %135 = getelementptr inbounds %struct.us_data, %struct.us_data* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %133
  br label %169

141:                                              ; preds = %133
  %142 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %142, i32* %3, align 4
  br label %178

143:                                              ; preds = %109
  %144 = load %struct.us_data*, %struct.us_data** %5, align 8
  %145 = getelementptr inbounds %struct.us_data, %struct.us_data* %144, i32 0, i32 3
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %143
  %151 = load %struct.us_data*, %struct.us_data** %5, align 8
  %152 = getelementptr inbounds %struct.us_data, %struct.us_data* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, i32, ...) @US_DEBUGP(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %155)
  br label %169

157:                                              ; preds = %143
  %158 = load %struct.us_data*, %struct.us_data** %5, align 8
  %159 = getelementptr inbounds %struct.us_data, %struct.us_data* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 1
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 15
  switch i32 %163, label %167 [
    i32 0, label %164
    i32 1, label %166
  ]

164:                                              ; preds = %157
  %165 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %165, i32* %3, align 4
  br label %178

166:                                              ; preds = %157
  br label %169

167:                                              ; preds = %157
  %168 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %168, i32* %3, align 4
  br label %178

169:                                              ; preds = %166, %150, %140
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load %struct.us_data*, %struct.us_data** %5, align 8
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @usb_stor_clear_halt(%struct.us_data* %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %169
  %177 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %167, %164, %141, %131, %107, %85, %76, %70, %40, %34
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @usb_stor_ctrl_transfer(%struct.us_data*, i32, i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @US_DEBUGP(i8*, i32, ...) #1

declare dso_local i32 @usb_stor_bulk_srb(%struct.us_data*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @usb_stor_intr_transfer(%struct.us_data*, i32*, i32) #1

declare dso_local i32 @usb_stor_clear_halt(%struct.us_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

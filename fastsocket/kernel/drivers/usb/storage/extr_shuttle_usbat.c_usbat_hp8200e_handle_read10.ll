; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_hp8200e_handle_read10.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_shuttle_usbat.c_usbat_hp8200e_handle_read10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.scatterlist = type { i32 }

@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"handle_read10: transfersize %d\0A\00", align 1
@USBAT_ATA = common dso_local global i32 0, align 4
@USBAT_ATA_DATA = common dso_local global i32 0, align 4
@USBAT_ATA_STATUS = common dso_local global i32 0, align 4
@USBAT_QUAL_FCQ = common dso_local global i32 0, align 4
@USBAT_QUAL_ALQ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@GPCMD_READ_CD = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"handle_read10: GPCMD_READ_CD: len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"handle_read10: transfersize 0, forcing %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Max read is %d bytes\0A\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@transferred = common dso_local global i32 0, align 4
@TO_XFER_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, i8*, i8*, %struct.scsi_cmnd*)* @usbat_hp8200e_handle_read10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbat_hp8200e_handle_read10(%struct.us_data* %0, i8* %1, i8* %2, %struct.scsi_cmnd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.scsi_cmnd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scatterlist*, align 8
  store %struct.us_data* %0, %struct.us_data** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.scsi_cmnd* %3, %struct.scsi_cmnd** %9, align 8
  %16 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %15, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %22 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %21)
  %23 = icmp ult i32 %22, 65536
  br i1 %23, label %24, label %43

24:                                               ; preds = %4
  %25 = load %struct.us_data*, %struct.us_data** %6, align 8
  %26 = load i32, i32* @USBAT_ATA, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* @USBAT_ATA_DATA, align 4
  %30 = load i32, i32* @USBAT_ATA_STATUS, align 4
  %31 = load i32, i32* @USBAT_QUAL_FCQ, align 4
  %32 = load i32, i32* @USBAT_QUAL_ALQ, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %36 = call i8* @scsi_sglist(%struct.scsi_cmnd* %35)
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %38 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %37)
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %40 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %39)
  %41 = call i32 @usbat_hp8200e_rw_block_test(%struct.us_data* %25, i32 %26, i8* %27, i8* %28, i32 19, i32 %29, i32 %30, i32 253, i32 %33, i32 %34, i8* %36, i32 %38, i32 %40, i32 1)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %5, align 4
  br label %241

43:                                               ; preds = %4
  %44 = load i8*, i8** %8, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 7
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @GPCMD_READ_CD, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %75

51:                                               ; preds = %43
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 16
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %8, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 15
  %57 = load i8, i8* %56, align 1
  %58 = call i32 @short_pack(i8 zeroext %54, i8 zeroext %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = shl i32 %59, 16
  store i32 %60, i32* %12, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 14
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load i32, i32* %12, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %70 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %69)
  %71 = load i32, i32* %12, align 4
  %72 = udiv i32 %70, %71
  %73 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %74 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %51, %43
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %75
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %82 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %81, i32 0, i32 0
  store i32 2048, i32* %82, align 4
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %84 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = udiv i32 65535, %90
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = mul i32 %91, %94
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %100 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %99)
  %101 = call i32 @min(i32 %98, i32 %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @GFP_NOIO, align 4
  %104 = call i8* @kmalloc(i32 %102, i32 %103)
  store i8* %104, i8** %11, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %87
  %108 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %108, i32* %5, align 4
  br label %241

109:                                              ; preds = %87
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 10
  %112 = load i8, i8* %111, align 1
  %113 = load i8*, i8** %8, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 9
  %115 = load i8, i8* %114, align 1
  %116 = call i32 @short_pack(i8 zeroext %112, i8 zeroext %115)
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %13, align 4
  %118 = shl i32 %117, 16
  store i32 %118, i32* %13, align 4
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 12
  %121 = load i8, i8* %120, align 1
  %122 = load i8*, i8** %8, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 11
  %124 = load i8, i8* %123, align 1
  %125 = call i32 @short_pack(i8 zeroext %121, i8 zeroext %124)
  %126 = load i32, i32* %13, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %13, align 4
  store i32 0, i32* @transferred, align 4
  br label %128

128:                                              ; preds = %221, %109
  %129 = load i32, i32* @transferred, align 4
  %130 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %131 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %130)
  %132 = icmp ne i32 %129, %131
  br i1 %132, label %133, label %237

133:                                              ; preds = %128
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %136 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %135)
  %137 = load i32, i32* @transferred, align 4
  %138 = sub i32 %136, %137
  %139 = icmp ugt i32 %134, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %142 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %141)
  %143 = load i32, i32* @transferred, align 4
  %144 = sub i32 %142, %143
  store i32 %144, i32* %12, align 4
  br label %145

145:                                              ; preds = %140, %133
  %146 = load i32, i32* %12, align 4
  %147 = and i32 %146, 255
  %148 = trunc i32 %147 to i8
  %149 = load i8*, i8** %8, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 3
  store i8 %148, i8* %150, align 1
  %151 = load i32, i32* %12, align 4
  %152 = lshr i32 %151, 8
  %153 = and i32 %152, 255
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %8, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 4
  store i8 %154, i8* %156, align 1
  %157 = load i32, i32* %13, align 4
  %158 = lshr i32 %157, 16
  %159 = call zeroext i8 @MSB_of(i32 %158)
  %160 = load i8*, i8** %8, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 9
  store i8 %159, i8* %161, align 1
  %162 = load i32, i32* %13, align 4
  %163 = lshr i32 %162, 16
  %164 = call zeroext i8 @LSB_of(i32 %163)
  %165 = load i8*, i8** %8, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 10
  store i8 %164, i8* %166, align 1
  %167 = load i32, i32* %13, align 4
  %168 = and i32 %167, 65535
  %169 = call zeroext i8 @MSB_of(i32 %168)
  %170 = load i8*, i8** %8, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 11
  store i8 %169, i8* %171, align 1
  %172 = load i32, i32* %13, align 4
  %173 = and i32 %172, 65535
  %174 = call zeroext i8 @LSB_of(i32 %173)
  %175 = load i8*, i8** %8, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 12
  store i8 %174, i8* %176, align 1
  %177 = load i8*, i8** %8, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 7
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = load i8, i8* @GPCMD_READ_CD, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %180, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %145
  %185 = load i8*, i8** %8, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 13
  store i8 0, i8* %186, align 1
  br label %187

187:                                              ; preds = %184, %145
  %188 = load i32, i32* %12, align 4
  %189 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %190 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = udiv i32 %188, %191
  %193 = call zeroext i8 @MSB_of(i32 %192)
  %194 = load i8*, i8** %8, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 14
  store i8 %193, i8* %195, align 1
  %196 = load i32, i32* %12, align 4
  %197 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %198 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = udiv i32 %196, %199
  %201 = call zeroext i8 @LSB_of(i32 %200)
  %202 = load i8*, i8** %8, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 15
  store i8 %201, i8* %203, align 1
  %204 = load %struct.us_data*, %struct.us_data** %6, align 8
  %205 = load i32, i32* @USBAT_ATA, align 4
  %206 = load i8*, i8** %7, align 8
  %207 = load i8*, i8** %8, align 8
  %208 = load i32, i32* @USBAT_ATA_DATA, align 4
  %209 = load i32, i32* @USBAT_ATA_STATUS, align 4
  %210 = load i32, i32* @USBAT_QUAL_FCQ, align 4
  %211 = load i32, i32* @USBAT_QUAL_ALQ, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %214 = load i8*, i8** %11, align 8
  %215 = load i32, i32* %12, align 4
  %216 = call i32 @usbat_hp8200e_rw_block_test(%struct.us_data* %204, i32 %205, i8* %206, i8* %207, i32 19, i32 %208, i32 %209, i32 253, i32 %212, i32 %213, i8* %214, i32 %215, i32 0, i32 1)
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %10, align 4
  %218 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %187
  br label %237

221:                                              ; preds = %187
  %222 = load i8*, i8** %11, align 8
  %223 = load i32, i32* %12, align 4
  %224 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %225 = load i32, i32* @TO_XFER_BUF, align 4
  %226 = call i32 @usb_stor_access_xfer_buf(i8* %222, i32 %223, %struct.scsi_cmnd* %224, %struct.scatterlist** %15, i32* %14, i32 %225)
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* @transferred, align 4
  %229 = add i32 %228, %227
  store i32 %229, i32* @transferred, align 4
  %230 = load i32, i32* %12, align 4
  %231 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %9, align 8
  %232 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = udiv i32 %230, %233
  %235 = load i32, i32* %13, align 4
  %236 = add i32 %235, %234
  store i32 %236, i32* %13, align 4
  br label %128

237:                                              ; preds = %220, %128
  %238 = load i8*, i8** %11, align 8
  %239 = call i32 @kfree(i8* %238)
  %240 = load i32, i32* %10, align 4
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %237, %107, %24
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local i32 @US_DEBUGP(i8*, i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @usbat_hp8200e_rw_block_test(%struct.us_data*, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i8* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @short_pack(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local zeroext i8 @MSB_of(i32) #1

declare dso_local zeroext i8 @LSB_of(i32) #1

declare dso_local i32 @usb_stor_access_xfer_buf(i8*, i32, %struct.scsi_cmnd*, %struct.scatterlist**, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

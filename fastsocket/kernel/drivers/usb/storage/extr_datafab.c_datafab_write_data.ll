; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_datafab.c_datafab_write_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_datafab.c_datafab_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i32 }
%struct.datafab_info = type { i32, i32 }
%struct.scatterlist = type { i32 }

@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@FROM_XFER_BUF = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"datafab_write_data:  Gah! write return code: %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.datafab_info*, i32, i32)* @datafab_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datafab_write_data(%struct.us_data* %0, %struct.datafab_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca %struct.datafab_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scatterlist*, align 8
  store %struct.us_data* %0, %struct.us_data** %6, align 8
  store %struct.datafab_info* %1, %struct.datafab_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.us_data*, %struct.us_data** %6, align 8
  %21 = getelementptr inbounds %struct.us_data, %struct.us_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %10, align 8
  %23 = load %struct.us_data*, %struct.us_data** %6, align 8
  %24 = getelementptr inbounds %struct.us_data, %struct.us_data* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %11, align 8
  store i32 0, i32* %18, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %19, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 268435455
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %29, i32* %5, align 4
  br label %188

30:                                               ; preds = %4
  %31 = load %struct.datafab_info*, %struct.datafab_info** %7, align 8
  %32 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.us_data*, %struct.us_data** %6, align 8
  %37 = load %struct.datafab_info*, %struct.datafab_info** %7, align 8
  %38 = call i32 @datafab_determine_lun(%struct.us_data* %36, %struct.datafab_info* %37)
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %5, align 4
  br label %188

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %30
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.datafab_info*, %struct.datafab_info** %7, align 8
  %48 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %46, %49
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = call i8* @min(i32 %51, i32 65536)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @GFP_NOIO, align 4
  %56 = call i8* @kmalloc(i32 %54, i32 %55)
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = icmp eq i8* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %60, i32* %5, align 4
  br label %188

61:                                               ; preds = %45
  br label %62

62:                                               ; preds = %177, %61
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i8* @min(i32 %63, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %16, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.datafab_info*, %struct.datafab_info** %7, align 8
  %69 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %67, %70
  %72 = and i32 %71, 255
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %13, align 1
  %74 = load i8*, i8** %12, align 8
  %75 = load i32, i32* %16, align 4
  %76 = load %struct.us_data*, %struct.us_data** %6, align 8
  %77 = getelementptr inbounds %struct.us_data, %struct.us_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @FROM_XFER_BUF, align 4
  %80 = call i32 @usb_stor_access_xfer_buf(i8* %74, i32 %75, i32 %78, %struct.scatterlist** %19, i32* %18, i32 %79)
  %81 = load i8*, i8** %10, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  store i8 0, i8* %82, align 1
  %83 = load i8, i8* %13, align 1
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  store i8 %83, i8* %85, align 1
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %86, 255
  %88 = trunc i32 %87 to i8
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  store i8 %88, i8* %90, align 1
  %91 = load i32, i32* %8, align 4
  %92 = ashr i32 %91, 8
  %93 = and i32 %92, 255
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %10, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 3
  store i8 %94, i8* %96, align 1
  %97 = load i32, i32* %8, align 4
  %98 = ashr i32 %97, 16
  %99 = and i32 %98, 255
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 4
  store i8 %100, i8* %102, align 1
  %103 = load %struct.datafab_info*, %struct.datafab_info** %7, align 8
  %104 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 4
  %107 = add nsw i32 224, %106
  %108 = trunc i32 %107 to i8
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 5
  store i8 %108, i8* %110, align 1
  %111 = load i32, i32* %8, align 4
  %112 = ashr i32 %111, 24
  %113 = and i32 %112, 15
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 5
  %116 = load i8, i8* %115, align 1
  %117 = zext i8 %116 to i32
  %118 = or i32 %117, %113
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %115, align 1
  %120 = load i8*, i8** %10, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 6
  store i8 48, i8* %121, align 1
  %122 = load i8*, i8** %10, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 7
  store i8 2, i8* %123, align 1
  %124 = load %struct.us_data*, %struct.us_data** %6, align 8
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @datafab_bulk_write(%struct.us_data* %124, i8* %125, i32 8)
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %62
  br label %184

131:                                              ; preds = %62
  %132 = load %struct.us_data*, %struct.us_data** %6, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = load i32, i32* %16, align 4
  %135 = call i32 @datafab_bulk_write(%struct.us_data* %132, i8* %133, i32 %134)
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %131
  br label %184

140:                                              ; preds = %131
  %141 = load %struct.us_data*, %struct.us_data** %6, align 8
  %142 = load i8*, i8** %11, align 8
  %143 = call i32 @datafab_bulk_read(%struct.us_data* %141, i8* %142, i32 2)
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  br label %184

148:                                              ; preds = %140
  %149 = load i8*, i8** %11, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp ne i32 %152, 80
  br i1 %153, label %154, label %169

154:                                              ; preds = %148
  %155 = load i8*, i8** %11, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 1
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %154
  %161 = load i8*, i8** %11, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 0
  %163 = load i8, i8* %162, align 1
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8 zeroext %163, i8 zeroext %166)
  %168 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %168, i32* %17, align 4
  br label %184

169:                                              ; preds = %154, %148
  %170 = load i8, i8* %13, align 1
  %171 = zext i8 %170 to i32
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, %171
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* %14, align 4
  %176 = sub i32 %175, %174
  store i32 %176, i32* %14, align 4
  br label %177

177:                                              ; preds = %169
  %178 = load i32, i32* %14, align 4
  %179 = icmp ugt i32 %178, 0
  br i1 %179, label %62, label %180

180:                                              ; preds = %177
  %181 = load i8*, i8** %12, align 8
  %182 = call i32 @kfree(i8* %181)
  %183 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %183, i32* %5, align 4
  br label %188

184:                                              ; preds = %160, %147, %139, %130
  %185 = load i8*, i8** %12, align 8
  %186 = call i32 @kfree(i8* %185)
  %187 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %184, %180, %59, %42, %28
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @datafab_determine_lun(%struct.us_data*, %struct.datafab_info*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_stor_access_xfer_buf(i8*, i32, i32, %struct.scatterlist**, i32*, i32) #1

declare dso_local i32 @datafab_bulk_write(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @datafab_bulk_read(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @US_DEBUGP(i8*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

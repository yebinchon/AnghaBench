; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_datafab.c_datafab_read_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_datafab.c_datafab_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i32 }
%struct.datafab_info = type { i32, i32 }
%struct.scatterlist = type { i32 }

@USB_STOR_TRANSPORT_ERROR = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@USB_STOR_XFER_GOOD = common dso_local global i32 0, align 4
@TO_XFER_BUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.datafab_info*, i32, i32)* @datafab_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datafab_read_data(%struct.us_data* %0, %struct.datafab_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.us_data*, align 8
  %7 = alloca %struct.datafab_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.scatterlist*, align 8
  store %struct.us_data* %0, %struct.us_data** %6, align 8
  store %struct.datafab_info* %1, %struct.datafab_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load %struct.us_data*, %struct.us_data** %6, align 8
  %20 = getelementptr inbounds %struct.us_data, %struct.us_data* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %10, align 8
  store i32 0, i32* %17, align 4
  store %struct.scatterlist* null, %struct.scatterlist** %18, align 8
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 268435455
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %25, i32* %5, align 4
  br label %155

26:                                               ; preds = %4
  %27 = load %struct.datafab_info*, %struct.datafab_info** %7, align 8
  %28 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %41

31:                                               ; preds = %26
  %32 = load %struct.us_data*, %struct.us_data** %6, align 8
  %33 = load %struct.datafab_info*, %struct.datafab_info** %7, align 8
  %34 = call i32 @datafab_determine_lun(%struct.us_data* %32, %struct.datafab_info* %33)
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %16, align 4
  store i32 %39, i32* %5, align 4
  br label %155

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.datafab_info*, %struct.datafab_info** %7, align 8
  %44 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = call i8* @min(i32 %47, i32 65536)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @GFP_NOIO, align 4
  %52 = call i8* @kmalloc(i32 %50, i32 %51)
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %41
  %56 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %56, i32* %5, align 4
  br label %155

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %144, %57
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = call i8* @min(i32 %59, i32 %60)
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.datafab_info*, %struct.datafab_info** %7, align 8
  %65 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 %63, %66
  %68 = and i32 %67, 255
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %12, align 1
  %70 = load i8*, i8** %10, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 0
  store i8 0, i8* %71, align 1
  %72 = load i8, i8* %12, align 1
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 1
  store i8 %72, i8* %74, align 1
  %75 = load i32, i32* %8, align 4
  %76 = and i32 %75, 255
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8 %77, i8* %79, align 1
  %80 = load i32, i32* %8, align 4
  %81 = ashr i32 %80, 8
  %82 = and i32 %81, 255
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %10, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 3
  store i8 %83, i8* %85, align 1
  %86 = load i32, i32* %8, align 4
  %87 = ashr i32 %86, 16
  %88 = and i32 %87, 255
  %89 = trunc i32 %88 to i8
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  store i8 %89, i8* %91, align 1
  %92 = load %struct.datafab_info*, %struct.datafab_info** %7, align 8
  %93 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 4
  %96 = add nsw i32 224, %95
  %97 = trunc i32 %96 to i8
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 5
  store i8 %97, i8* %99, align 1
  %100 = load i32, i32* %8, align 4
  %101 = ashr i32 %100, 24
  %102 = and i32 %101, 15
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 5
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = or i32 %106, %102
  %108 = trunc i32 %107 to i8
  store i8 %108, i8* %104, align 1
  %109 = load i8*, i8** %10, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 6
  store i8 32, i8* %110, align 1
  %111 = load i8*, i8** %10, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 7
  store i8 1, i8* %112, align 1
  %113 = load %struct.us_data*, %struct.us_data** %6, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @datafab_bulk_write(%struct.us_data* %113, i8* %114, i32 8)
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %58
  br label %151

120:                                              ; preds = %58
  %121 = load %struct.us_data*, %struct.us_data** %6, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @datafab_bulk_read(%struct.us_data* %121, i8* %122, i32 %123)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* @USB_STOR_XFER_GOOD, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %151

129:                                              ; preds = %120
  %130 = load i8*, i8** %11, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load %struct.us_data*, %struct.us_data** %6, align 8
  %133 = getelementptr inbounds %struct.us_data, %struct.us_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @TO_XFER_BUF, align 4
  %136 = call i32 @usb_stor_access_xfer_buf(i8* %130, i32 %131, i32 %134, %struct.scatterlist** %18, i32* %17, i32 %135)
  %137 = load i8, i8* %12, align 1
  %138 = zext i8 %137 to i32
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %13, align 4
  %143 = sub i32 %142, %141
  store i32 %143, i32* %13, align 4
  br label %144

144:                                              ; preds = %129
  %145 = load i32, i32* %13, align 4
  %146 = icmp ugt i32 %145, 0
  br i1 %146, label %58, label %147

147:                                              ; preds = %144
  %148 = load i8*, i8** %11, align 8
  %149 = call i32 @kfree(i8* %148)
  %150 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %150, i32* %5, align 4
  br label %155

151:                                              ; preds = %128, %119
  %152 = load i8*, i8** %11, align 8
  %153 = call i32 @kfree(i8* %152)
  %154 = load i32, i32* @USB_STOR_TRANSPORT_ERROR, align 4
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %151, %147, %55, %38, %24
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @datafab_determine_lun(%struct.us_data*, %struct.datafab_info*) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @datafab_bulk_write(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @datafab_bulk_read(%struct.us_data*, i8*, i32) #1

declare dso_local i32 @usb_stor_access_xfer_buf(i8*, i32, i32, %struct.scatterlist**, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

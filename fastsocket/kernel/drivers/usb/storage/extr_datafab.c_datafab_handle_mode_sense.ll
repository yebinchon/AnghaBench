; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_datafab.c_datafab_handle_mode_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_datafab.c_datafab_handle_mode_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us_data = type { i8*, i64 }
%struct.scsi_cmnd = type { i32* }
%struct.datafab_info = type { i32, i32, i32 }

@datafab_handle_mode_sense.rw_err_page = internal global [12 x i8] c"\01\0A!\01\00\00\00\00\01\00\00\00", align 1
@datafab_handle_mode_sense.cache_page = internal global <{ i8, i8, i8, [9 x i8] }> <{ i8 8, i8 10, i8 1, [9 x i8] zeroinitializer }>, align 1
@datafab_handle_mode_sense.rbac_page = internal global <{ i8, i8, i8, i8, [8 x i8] }> <{ i8 27, i8 10, i8 0, i8 -127, [8 x i8] zeroinitializer }>, align 1
@datafab_handle_mode_sense.timer_page = internal global [8 x i8] c"\1C\06\00\00\00\00\00\00", align 1
@.str = private unnamed_addr constant [44 x i8] c"datafab_handle_mode_sense:  Current values\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"datafab_handle_mode_sense:  Changeable values\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"datafab_handle_mode_sense:  Default values\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"datafab_handle_mode_sense:  Saves values\0A\00", align 1
@USB_STOR_TRANSPORT_FAILED = common dso_local global i32 0, align 4
@USB_STOR_TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us_data*, %struct.scsi_cmnd*, i32)* @datafab_handle_mode_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @datafab_handle_mode_sense(%struct.us_data* %0, %struct.scsi_cmnd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.us_data*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.datafab_info*, align 8
  %12 = alloca i8*, align 8
  store %struct.us_data* %0, %struct.us_data** %5, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.us_data*, %struct.us_data** %5, align 8
  %14 = getelementptr inbounds %struct.us_data, %struct.us_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.datafab_info*
  store %struct.datafab_info* %16, %struct.datafab_info** %11, align 8
  %17 = load %struct.us_data*, %struct.us_data** %5, align 8
  %18 = getelementptr inbounds %struct.us_data, %struct.us_data* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %12, align 8
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 2
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 6
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %28 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 63
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %9, align 1
  %34 = load i8, i8* %8, align 1
  %35 = zext i8 %34 to i32
  switch i32 %35, label %44 [
    i32 0, label %36
    i32 1, label %38
    i32 2, label %40
    i32 3, label %42
  ]

36:                                               ; preds = %3
  %37 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %44

38:                                               ; preds = %3
  %39 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %44

40:                                               ; preds = %3
  %41 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %44

42:                                               ; preds = %3
  %43 = call i32 @US_DEBUGP(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %44

44:                                               ; preds = %3, %42, %40, %38, %36
  %45 = load i8*, i8** %12, align 8
  %46 = call i32 @memset(i8* %45, i32 0, i32 8)
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  store i8 0, i8* %51, align 1
  store i32 4, i32* %10, align 4
  br label %55

52:                                               ; preds = %44
  %53 = load i8*, i8** %12, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  store i8 0, i8* %54, align 1
  store i32 8, i32* %10, align 4
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i8, i8* %9, align 1
  %57 = zext i8 %56 to i32
  switch i32 %57, label %58 [
    i32 1, label %66
    i32 8, label %76
    i32 27, label %86
    i32 28, label %96
    i32 63, label %106
  ]

58:                                               ; preds = %55
  %59 = load %struct.datafab_info*, %struct.datafab_info** %11, align 8
  %60 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %59, i32 0, i32 0
  store i32 5, i32* %60, align 4
  %61 = load %struct.datafab_info*, %struct.datafab_info** %11, align 8
  %62 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %61, i32 0, i32 1
  store i32 36, i32* %62, align 4
  %63 = load %struct.datafab_info*, %struct.datafab_info** %11, align 8
  %64 = getelementptr inbounds %struct.datafab_info, %struct.datafab_info* %63, i32 0, i32 2
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* @USB_STOR_TRANSPORT_FAILED, align 4
  store i32 %65, i32* %4, align 4
  br label %165

66:                                               ; preds = %55
  %67 = load i8*, i8** %12, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = call i32 @memcpy(i8* %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @datafab_handle_mode_sense.rw_err_page, i64 0, i64 0), i32 12)
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = add i64 %73, 12
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %10, align 4
  br label %143

76:                                               ; preds = %55
  %77 = load i8*, i8** %12, align 8
  %78 = load i32, i32* %10, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = call i32 @memcpy(i8* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* bitcast (<{ i8, i8, i8, [9 x i8] }>* @datafab_handle_mode_sense.cache_page to [12 x i8]*), i64 0, i64 0), i32 12)
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = add i64 %83, 12
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %10, align 4
  br label %143

86:                                               ; preds = %55
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = call i32 @memcpy(i8* %90, i8* getelementptr inbounds ([12 x i8], [12 x i8]* bitcast (<{ i8, i8, i8, i8, [8 x i8] }>* @datafab_handle_mode_sense.rbac_page to [12 x i8]*), i64 0, i64 0), i32 12)
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = add i64 %93, 12
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %10, align 4
  br label %143

96:                                               ; preds = %55
  %97 = load i8*, i8** %12, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = call i32 @memcpy(i8* %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @datafab_handle_mode_sense.timer_page, i64 0, i64 0), i32 8)
  %102 = load i32, i32* %10, align 4
  %103 = zext i32 %102 to i64
  %104 = add i64 %103, 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %10, align 4
  br label %143

106:                                              ; preds = %55
  %107 = load i8*, i8** %12, align 8
  %108 = load i32, i32* %10, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = call i32 @memcpy(i8* %110, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @datafab_handle_mode_sense.timer_page, i64 0, i64 0), i32 8)
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = add i64 %113, 8
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %10, align 4
  %116 = load i8*, i8** %12, align 8
  %117 = load i32, i32* %10, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = call i32 @memcpy(i8* %119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* bitcast (<{ i8, i8, i8, i8, [8 x i8] }>* @datafab_handle_mode_sense.rbac_page to [12 x i8]*), i64 0, i64 0), i32 12)
  %121 = load i32, i32* %10, align 4
  %122 = zext i32 %121 to i64
  %123 = add i64 %122, 12
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %10, align 4
  %125 = load i8*, i8** %12, align 8
  %126 = load i32, i32* %10, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = call i32 @memcpy(i8* %128, i8* getelementptr inbounds ([12 x i8], [12 x i8]* bitcast (<{ i8, i8, i8, [9 x i8] }>* @datafab_handle_mode_sense.cache_page to [12 x i8]*), i64 0, i64 0), i32 12)
  %130 = load i32, i32* %10, align 4
  %131 = zext i32 %130 to i64
  %132 = add i64 %131, 12
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %10, align 4
  %134 = load i8*, i8** %12, align 8
  %135 = load i32, i32* %10, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %134, i64 %136
  %138 = call i32 @memcpy(i8* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @datafab_handle_mode_sense.rw_err_page, i64 0, i64 0), i32 12)
  %139 = load i32, i32* %10, align 4
  %140 = zext i32 %139 to i64
  %141 = add i64 %140, 12
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %10, align 4
  br label %143

143:                                              ; preds = %106, %96, %86, %76, %66
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32, i32* %10, align 4
  %148 = sub i32 %147, 1
  %149 = trunc i32 %148 to i8
  %150 = load i8*, i8** %12, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  store i8 %149, i8* %151, align 1
  br label %159

152:                                              ; preds = %143
  %153 = load i32, i32* %10, align 4
  %154 = sub i32 %153, 2
  %155 = call i32 @cpu_to_be16(i32 %154)
  %156 = load i8*, i8** %12, align 8
  %157 = bitcast i8* %156 to i32*
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  store i32 %155, i32* %158, align 4
  br label %159

159:                                              ; preds = %152, %146
  %160 = load i8*, i8** %12, align 8
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %163 = call i32 @usb_stor_set_xfer_buf(i8* %160, i32 %161, %struct.scsi_cmnd* %162)
  %164 = load i32, i32* @USB_STOR_TRANSPORT_GOOD, align 4
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %159, %58
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

declare dso_local i32 @US_DEBUGP(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @usb_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

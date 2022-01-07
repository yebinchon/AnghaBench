; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hdmi.c_hdmi_spd_infoframe_pack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_hdmi.c_hdmi_spd_infoframe_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_spd_infoframe = type { i64, i64, i64, i64, i32, i32 }

@HDMI_INFOFRAME_HEADER_SIZE = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @hdmi_spd_infoframe_pack(%struct.hdmi_spd_infoframe* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.hdmi_spd_infoframe*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.hdmi_spd_infoframe* %0, %struct.hdmi_spd_infoframe** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i64*
  store i64* %11, i64** %8, align 8
  %12 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %13 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %14 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add i64 %12, %15
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i64, i64* @ENOSPC, align 8
  %22 = sub i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %67

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %9, align 8
  %26 = call i32 @memset(i8* %24, i32 0, i64 %25)
  %27 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %28 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %8, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %33 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %8, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 %34, i64* %36, align 8
  %37 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %38 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64*, i64** %8, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 2
  store i64 %39, i64* %41, align 8
  %42 = load i64*, i64** %8, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 3
  store i64 0, i64* %43, align 8
  %44 = load i64, i64* @HDMI_INFOFRAME_HEADER_SIZE, align 8
  %45 = load i64*, i64** %8, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 %44
  store i64* %46, i64** %8, align 8
  %47 = load i64*, i64** %8, align 8
  %48 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %49 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memcpy(i64* %47, i32 %50, i32 4)
  %52 = load i64*, i64** %8, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 8
  %54 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %55 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @memcpy(i64* %53, i32 %56, i32 4)
  %58 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %5, align 8
  %59 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 24
  store i64 %60, i64* %62, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @hdmi_infoframe_checksum(i8* %63, i64 %64)
  %66 = load i64, i64* %9, align 8
  store i64 %66, i64* %4, align 8
  br label %67

67:                                               ; preds = %23, %20
  %68 = load i64, i64* %4, align 8
  ret i64 %68
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @hdmi_infoframe_checksum(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

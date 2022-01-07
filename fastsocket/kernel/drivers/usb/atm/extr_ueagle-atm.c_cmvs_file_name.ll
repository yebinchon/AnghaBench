; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_cmvs_file_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/atm/extr_ueagle-atm.c_cmvs_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uea_softc = type { i64 }

@__const.cmvs_file_name.file_arr = private unnamed_addr constant [10 x i8] c"CMVxy.bin\00", align 1
@cmv_file = common dso_local global i8** null, align 8
@ADI930 = common dso_local global i64 0, align 8
@EAGLE_IV = common dso_local global i64 0, align 8
@FW_DIR = common dso_local global i32 0, align 4
@UEA_FW_NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c".v2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uea_softc*, i8*, i32)* @cmvs_file_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmvs_file_name(%struct.uea_softc* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.uea_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [10 x i8], align 1
  %8 = alloca i8*, align 8
  store %struct.uea_softc* %0, %struct.uea_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = bitcast [10 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.cmvs_file_name.file_arr, i32 0, i32 0), i64 10, i1 false)
  %10 = load i8**, i8*** @cmv_file, align 8
  %11 = load %struct.uea_softc*, %struct.uea_softc** %4, align 8
  %12 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds i8*, i8** %10, i64 %13
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %3
  %18 = load %struct.uea_softc*, %struct.uea_softc** %4, align 8
  %19 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %18)
  %20 = load i64, i64* @ADI930, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 3
  store i8 57, i8* %23, align 1
  br label %34

24:                                               ; preds = %17
  %25 = load %struct.uea_softc*, %struct.uea_softc** %4, align 8
  %26 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %25)
  %27 = load i64, i64* @EAGLE_IV, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 3
  store i8 52, i8* %30, align 1
  br label %33

31:                                               ; preds = %24
  %32 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 3
  store i8 101, i8* %32, align 1
  br label %33

33:                                               ; preds = %31, %29
  br label %34

34:                                               ; preds = %33, %22
  %35 = load %struct.uea_softc*, %struct.uea_softc** %4, align 8
  %36 = call i64 @IS_ISDN(%struct.uea_softc* %35)
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 105, i32 112
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 4
  store i8 %40, i8* %41, align 1
  %42 = getelementptr inbounds [10 x i8], [10 x i8]* %7, i64 0, i64 0
  store i8* %42, i8** %8, align 8
  br label %50

43:                                               ; preds = %3
  %44 = load i8**, i8*** @cmv_file, align 8
  %45 = load %struct.uea_softc*, %struct.uea_softc** %4, align 8
  %46 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %8, align 8
  br label %50

50:                                               ; preds = %43, %34
  %51 = load i8*, i8** %5, align 8
  %52 = load i32, i32* @FW_DIR, align 4
  %53 = call i32 @strcpy(i8* %51, i32 %52)
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* @UEA_FW_NAME_MAX, align 4
  %57 = call i32 @strlcat(i8* %54, i8* %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* @UEA_FW_NAME_MAX, align 4
  %63 = call i32 @strlcat(i8* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %50
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @UEA_CHIP_VERSION(%struct.uea_softc*) #2

declare dso_local i64 @IS_ISDN(%struct.uea_softc*) #2

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

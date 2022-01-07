; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_isd200.c_isd200_dump_driveid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/storage/extr_isd200.c_isd200_dump_driveid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [29 x i8] c"   Identify Data Structure:\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"      config = 0x%x\0A\00", align 1
@ATA_ID_CONFIG = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"      cyls = 0x%x\0A\00", align 1
@ATA_ID_CYLS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"      heads = 0x%x\0A\00", align 1
@ATA_ID_HEADS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [26 x i8] c"      track_bytes = 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"      sector_bytes = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"      sectors = 0x%x\0A\00", align 1
@ATA_ID_SECTORS = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [27 x i8] c"      serial_no[0] = 0x%x\0A\00", align 1
@ATA_ID_SERNO = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [23 x i8] c"      buf_type = 0x%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"      buf_size = 0x%x\0A\00", align 1
@ATA_ID_BUF_SIZE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"      ecc_bytes = 0x%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"      fw_rev[0] = 0x%x\0A\00", align 1
@ATA_ID_FW_REV = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [23 x i8] c"      model[0] = 0x%x\0A\00", align 1
@ATA_ID_PROD = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [27 x i8] c"      max_multsect = 0x%x\0A\00", align 1
@ATA_ID_MAX_MULTSECT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [23 x i8] c"      dword_io = 0x%x\0A\00", align 1
@ATA_ID_DWORD_IO = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [25 x i8] c"      capability = 0x%x\0A\00", align 1
@ATA_ID_CAPABILITY = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"      tPIO = 0x%x\0A\00", align 1
@ATA_ID_OLD_PIO_MODES = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [19 x i8] c"      tDMA = 0x%x\0A\00", align 1
@ATA_ID_OLD_DMA_MODES = common dso_local global i64 0, align 8
@.str.18 = private unnamed_addr constant [26 x i8] c"      field_valid = 0x%x\0A\00", align 1
@ATA_ID_FIELD_VALID = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [23 x i8] c"      cur_cyls = 0x%x\0A\00", align 1
@ATA_ID_CUR_CYLS = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [24 x i8] c"      cur_heads = 0x%x\0A\00", align 1
@ATA_ID_CUR_HEADS = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [26 x i8] c"      cur_sectors = 0x%x\0A\00", align 1
@ATA_ID_CUR_SECTORS = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [27 x i8] c"      cur_capacity = 0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"      multsect = 0x%x\0A\00", align 1
@ATA_ID_MULTSECT = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [27 x i8] c"      lba_capacity = 0x%x\0A\00", align 1
@ATA_ID_LBA_CAPACITY = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [28 x i8] c"      command_set_1 = 0x%x\0A\00", align 1
@ATA_ID_COMMAND_SET_1 = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [28 x i8] c"      command_set_2 = 0x%x\0A\00", align 1
@ATA_ID_COMMAND_SET_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @isd200_dump_driveid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isd200_dump_driveid(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %4 = load i32*, i32** %2, align 8
  %5 = load i64, i64* @ATA_ID_CONFIG, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i64, i64* @ATA_ID_CYLS, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = load i64, i64* @ATA_ID_HEADS, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = load i64, i64* @ATA_ID_SECTORS, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i64, i64* @ATA_ID_SERNO, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = bitcast i32* %34 to i8*
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %37)
  %39 = load i32*, i32** %2, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 20
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %2, align 8
  %44 = load i64, i64* @ATA_ID_BUF_SIZE, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %46)
  %48 = load i32*, i32** %2, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 22
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %50)
  %52 = load i32*, i32** %2, align 8
  %53 = load i64, i64* @ATA_ID_FW_REV, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = bitcast i32* %54 to i8*
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %57)
  %59 = load i32*, i32** %2, align 8
  %60 = load i64, i64* @ATA_ID_PROD, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = bitcast i32* %61 to i8*
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %2, align 8
  %67 = load i64, i64* @ATA_ID_MAX_MULTSECT, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 255
  %71 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %70)
  %72 = load i32*, i32** %2, align 8
  %73 = load i64, i64* @ATA_ID_DWORD_IO, align 8
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %75)
  %77 = load i32*, i32** %2, align 8
  %78 = load i64, i64* @ATA_ID_CAPABILITY, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 8
  %82 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i32 %81)
  %83 = load i32*, i32** %2, align 8
  %84 = load i64, i64* @ATA_ID_OLD_PIO_MODES, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 8
  %88 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %2, align 8
  %90 = load i64, i64* @ATA_ID_OLD_DMA_MODES, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 8
  %94 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32 %93)
  %95 = load i32*, i32** %2, align 8
  %96 = load i64, i64* @ATA_ID_FIELD_VALID, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i64 0, i64 0), i32 %98)
  %100 = load i32*, i32** %2, align 8
  %101 = load i64, i64* @ATA_ID_CUR_CYLS, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 %103)
  %105 = load i32*, i32** %2, align 8
  %106 = load i64, i64* @ATA_ID_CUR_HEADS, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %108)
  %110 = load i32*, i32** %2, align 8
  %111 = load i64, i64* @ATA_ID_CUR_SECTORS, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0), i32 %113)
  %115 = load i32*, i32** %2, align 8
  %116 = call i32 @ata_id_u32(i32* %115, i32 57)
  %117 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i32 %116)
  %118 = load i32*, i32** %2, align 8
  %119 = load i64, i64* @ATA_ID_MULTSECT, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 255
  %123 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 %122)
  %124 = load i32*, i32** %2, align 8
  %125 = load i32, i32* @ATA_ID_LBA_CAPACITY, align 4
  %126 = call i32 @ata_id_u32(i32* %124, i32 %125)
  %127 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.24, i64 0, i64 0), i32 %126)
  %128 = load i32*, i32** %2, align 8
  %129 = load i64, i64* @ATA_ID_COMMAND_SET_1, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.25, i64 0, i64 0), i32 %131)
  %133 = load i32*, i32** %2, align 8
  %134 = load i64, i64* @ATA_ID_COMMAND_SET_2, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i8*, ...) @US_DEBUGP(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.26, i64 0, i64 0), i32 %136)
  ret void
}

declare dso_local i32 @US_DEBUGP(i8*, ...) #1

declare dso_local i32 @ata_id_u32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

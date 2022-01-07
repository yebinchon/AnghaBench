; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video-upstream-ch2.c_cx25821_video_upstream_irq_ch2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video-upstream-ch2.c_cx25821_video_upstream_irq_ch2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i64, i64, i32, i32, i32*, i64, i64, i64, i32, i32, %struct.sram_channel* }
%struct.sram_channel = type { i32, i32, i32 }

@NTSC_FIELD_HEIGHT = common dso_local global i32 0, align 4
@Y422_LINE_SZ = common dso_local global i32 0, align 4
@FLD_VID_SRC_RISC1 = common dso_local global i32 0, align 4
@_intr_msk = common dso_local global i32 0, align 4
@ODD_FLD_NTSC_PROG_SIZE = common dso_local global i32 0, align 4
@PAL_FIELD_HEIGHT = common dso_local global i32 0, align 4
@ODD_FLD_PAL_PROG_SIZE = common dso_local global i32 0, align 4
@PIXEL_FRMT_411 = common dso_local global i64 0, align 8
@Y411_LINE_SZ = common dso_local global i32 0, align 4
@TOP_OFFSET = common dso_local global i32 0, align 4
@FIFO_DISABLE = common dso_local global i32 0, align 4
@ODD_FIELD = common dso_local global i32 0, align 4
@RISC_JUMP = common dso_local global i64 0, align 8
@END_OF_FILE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"cx25821: EOF Channel 2 Framecount = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_video_upstream_irq_ch2(%struct.cx25821_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx25821_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sram_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %17 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %16, i32 0, i32 11
  %18 = load %struct.sram_channel*, %struct.sram_channel** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %18, i64 %20
  store %struct.sram_channel* %21, %struct.sram_channel** %9, align 8
  %22 = load i32, i32* @NTSC_FIELD_HEIGHT, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @Y422_LINE_SZ, align 4
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @FLD_VID_SRC_RISC1, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %132

28:                                               ; preds = %3
  %29 = load %struct.sram_channel*, %struct.sram_channel** %9, align 8
  %30 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cx_read(i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.sram_channel*, %struct.sram_channel** %9, align 8
  %34 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @cx_read(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.sram_channel*, %struct.sram_channel** %9, align 8
  %38 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @_intr_msk, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = call i32 @cx_write(i32 %39, i32 %43)
  %45 = load %struct.sram_channel*, %struct.sram_channel** %9, align 8
  %46 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @_intr_msk, align 4
  %49 = call i32 @cx_write(i32 %47, i32 %48)
  %50 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %51 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %50, i32 0, i32 4
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %55 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %57 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %60 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %59, i32 0, i32 9
  %61 = call i32 @queue_work(i32 %58, i32* %60)
  %62 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %63 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %62, i32 0, i32 8
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %128

66:                                               ; preds = %28
  %67 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %68 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %67, i32 0, i32 8
  store i64 0, i64* %68, align 8
  %69 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %70 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %69, i32 0, i32 7
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* @ODD_FLD_NTSC_PROG_SIZE, align 4
  store i32 %76, i32* %12, align 4
  br label %80

77:                                               ; preds = %66
  %78 = load i32, i32* @PAL_FIELD_HEIGHT, align 4
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @ODD_FLD_PAL_PROG_SIZE, align 4
  store i32 %79, i32* %12, align 4
  br label %80

80:                                               ; preds = %77, %73
  %81 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %82 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %127

85:                                               ; preds = %80
  %86 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %87 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @PIXEL_FRMT_411, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @Y411_LINE_SZ, align 4
  br label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @Y422_LINE_SZ, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  store i32 %96, i32* %11, align 4
  %97 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %98 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  store i64 %102, i64* %13, align 8
  %103 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %104 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %105 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %104, i32 0, i32 5
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* @TOP_OFFSET, align 4
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @FIFO_DISABLE, align 4
  %111 = load i32, i32* @ODD_FIELD, align 4
  %112 = call i32* @cx25821_update_riscprogram_ch2(%struct.cx25821_dev* %103, i32* %106, i32 %107, i32 %108, i32 0, i32 %109, i32 %110, i32 %111)
  store i32* %112, i32** %14, align 8
  %113 = load i64, i64* @RISC_JUMP, align 8
  %114 = call i8* @cpu_to_le32(i64 %113)
  %115 = ptrtoint i8* %114 to i32
  %116 = load i32*, i32** %14, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %14, align 8
  store i32 %115, i32* %116, align 4
  %118 = load i64, i64* %13, align 8
  %119 = call i8* @cpu_to_le32(i64 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load i32*, i32** %14, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %14, align 8
  store i32 %120, i32* %121, align 4
  %123 = call i8* @cpu_to_le32(i64 0)
  %124 = ptrtoint i8* %123 to i32
  %125 = load i32*, i32** %14, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %14, align 8
  store i32 %124, i32* %125, align 4
  br label %127

127:                                              ; preds = %95, %80
  br label %128

128:                                              ; preds = %127, %28
  %129 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %130 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %129, i32 0, i32 4
  %131 = call i32 @spin_unlock(i32* %130)
  br label %132

132:                                              ; preds = %128, %3
  %133 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %134 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @END_OF_FILE, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load %struct.cx25821_dev*, %struct.cx25821_dev** %5, align 8
  %140 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %141)
  store i32 -1, i32* %4, align 4
  br label %155

143:                                              ; preds = %132
  %144 = load %struct.sram_channel*, %struct.sram_channel** %9, align 8
  %145 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @cx_read(i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load %struct.sram_channel*, %struct.sram_channel** %9, align 8
  %149 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @_intr_msk, align 4
  %152 = load i32, i32* %8, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %8, align 4
  %154 = call i32 @cx_write(i32 %150, i32 %153)
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %143, %138
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @cx_read(i32) #1

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32* @cx25821_update_riscprogram_ch2(%struct.cx25821_dev*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

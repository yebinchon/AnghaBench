; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video-upstream.c_cx25821_risc_buffer_upstream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video-upstream.c_cx25821_risc_buffer_upstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32, i64, i32*, i64 }
%struct.pci_dev = type { i32 }

@RISC_CNT_RESET = common dso_local global i32 0, align 4
@FRAME1_VID_PROG_SIZE = common dso_local global i32 0, align 4
@Y411_LINE_SZ = common dso_local global i32 0, align 4
@FRAME_SIZE_NTSC_Y411 = common dso_local global i32 0, align 4
@FRAME_SIZE_NTSC_Y422 = common dso_local global i32 0, align 4
@PAL_VID_PROG_SIZE = common dso_local global i32 0, align 4
@FRAME_SIZE_PAL_Y411 = common dso_local global i32 0, align 4
@FRAME_SIZE_PAL_Y422 = common dso_local global i32 0, align 4
@NUM_FRAMES = common dso_local global i32 0, align 4
@UNSET = common dso_local global i32 0, align 4
@FIFO_ENABLE = common dso_local global i32 0, align 4
@FIFO_DISABLE = common dso_local global i32 0, align 4
@ODD_FIELD = common dso_local global i32 0, align 4
@EVEN_FIELD = common dso_local global i32 0, align 4
@RISC_CNT_INC = common dso_local global i32 0, align 4
@RISC_JUMP = common dso_local global i32 0, align 4
@RISC_IRQ1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_risc_buffer_upstream(%struct.cx25821_dev* %0, %struct.pci_dev* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cx25821_dev*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %6, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* %10, align 4
  %23 = lshr i32 %22, 1
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %25 = load i32, i32* @RISC_CNT_RESET, align 4
  store i32 %25, i32* %19, align 4
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %20, align 4
  %27 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %28 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %5
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @FRAME1_VID_PROG_SIZE, align 4
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @Y411_LINE_SZ, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @FRAME_SIZE_NTSC_Y411, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @FRAME_SIZE_NTSC_Y422, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %16, align 4
  br label %55

44:                                               ; preds = %5
  %45 = load i32, i32* @PAL_VID_PROG_SIZE, align 4
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @Y411_LINE_SZ, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @FRAME_SIZE_PAL_Y411, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @FRAME_SIZE_PAL_Y422, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  store i32 %54, i32* %16, align 4
  br label %55

55:                                               ; preds = %53, %42
  %56 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %57 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  store i32* %58, i32** %11, align 8
  store i32 0, i32* %15, align 4
  br label %59

59:                                               ; preds = %142, %55
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @NUM_FRAMES, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %145

63:                                               ; preds = %59
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* %15, align 4
  %66 = mul nsw i32 %64, %65
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* @UNSET, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %63
  %71 = load i32, i32* %15, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* @FIFO_ENABLE, align 4
  br label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @FIFO_DISABLE, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %12, align 4
  %79 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %82 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %17, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @ODD_FIELD, align 4
  %92 = call i32* @cx25821_risc_field_upstream(%struct.cx25821_dev* %79, i32* %80, i64 %86, i32 %87, i32 0, i32 %88, i32 %89, i32 %90, i32 %91)
  store i32* %92, i32** %11, align 8
  br label %93

93:                                               ; preds = %77, %63
  %94 = load i32, i32* @FIFO_DISABLE, align 4
  store i32 %94, i32* %12, align 4
  %95 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %96 = load i32*, i32** %11, align 8
  %97 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %98 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @EVEN_FIELD, align 4
  %108 = call i32* @cx25821_risc_field_upstream(%struct.cx25821_dev* %95, i32* %96, i64 %102, i32 %103, i32 512, i32 %104, i32 %105, i32 %106, i32 %107)
  store i32* %108, i32** %11, align 8
  %109 = load i32, i32* %15, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %93
  %112 = load i32, i32* @RISC_CNT_RESET, align 4
  store i32 %112, i32* %19, align 4
  %113 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %114 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %18, align 4
  %117 = add nsw i32 %115, %116
  store i32 %117, i32* %21, align 4
  br label %123

118:                                              ; preds = %93
  %119 = load %struct.cx25821_dev*, %struct.cx25821_dev** %6, align 8
  %120 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  store i32 %121, i32* %21, align 4
  %122 = load i32, i32* @RISC_CNT_INC, align 4
  store i32 %122, i32* %19, align 4
  br label %123

123:                                              ; preds = %118, %111
  %124 = load i32, i32* @RISC_JUMP, align 4
  %125 = load i32, i32* @RISC_IRQ1, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %19, align 4
  %128 = or i32 %126, %127
  %129 = call i8* @cpu_to_le32(i32 %128)
  %130 = ptrtoint i8* %129 to i32
  %131 = load i32*, i32** %11, align 8
  %132 = getelementptr inbounds i32, i32* %131, i32 1
  store i32* %132, i32** %11, align 8
  store i32 %130, i32* %131, align 4
  %133 = load i32, i32* %21, align 4
  %134 = call i8* @cpu_to_le32(i32 %133)
  %135 = ptrtoint i8* %134 to i32
  %136 = load i32*, i32** %11, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %11, align 8
  store i32 %135, i32* %136, align 4
  %138 = call i8* @cpu_to_le32(i32 0)
  %139 = ptrtoint i8* %138 to i32
  %140 = load i32*, i32** %11, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %11, align 8
  store i32 %139, i32* %140, align 4
  br label %142

142:                                              ; preds = %123
  %143 = load i32, i32* %15, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %15, align 4
  br label %59

145:                                              ; preds = %59
  ret i32 0
}

declare dso_local i32* @cx25821_risc_field_upstream(%struct.cx25821_dev*, i32*, i64, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video-upstream-ch2.c_cx25821_risc_field_upstream_ch2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-video-upstream-ch2.c_cx25821_risc_field_upstream_ch2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i64, i32, %struct.sram_channel* }
%struct.sram_channel = type { i32 }

@NO_SYNC_LINE = common dso_local global i32 0, align 4
@RISC_RESYNC = common dso_local global i32 0, align 4
@USE_RISC_NOOP_VIDEO = common dso_local global i64 0, align 8
@NUM_NO_OPS = common dso_local global i32 0, align 4
@RISC_NOOP = common dso_local global i32 0, align 4
@RISC_READ = common dso_local global i32 0, align 4
@RISC_SOL = common dso_local global i32 0, align 4
@RISC_EOL = common dso_local global i32 0, align 4
@NTSC_FIELD_HEIGHT = common dso_local global i32 0, align 4
@RISC_WRITECR = common dso_local global i32 0, align 4
@FLD_VID_FIFO_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.cx25821_dev*, i32*, i32, i32, i32, i32, i32, i32, i32)* @cx25821_risc_field_upstream_ch2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cx25821_risc_field_upstream_ch2(%struct.cx25821_dev* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.cx25821_dev*, align 8
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
  %21 = alloca %struct.sram_channel*, align 8
  %22 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load %struct.cx25821_dev*, %struct.cx25821_dev** %10, align 8
  %24 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %23, i32 0, i32 2
  %25 = load %struct.sram_channel*, %struct.sram_channel** %24, align 8
  %26 = load %struct.cx25821_dev*, %struct.cx25821_dev** %10, align 8
  %27 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %25, i64 %28
  store %struct.sram_channel* %29, %struct.sram_channel** %21, align 8
  %30 = load i32, i32* %15, align 4
  %31 = mul i32 %30, 2
  store i32 %31, i32* %22, align 4
  %32 = load i32, i32* %14, align 4
  %33 = load i32, i32* @NO_SYNC_LINE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %9
  %36 = load i32, i32* @RISC_RESYNC, align 4
  %37 = load i32, i32* %14, align 4
  %38 = or i32 %36, %37
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %11, align 8
  store i32 %40, i32* %41, align 4
  br label %43

43:                                               ; preds = %35, %9
  %44 = load i64, i64* @USE_RISC_NOOP_VIDEO, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  store i32 0, i32* %20, align 4
  br label %47

47:                                               ; preds = %57, %46
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* @NUM_NO_OPS, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = load i32, i32* @RISC_NOOP, align 4
  %53 = call i8* @cpu_to_le32(i32 %52)
  %54 = ptrtoint i8* %53 to i32
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  br label %57

57:                                               ; preds = %51
  %58 = load i32, i32* %20, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %20, align 4
  br label %47

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60, %43
  store i32 0, i32* %19, align 4
  br label %62

62:                                               ; preds = %127, %61
  %63 = load i32, i32* %19, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %130

66:                                               ; preds = %62
  %67 = load i32, i32* @RISC_READ, align 4
  %68 = load i32, i32* @RISC_SOL, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @RISC_EOL, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %15, align 4
  %73 = or i32 %71, %72
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %13, align 4
  %80 = add i32 %78, %79
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %11, align 8
  store i32 %82, i32* %83, align 4
  %85 = call i8* @cpu_to_le32(i32 0)
  %86 = ptrtoint i8* %85 to i32
  %87 = load i32*, i32** %11, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %11, align 8
  store i32 %86, i32* %87, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @NTSC_FIELD_HEIGHT, align 4
  %91 = icmp ule i32 %89, %90
  br i1 %91, label %102, label %92

92:                                               ; preds = %66
  %93 = load i32, i32* %19, align 4
  %94 = load i32, i32* @NTSC_FIELD_HEIGHT, align 4
  %95 = sub i32 %94, 1
  %96 = icmp ult i32 %93, %95
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load %struct.cx25821_dev*, %struct.cx25821_dev** %10, align 8
  %99 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %97, %92, %66
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* %13, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* %13, align 4
  br label %106

106:                                              ; preds = %102, %97
  %107 = load i32, i32* %17, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %106
  %110 = load i32, i32* %19, align 4
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %112, label %126

112:                                              ; preds = %109
  %113 = load i32, i32* @RISC_WRITECR, align 4
  %114 = load i32*, i32** %11, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %11, align 8
  store i32 %113, i32* %114, align 4
  %116 = load %struct.sram_channel*, %struct.sram_channel** %21, align 8
  %117 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %11, align 8
  store i32 %118, i32* %119, align 4
  %121 = load i32, i32* @FLD_VID_FIFO_EN, align 4
  %122 = load i32*, i32** %11, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %11, align 8
  store i32 %121, i32* %122, align 4
  %124 = load i32*, i32** %11, align 8
  %125 = getelementptr inbounds i32, i32* %124, i32 1
  store i32* %125, i32** %11, align 8
  store i32 1, i32* %124, align 4
  br label %126

126:                                              ; preds = %112, %109, %106
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %19, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %19, align 4
  br label %62

130:                                              ; preds = %62
  %131 = load i32*, i32** %11, align 8
  ret i32* %131
}

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

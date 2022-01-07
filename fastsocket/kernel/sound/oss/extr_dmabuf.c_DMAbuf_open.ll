; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_dmabuf.c_DMAbuf_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audio_operations = type { i32, i32, i32, i32, %struct.dma_buffparms*, %struct.TYPE_2__*, %struct.dma_buffparms* }
%struct.TYPE_2__ = type { i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32, i32)*, i32 (i32)* }
%struct.dma_buffparms = type { i64, i32, i32, i32 }

@audio_devs = common dso_local global %struct.audio_operations** null, align 8
@ENXIO = common dso_local global i32 0, align 4
@DMA_DUPLEX = common dso_local global i32 0, align 4
@OPEN_WRITE = common dso_local global i32 0, align 4
@OPEN_READ = common dso_local global i32 0, align 4
@DSP_DEFAULT_SPEED = common dso_local global i32 0, align 4
@DMODE_OUTPUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DMAbuf_open(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.audio_operations*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_buffparms*, align 8
  %9 = alloca %struct.dma_buffparms*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load %struct.audio_operations**, %struct.audio_operations*** @audio_devs, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.audio_operations*, %struct.audio_operations** %10, i64 %12
  %14 = load %struct.audio_operations*, %struct.audio_operations** %13, align 8
  store %struct.audio_operations* %14, %struct.audio_operations** %6, align 8
  store %struct.dma_buffparms* null, %struct.dma_buffparms** %8, align 8
  store %struct.dma_buffparms* null, %struct.dma_buffparms** %9, align 8
  %15 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %16 = icmp ne %struct.audio_operations* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %183

20:                                               ; preds = %2
  %21 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %22 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_DUPLEX, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %20
  %28 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %29 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %28, i32 0, i32 4
  %30 = load %struct.dma_buffparms*, %struct.dma_buffparms** %29, align 8
  %31 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %32 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %31, i32 0, i32 6
  store %struct.dma_buffparms* %30, %struct.dma_buffparms** %32, align 8
  br label %33

33:                                               ; preds = %27, %20
  %34 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %35 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 @check_driver(%struct.TYPE_2__* %36)
  %38 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %39 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %38, i32 0, i32 5
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (i32, i32)*, i32 (i32, i32)** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 %42(i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %183

49:                                               ; preds = %33
  %50 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %51 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %50, i32 0, i32 4
  %52 = load %struct.dma_buffparms*, %struct.dma_buffparms** %51, align 8
  store %struct.dma_buffparms* %52, %struct.dma_buffparms** %9, align 8
  %53 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %54 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %53, i32 0, i32 6
  %55 = load %struct.dma_buffparms*, %struct.dma_buffparms** %54, align 8
  store %struct.dma_buffparms* %55, %struct.dma_buffparms** %8, align 8
  %56 = load %struct.dma_buffparms*, %struct.dma_buffparms** %8, align 8
  %57 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %58 = icmp eq %struct.dma_buffparms* %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load i32, i32* @DMA_DUPLEX, align 4
  %61 = xor i32 %60, -1
  %62 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %63 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %59, %49
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @OPEN_WRITE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %75 = call i32 @open_dmap(%struct.audio_operations* %72, i32 %73, %struct.dma_buffparms* %74)
  store i32 %75, i32* %7, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %79 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %78, i32 0, i32 5
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 4
  %82 = load i32 (i32)*, i32 (i32)** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 %82(i32 %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %3, align 4
  br label %183

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %66
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %90 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @OPEN_READ, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %105, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @OPEN_WRITE, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %94
  %99 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %100 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @DMA_DUPLEX, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %130

105:                                              ; preds = %98, %87
  %106 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.dma_buffparms*, %struct.dma_buffparms** %8, align 8
  %109 = call i32 @open_dmap(%struct.audio_operations* %106, i32 %107, %struct.dma_buffparms* %108)
  store i32 %109, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %105
  %112 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %113 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %112, i32 0, i32 5
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  %116 = load i32 (i32)*, i32 (i32)** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 %116(i32 %117)
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @OPEN_WRITE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %111
  %124 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %125 = load %struct.dma_buffparms*, %struct.dma_buffparms** %9, align 8
  %126 = call i32 @close_dmap(%struct.audio_operations* %124, %struct.dma_buffparms* %125)
  br label %127

127:                                              ; preds = %123, %111
  %128 = load i32, i32* %7, align 4
  store i32 %128, i32* %3, align 4
  br label %183

129:                                              ; preds = %105
  br label %130

130:                                              ; preds = %129, %98, %94
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %133 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %135 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %134, i32 0, i32 3
  store i32 1, i32* %135, align 4
  %136 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %137 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %136, i32 0, i32 5
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  %140 = load i32 (i32, i32)*, i32 (i32, i32)** %139, align 8
  %141 = load i32, i32* %4, align 4
  %142 = call i32 %140(i32 %141, i32 8)
  %143 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %144 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %143, i32 0, i32 5
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i32 (i32, i32)*, i32 (i32, i32)** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = call i32 %147(i32 %148, i32 1)
  %150 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %151 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %150, i32 0, i32 5
  %152 = load %struct.TYPE_2__*, %struct.TYPE_2__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  %154 = load i32 (i32, i32)*, i32 (i32, i32)** %153, align 8
  %155 = load i32, i32* %4, align 4
  %156 = load i32, i32* @DSP_DEFAULT_SPEED, align 4
  %157 = call i32 %154(i32 %155, i32 %156)
  %158 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %159 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %158, i32 0, i32 4
  %160 = load %struct.dma_buffparms*, %struct.dma_buffparms** %159, align 8
  %161 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @DMODE_OUTPUT, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %182

165:                                              ; preds = %130
  %166 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %167 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %166, i32 0, i32 4
  %168 = load %struct.dma_buffparms*, %struct.dma_buffparms** %167, align 8
  %169 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %172 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %171, i32 0, i32 4
  %173 = load %struct.dma_buffparms*, %struct.dma_buffparms** %172, align 8
  %174 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.audio_operations*, %struct.audio_operations** %6, align 8
  %177 = getelementptr inbounds %struct.audio_operations, %struct.audio_operations* %176, i32 0, i32 4
  %178 = load %struct.dma_buffparms*, %struct.dma_buffparms** %177, align 8
  %179 = getelementptr inbounds %struct.dma_buffparms, %struct.dma_buffparms* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @memset(i32 %170, i32 %175, i32 %180)
  br label %182

182:                                              ; preds = %165, %130
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %182, %127, %77, %47, %17
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @check_driver(%struct.TYPE_2__*) #1

declare dso_local i32 @open_dmap(%struct.audio_operations*, i32, %struct.dma_buffparms*) #1

declare dso_local i32 @close_dmap(%struct.audio_operations*, %struct.dma_buffparms*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

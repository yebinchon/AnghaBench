; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_risc_field_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_risc_field_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@NO_SYNC_LINE = common dso_local global i32 0, align 4
@RISC_RESYNC = common dso_local global i32 0, align 4
@RISC_SOL = common dso_local global i32 0, align 4
@RISC_IRQ1 = common dso_local global i32 0, align 4
@RISC_CNT_INC = common dso_local global i32 0, align 4
@RISC_WRITE = common dso_local global i32 0, align 4
@RISC_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.scatterlist*, i32, i32, i32, i32, i32, i32)* @cx25821_risc_field_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cx25821_risc_field_audio(i32* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scatterlist*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @NO_SYNC_LINE, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %8
  %25 = load i32, i32* @RISC_RESYNC, align 4
  %26 = load i32, i32* %12, align 4
  %27 = or i32 %25, %26
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  br label %32

32:                                               ; preds = %24, %8
  %33 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %33, %struct.scatterlist** %17, align 8
  store i32 0, i32* %18, align 4
  br label %34

34:                                               ; preds = %200, %32
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %203

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %45 = call i32 @sg_dma_len(%struct.scatterlist* %44)
  %46 = icmp uge i32 %43, %45
  br label %47

47:                                               ; preds = %42, %39
  %48 = phi i1 [ false, %39 ], [ %46, %42 ]
  br i1 %48, label %49, label %56

49:                                               ; preds = %47
  %50 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %51 = call i32 @sg_dma_len(%struct.scatterlist* %50)
  %52 = load i32, i32* %11, align 4
  %53 = sub i32 %52, %51
  store i32 %53, i32* %11, align 4
  %54 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %55 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %54, i32 1
  store %struct.scatterlist* %55, %struct.scatterlist** %17, align 8
  br label %39

56:                                               ; preds = %47
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %56
  %60 = load i32, i32* %18, align 4
  %61 = icmp ugt i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %16, align 4
  %65 = urem i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @RISC_SOL, align 4
  %69 = load i32, i32* @RISC_IRQ1, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @RISC_CNT_INC, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %20, align 4
  br label %75

73:                                               ; preds = %62, %59, %56
  %74 = load i32, i32* @RISC_SOL, align 4
  store i32 %74, i32* %20, align 4
  br label %75

75:                                               ; preds = %73, %67
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %78 = call i32 @sg_dma_len(%struct.scatterlist* %77)
  %79 = load i32, i32* %11, align 4
  %80 = sub i32 %78, %79
  %81 = icmp ule i32 %76, %80
  br i1 %81, label %82, label %109

82:                                               ; preds = %75
  %83 = load i32, i32* @RISC_WRITE, align 4
  %84 = load i32, i32* %20, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @RISC_EOL, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* %13, align 4
  %89 = or i32 %87, %88
  %90 = call i8* @cpu_to_le32(i32 %89)
  %91 = ptrtoint i8* %90 to i32
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i32 1
  store i32* %93, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  %94 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %95 = call i32 @sg_dma_address(%struct.scatterlist* %94)
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %95, %96
  %98 = call i8* @cpu_to_le32(i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %9, align 8
  store i32 %99, i32* %100, align 4
  %102 = call i8* @cpu_to_le32(i32 0)
  %103 = ptrtoint i8* %102 to i32
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %9, align 8
  store i32 %103, i32* %104, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %11, align 4
  %108 = add i32 %107, %106
  store i32 %108, i32* %11, align 4
  br label %196

109:                                              ; preds = %75
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %19, align 4
  %111 = load i32, i32* @RISC_WRITE, align 4
  %112 = load i32, i32* %20, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %115 = call i32 @sg_dma_len(%struct.scatterlist* %114)
  %116 = load i32, i32* %11, align 4
  %117 = sub i32 %115, %116
  %118 = or i32 %113, %117
  %119 = call i8* @cpu_to_le32(i32 %118)
  %120 = ptrtoint i8* %119 to i32
  %121 = load i32*, i32** %9, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %9, align 8
  store i32 %120, i32* %121, align 4
  %123 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %124 = call i32 @sg_dma_address(%struct.scatterlist* %123)
  %125 = load i32, i32* %11, align 4
  %126 = add i32 %124, %125
  %127 = call i8* @cpu_to_le32(i32 %126)
  %128 = ptrtoint i8* %127 to i32
  %129 = load i32*, i32** %9, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %9, align 8
  store i32 %128, i32* %129, align 4
  %131 = call i8* @cpu_to_le32(i32 0)
  %132 = ptrtoint i8* %131 to i32
  %133 = load i32*, i32** %9, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %9, align 8
  store i32 %132, i32* %133, align 4
  %135 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %136 = call i32 @sg_dma_len(%struct.scatterlist* %135)
  %137 = load i32, i32* %11, align 4
  %138 = sub i32 %136, %137
  %139 = load i32, i32* %19, align 4
  %140 = sub i32 %139, %138
  store i32 %140, i32* %19, align 4
  store i32 0, i32* %11, align 4
  %141 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %142 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %141, i32 1
  store %struct.scatterlist* %142, %struct.scatterlist** %17, align 8
  br label %143

143:                                              ; preds = %148, %109
  %144 = load i32, i32* %19, align 4
  %145 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %146 = call i32 @sg_dma_len(%struct.scatterlist* %145)
  %147 = icmp ugt i32 %144, %146
  br i1 %147, label %148, label %173

148:                                              ; preds = %143
  %149 = load i32, i32* @RISC_WRITE, align 4
  %150 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %151 = call i32 @sg_dma_len(%struct.scatterlist* %150)
  %152 = or i32 %149, %151
  %153 = call i8* @cpu_to_le32(i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %9, align 8
  store i32 %154, i32* %155, align 4
  %157 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %158 = call i32 @sg_dma_address(%struct.scatterlist* %157)
  %159 = call i8* @cpu_to_le32(i32 %158)
  %160 = ptrtoint i8* %159 to i32
  %161 = load i32*, i32** %9, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %9, align 8
  store i32 %160, i32* %161, align 4
  %163 = call i8* @cpu_to_le32(i32 0)
  %164 = ptrtoint i8* %163 to i32
  %165 = load i32*, i32** %9, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %9, align 8
  store i32 %164, i32* %165, align 4
  %167 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %168 = call i32 @sg_dma_len(%struct.scatterlist* %167)
  %169 = load i32, i32* %19, align 4
  %170 = sub i32 %169, %168
  store i32 %170, i32* %19, align 4
  %171 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %172 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %171, i32 1
  store %struct.scatterlist* %172, %struct.scatterlist** %17, align 8
  br label %143

173:                                              ; preds = %143
  %174 = load i32, i32* @RISC_WRITE, align 4
  %175 = load i32, i32* @RISC_EOL, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* %19, align 4
  %178 = or i32 %176, %177
  %179 = call i8* @cpu_to_le32(i32 %178)
  %180 = ptrtoint i8* %179 to i32
  %181 = load i32*, i32** %9, align 8
  %182 = getelementptr inbounds i32, i32* %181, i32 1
  store i32* %182, i32** %9, align 8
  store i32 %180, i32* %181, align 4
  %183 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %184 = call i32 @sg_dma_address(%struct.scatterlist* %183)
  %185 = call i8* @cpu_to_le32(i32 %184)
  %186 = ptrtoint i8* %185 to i32
  %187 = load i32*, i32** %9, align 8
  %188 = getelementptr inbounds i32, i32* %187, i32 1
  store i32* %188, i32** %9, align 8
  store i32 %186, i32* %187, align 4
  %189 = call i8* @cpu_to_le32(i32 0)
  %190 = ptrtoint i8* %189 to i32
  %191 = load i32*, i32** %9, align 8
  %192 = getelementptr inbounds i32, i32* %191, i32 1
  store i32* %192, i32** %9, align 8
  store i32 %190, i32* %191, align 4
  %193 = load i32, i32* %19, align 4
  %194 = load i32, i32* %11, align 4
  %195 = add i32 %194, %193
  store i32 %195, i32* %11, align 4
  br label %196

196:                                              ; preds = %173, %82
  %197 = load i32, i32* %14, align 4
  %198 = load i32, i32* %11, align 4
  %199 = add i32 %198, %197
  store i32 %199, i32* %11, align 4
  br label %200

200:                                              ; preds = %196
  %201 = load i32, i32* %18, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %18, align 4
  br label %34

203:                                              ; preds = %34
  %204 = load i32*, i32** %9, align 8
  ret i32* %204
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

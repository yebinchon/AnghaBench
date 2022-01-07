; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_risc_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_risc_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@NO_SYNC_LINE = common dso_local global i32 0, align 4
@RISC_RESYNC = common dso_local global i32 0, align 4
@RISC_WRITE = common dso_local global i32 0, align 4
@RISC_SOL = common dso_local global i32 0, align 4
@RISC_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.scatterlist*, i32, i32, i32, i32, i32)* @cx25821_risc_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cx25821_risc_field(i32* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @NO_SYNC_LINE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %7
  %22 = load i32, i32* @RISC_RESYNC, align 4
  %23 = load i32, i32* %11, align 4
  %24 = or i32 %22, %23
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  br label %29

29:                                               ; preds = %21, %7
  %30 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %30, %struct.scatterlist** %15, align 8
  store i32 0, i32* %16, align 4
  br label %31

31:                                               ; preds = %178, %29
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %35, label %181

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %46, %35
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %42 = call i32 @sg_dma_len(%struct.scatterlist* %41)
  %43 = icmp uge i32 %40, %42
  br label %44

44:                                               ; preds = %39, %36
  %45 = phi i1 [ false, %36 ], [ %43, %39 ]
  br i1 %45, label %46, label %53

46:                                               ; preds = %44
  %47 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %48 = call i32 @sg_dma_len(%struct.scatterlist* %47)
  %49 = load i32, i32* %10, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %52 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %51, i32 1
  store %struct.scatterlist* %52, %struct.scatterlist** %15, align 8
  br label %36

53:                                               ; preds = %44
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %56 = call i32 @sg_dma_len(%struct.scatterlist* %55)
  %57 = load i32, i32* %10, align 4
  %58 = sub i32 %56, %57
  %59 = icmp ule i32 %54, %58
  br i1 %59, label %60, label %87

60:                                               ; preds = %53
  %61 = load i32, i32* @RISC_WRITE, align 4
  %62 = load i32, i32* @RISC_SOL, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @RISC_EOL, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %12, align 4
  %67 = or i32 %65, %66
  %68 = call i8* @cpu_to_le32(i32 %67)
  %69 = ptrtoint i8* %68 to i32
  %70 = load i32*, i32** %8, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  %72 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %73 = call i32 @sg_dma_address(%struct.scatterlist* %72)
  %74 = load i32, i32* %10, align 4
  %75 = add i32 %73, %74
  %76 = call i8* @cpu_to_le32(i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  %80 = call i8* @cpu_to_le32(i32 0)
  %81 = ptrtoint i8* %80 to i32
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %8, align 8
  store i32 %81, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %85, %84
  store i32 %86, i32* %10, align 4
  br label %174

87:                                               ; preds = %53
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* @RISC_WRITE, align 4
  %90 = load i32, i32* @RISC_SOL, align 4
  %91 = or i32 %89, %90
  %92 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %93 = call i32 @sg_dma_len(%struct.scatterlist* %92)
  %94 = load i32, i32* %10, align 4
  %95 = sub i32 %93, %94
  %96 = or i32 %91, %95
  %97 = call i8* @cpu_to_le32(i32 %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %8, align 8
  store i32 %98, i32* %99, align 4
  %101 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %102 = call i32 @sg_dma_address(%struct.scatterlist* %101)
  %103 = load i32, i32* %10, align 4
  %104 = add i32 %102, %103
  %105 = call i8* @cpu_to_le32(i32 %104)
  %106 = ptrtoint i8* %105 to i32
  %107 = load i32*, i32** %8, align 8
  %108 = getelementptr inbounds i32, i32* %107, i32 1
  store i32* %108, i32** %8, align 8
  store i32 %106, i32* %107, align 4
  %109 = call i8* @cpu_to_le32(i32 0)
  %110 = ptrtoint i8* %109 to i32
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %8, align 8
  store i32 %110, i32* %111, align 4
  %113 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %114 = call i32 @sg_dma_len(%struct.scatterlist* %113)
  %115 = load i32, i32* %10, align 4
  %116 = sub i32 %114, %115
  %117 = load i32, i32* %17, align 4
  %118 = sub i32 %117, %116
  store i32 %118, i32* %17, align 4
  store i32 0, i32* %10, align 4
  %119 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %120 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %119, i32 1
  store %struct.scatterlist* %120, %struct.scatterlist** %15, align 8
  br label %121

121:                                              ; preds = %126, %87
  %122 = load i32, i32* %17, align 4
  %123 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %124 = call i32 @sg_dma_len(%struct.scatterlist* %123)
  %125 = icmp ugt i32 %122, %124
  br i1 %125, label %126, label %151

126:                                              ; preds = %121
  %127 = load i32, i32* @RISC_WRITE, align 4
  %128 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %129 = call i32 @sg_dma_len(%struct.scatterlist* %128)
  %130 = or i32 %127, %129
  %131 = call i8* @cpu_to_le32(i32 %130)
  %132 = ptrtoint i8* %131 to i32
  %133 = load i32*, i32** %8, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %8, align 8
  store i32 %132, i32* %133, align 4
  %135 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %136 = call i32 @sg_dma_address(%struct.scatterlist* %135)
  %137 = call i8* @cpu_to_le32(i32 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load i32*, i32** %8, align 8
  %140 = getelementptr inbounds i32, i32* %139, i32 1
  store i32* %140, i32** %8, align 8
  store i32 %138, i32* %139, align 4
  %141 = call i8* @cpu_to_le32(i32 0)
  %142 = ptrtoint i8* %141 to i32
  %143 = load i32*, i32** %8, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %8, align 8
  store i32 %142, i32* %143, align 4
  %145 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %146 = call i32 @sg_dma_len(%struct.scatterlist* %145)
  %147 = load i32, i32* %17, align 4
  %148 = sub i32 %147, %146
  store i32 %148, i32* %17, align 4
  %149 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %150 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %149, i32 1
  store %struct.scatterlist* %150, %struct.scatterlist** %15, align 8
  br label %121

151:                                              ; preds = %121
  %152 = load i32, i32* @RISC_WRITE, align 4
  %153 = load i32, i32* @RISC_EOL, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* %17, align 4
  %156 = or i32 %154, %155
  %157 = call i8* @cpu_to_le32(i32 %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = load i32*, i32** %8, align 8
  %160 = getelementptr inbounds i32, i32* %159, i32 1
  store i32* %160, i32** %8, align 8
  store i32 %158, i32* %159, align 4
  %161 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %162 = call i32 @sg_dma_address(%struct.scatterlist* %161)
  %163 = call i8* @cpu_to_le32(i32 %162)
  %164 = ptrtoint i8* %163 to i32
  %165 = load i32*, i32** %8, align 8
  %166 = getelementptr inbounds i32, i32* %165, i32 1
  store i32* %166, i32** %8, align 8
  store i32 %164, i32* %165, align 4
  %167 = call i8* @cpu_to_le32(i32 0)
  %168 = ptrtoint i8* %167 to i32
  %169 = load i32*, i32** %8, align 8
  %170 = getelementptr inbounds i32, i32* %169, i32 1
  store i32* %170, i32** %8, align 8
  store i32 %168, i32* %169, align 4
  %171 = load i32, i32* %17, align 4
  %172 = load i32, i32* %10, align 4
  %173 = add i32 %172, %171
  store i32 %173, i32* %10, align 4
  br label %174

174:                                              ; preds = %151, %60
  %175 = load i32, i32* %13, align 4
  %176 = load i32, i32* %10, align 4
  %177 = add i32 %176, %175
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %174
  %179 = load i32, i32* %16, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %16, align 4
  br label %31

181:                                              ; preds = %31
  %182 = load i32*, i32** %8, align 8
  ret i32* %182
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

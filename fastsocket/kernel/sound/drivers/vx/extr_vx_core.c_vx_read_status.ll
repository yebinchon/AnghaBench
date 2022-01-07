; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_core.c_vx_read_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/drivers/vx/extr_vx_core.c_vx_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.vx_rmh = type { i32, i64, i32* }

@RMH_SSIZE_FIXED = common dso_local global i32 0, align 4
@RXH = common dso_local global i32 0, align 4
@RXM = common dso_local global i32 0, align 4
@RXL = common dso_local global i32 0, align 4
@SIZE_MAX_STATUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IRQ_MESS_WRITE_NEXT = common dso_local global i32 0, align 4
@IRQ_MESS_WRITE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, %struct.vx_rmh*)* @vx_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_read_status(%struct.vx_core* %0, %struct.vx_rmh* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vx_core*, align 8
  %5 = alloca %struct.vx_rmh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %4, align 8
  store %struct.vx_rmh* %1, %struct.vx_rmh** %5, align 8
  %10 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %11 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RMH_SSIZE_FIXED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %17 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %173

21:                                               ; preds = %15, %2
  %22 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %23 = call i32 @vx_wait_for_rx_full(%struct.vx_core* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %173

28:                                               ; preds = %21
  %29 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %30 = load i32, i32* @RXH, align 4
  %31 = call i32 @vx_inb(%struct.vx_core* %29, i32 %30)
  %32 = shl i32 %31, 16
  store i32 %32, i32* %8, align 4
  %33 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %34 = load i32, i32* @RXM, align 4
  %35 = call i32 @vx_inb(%struct.vx_core* %33, i32 %34)
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %8, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %8, align 4
  %39 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %40 = load i32, i32* @RXL, align 4
  %41 = call i32 @vx_inb(%struct.vx_core* %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %45 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %86 [
    i32 129, label %47
    i32 128, label %61
  ]

47:                                               ; preds = %28
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 255
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 16776960
  %52 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %53 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %60 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %98

61:                                               ; preds = %28
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %64 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %62, i32* %66, align 4
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %77, %61
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %67
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %67

80:                                               ; preds = %67
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %85 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %84, i32 0, i32 1
  store i64 %83, i64* %85, align 8
  br label %98

86:                                               ; preds = %28
  %87 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %88 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %93 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %86, %80, %47
  %99 = load i32, i32* %9, align 4
  %100 = icmp slt i32 %99, 1
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %173

102:                                              ; preds = %98
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @SIZE_MAX_STATUS, align 4
  %105 = icmp sgt i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = call i64 @snd_BUG_ON(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %102
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  br label %173

112:                                              ; preds = %102
  store i32 1, i32* %6, align 4
  br label %113

113:                                              ; preds = %166, %112
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %169

117:                                              ; preds = %113
  %118 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %119 = load i32, i32* @IRQ_MESS_WRITE_NEXT, align 4
  %120 = call i32 @vx_send_irq_dsp(%struct.vx_core* %118, i32 %119)
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %117
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %3, align 4
  br label %173

125:                                              ; preds = %117
  %126 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %127 = call i32 @vx_wait_for_rx_full(%struct.vx_core* %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %3, align 4
  br label %173

132:                                              ; preds = %125
  %133 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %134 = load i32, i32* @RXH, align 4
  %135 = call i32 @vx_inb(%struct.vx_core* %133, i32 %134)
  %136 = shl i32 %135, 16
  %137 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %138 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %136, i32* %142, align 4
  %143 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %144 = load i32, i32* @RXM, align 4
  %145 = call i32 @vx_inb(%struct.vx_core* %143, i32 %144)
  %146 = shl i32 %145, 8
  %147 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %148 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %146
  store i32 %154, i32* %152, align 4
  %155 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %156 = load i32, i32* @RXL, align 4
  %157 = call i32 @vx_inb(%struct.vx_core* %155, i32 %156)
  %158 = load %struct.vx_rmh*, %struct.vx_rmh** %5, align 8
  %159 = getelementptr inbounds %struct.vx_rmh, %struct.vx_rmh* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %157
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %132
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %113

169:                                              ; preds = %113
  %170 = load %struct.vx_core*, %struct.vx_core** %4, align 8
  %171 = load i32, i32* @IRQ_MESS_WRITE_END, align 4
  %172 = call i32 @vx_transfer_end(%struct.vx_core* %170, i32 %171)
  store i32 %172, i32* %3, align 4
  br label %173

173:                                              ; preds = %169, %130, %123, %109, %101, %26, %20
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local i32 @vx_wait_for_rx_full(%struct.vx_core*) #1

declare dso_local i32 @vx_inb(%struct.vx_core*, i32) #1

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @vx_send_irq_dsp(%struct.vx_core*, i32) #1

declare dso_local i32 @vx_transfer_end(%struct.vx_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

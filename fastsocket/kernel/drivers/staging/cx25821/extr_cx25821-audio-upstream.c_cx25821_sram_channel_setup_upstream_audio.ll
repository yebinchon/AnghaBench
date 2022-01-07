; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-audio-upstream.c_cx25821_sram_channel_setup_upstream_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-audio-upstream.c_cx25821_sram_channel_setup_upstream_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32 }
%struct.sram_channel = type { i64, i64, i64, i64, i64, i64, i32, i64, i64 }

@AUDIO_CDT_SIZE_QW = common dso_local global i64 0, align 8
@AUDIO_IQ_SIZE_DW = common dso_local global i64 0, align 8
@AUDIO_CLUSTER_SIZE_QW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_sram_channel_setup_upstream_audio(%struct.cx25821_dev* %0, %struct.sram_channel* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx25821_dev*, align 8
  %7 = alloca %struct.sram_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %6, align 8
  store %struct.sram_channel* %1, %struct.sram_channel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %14 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %4
  %18 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %19 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @cx_write(i64 %20, i64 0)
  %22 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %23 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @cx_write(i64 %24, i64 0)
  %26 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %27 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @cx_write(i64 %28, i64 0)
  %30 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %31 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @cx_write(i64 %32, i64 0)
  store i32 0, i32* %5, align 4
  br label %173

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, 7
  %37 = and i32 %36, -8
  store i32 %37, i32* %8, align 4
  %38 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %39 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  %41 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %42 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = udiv i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ugt i32 %46, 3
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 3, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32, i32* %11, align 4
  %51 = icmp ult i32 %50, 2
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %94, %49
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %97

58:                                               ; preds = %54
  %59 = load i64, i64* %12, align 8
  %60 = load i32, i32* %10, align 4
  %61 = mul i32 16, %60
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %59, %62
  %64 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %65 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %64, i32 0, i32 7
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = mul i32 %67, %68
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %66, %70
  %72 = call i32 @cx_write(i64 %63, i64 %71)
  %73 = load i64, i64* %12, align 8
  %74 = load i32, i32* %10, align 4
  %75 = mul i32 16, %74
  %76 = zext i32 %75 to i64
  %77 = add nsw i64 %73, %76
  %78 = add nsw i64 %77, 4
  %79 = call i32 @cx_write(i64 %78, i64 0)
  %80 = load i64, i64* %12, align 8
  %81 = load i32, i32* %10, align 4
  %82 = mul i32 16, %81
  %83 = zext i32 %82 to i64
  %84 = add nsw i64 %80, %83
  %85 = add nsw i64 %84, 8
  %86 = call i32 @cx_write(i64 %85, i64 0)
  %87 = load i64, i64* %12, align 8
  %88 = load i32, i32* %10, align 4
  %89 = mul i32 16, %88
  %90 = zext i32 %89 to i64
  %91 = add nsw i64 %87, %90
  %92 = add nsw i64 %91, 12
  %93 = call i32 @cx_write(i64 %92, i64 0)
  br label %94

94:                                               ; preds = %58
  %95 = load i32, i32* %10, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %54

97:                                               ; preds = %54
  %98 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %99 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 0
  %102 = load i64, i64* %9, align 8
  %103 = call i32 @cx_write(i64 %101, i64 %102)
  %104 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %105 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, 4
  %108 = call i32 @cx_write(i64 %107, i64 0)
  %109 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %110 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = add nsw i64 %111, 8
  %113 = load i64, i64* %12, align 8
  %114 = call i32 @cx_write(i64 %112, i64 %113)
  %115 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %116 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, 12
  %119 = load i64, i64* @AUDIO_CDT_SIZE_QW, align 8
  %120 = call i32 @cx_write(i64 %118, i64 %119)
  %121 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %122 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 16
  %125 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %126 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %125, i32 0, i32 8
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @cx_write(i64 %124, i64 %127)
  %129 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %130 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = add nsw i64 %131, 20
  %133 = load i64, i64* @AUDIO_IQ_SIZE_DW, align 8
  %134 = call i32 @cx_write(i64 %132, i64 %133)
  store i32 24, i32* %10, align 4
  br label %135

135:                                              ; preds = %146, %97
  %136 = load i32, i32* %10, align 4
  %137 = icmp ult i32 %136, 80
  br i1 %137, label %138, label %149

138:                                              ; preds = %135
  %139 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %140 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = zext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = call i32 @cx_write(i64 %144, i64 0)
  br label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %10, align 4
  %148 = add i32 %147, 4
  store i32 %148, i32* %10, align 4
  br label %135

149:                                              ; preds = %135
  %150 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %151 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %154 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %153, i32 0, i32 7
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @cx_write(i64 %152, i64 %155)
  %157 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %158 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %12, align 8
  %161 = call i32 @cx_write(i64 %159, i64 %160)
  %162 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %163 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @AUDIO_CDT_SIZE_QW, align 8
  %166 = call i32 @cx_write(i64 %164, i64 %165)
  %167 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %168 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @AUDIO_CLUSTER_SIZE_QW, align 8
  %171 = sub nsw i64 %170, 1
  %172 = call i32 @cx_write(i64 %169, i64 %171)
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %149, %17
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @cx_write(i64, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

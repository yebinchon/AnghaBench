; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_prepare_for_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_ad1848.c_ad1848_prepare_for_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@audio_devs = common dso_local global %struct.TYPE_11__** null, align 8
@MD_1845 = common dso_local global i64 0, align 8
@MD_1845_SSCAPE = common dso_local global i64 0, align 8
@MD_4232 = common dso_local global i64 0, align 8
@MD_4236 = common dso_local global i64 0, align 8
@MD_IWAVE = common dso_local global i64 0, align 8
@timer_installed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ad1848_prepare_for_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad1848_prepare_for_output(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i8 0, i8* %10, align 1
  %14 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @audio_devs, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %14, i64 %16
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %12, align 8
  %22 = load %struct.TYPE_11__**, %struct.TYPE_11__*** @audio_devs, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %22, i64 %24
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %13, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %31 = call i32 @ad_mute(%struct.TYPE_10__* %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load i64, i64* %11, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %41, 5
  %43 = or i32 %38, %42
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %8, align 1
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %54

49:                                               ; preds = %3
  %50 = load i8, i8* %8, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %51, 16
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %8, align 1
  br label %54

54:                                               ; preds = %49, %3
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %56 = call i32 @ad_enter_MCE(%struct.TYPE_10__* %55)
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MD_1845, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %54
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MD_1845_SSCAPE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %62, %54
  %69 = load i8, i8* %8, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, 240
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %8, align 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 8
  %78 = and i32 %77, 255
  %79 = trunc i32 %78 to i8
  %80 = call i32 @ad_write(%struct.TYPE_10__* %73, i32 22, i8 zeroext %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 255
  %86 = trunc i32 %85 to i8
  %87 = call i32 @ad_write(%struct.TYPE_10__* %81, i32 23, i8 zeroext %86)
  br label %88

88:                                               ; preds = %68, %62
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %90 = call zeroext i8 @ad_read(%struct.TYPE_10__* %89, i32 8)
  store i8 %90, i8* %9, align 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MD_4232, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %88
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MD_4236, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96, %88
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %104 = call zeroext i8 @ad_read(%struct.TYPE_10__* %103, i32 16)
  store i8 %104, i8* %10, align 1
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %106 = load i8, i8* %10, align 1
  %107 = zext i8 %106 to i32
  %108 = or i32 %107, 48
  %109 = trunc i32 %108 to i8
  %110 = call i32 @ad_write(%struct.TYPE_10__* %105, i32 16, i8 zeroext %109)
  br label %111

111:                                              ; preds = %102, %96
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @MD_IWAVE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %119 = call i32 @ad_write(%struct.TYPE_10__* %118, i32 17, i8 zeroext -62)
  br label %120

120:                                              ; preds = %117, %111
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %122 = load i8, i8* %8, align 1
  %123 = call i32 @ad_write(%struct.TYPE_10__* %121, i32 8, i8 zeroext %122)
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %135, %120
  %125 = load i32, i32* %7, align 4
  %126 = icmp slt i32 %125, 100
  br i1 %126, label %127, label %133

127:                                              ; preds = %124
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @inb(i32 %130)
  %132 = icmp ne i32 %131, 128
  br label %133

133:                                              ; preds = %127, %124
  %134 = phi i1 [ false, %124 ], [ %132, %127 ]
  br i1 %134, label %135, label %138

135:                                              ; preds = %133
  %136 = load i32, i32* %7, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %7, align 4
  br label %124

138:                                              ; preds = %133
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %150, %138
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 10000
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @inb(i32 %145)
  %147 = icmp eq i32 %146, 128
  br label %148

148:                                              ; preds = %142, %139
  %149 = phi i1 [ false, %139 ], [ %147, %142 ]
  br i1 %149, label %150, label %153

150:                                              ; preds = %148
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %139

153:                                              ; preds = %148
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @MD_4232, align 8
  %158 = icmp sge i64 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %153
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %161 = load i8, i8* %10, align 1
  %162 = zext i8 %161 to i32
  %163 = and i32 %162, -49
  %164 = trunc i32 %163 to i8
  %165 = call i32 @ad_write(%struct.TYPE_10__* %160, i32 16, i8 zeroext %164)
  br label %166

166:                                              ; preds = %159, %153
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %168 = call i32 @ad_leave_MCE(%struct.TYPE_10__* %167)
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 3
  %171 = load i64, i64* %11, align 8
  %172 = call i32 @spin_unlock_irqrestore(i32* %170, i64 %171)
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 2
  store i64 0, i64* %174, align 8
  %175 = load i32, i32* %4, align 4
  %176 = load i32, i32* @timer_installed, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %195

178:                                              ; preds = %166
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %178
  %184 = load i8, i8* %8, align 1
  %185 = zext i8 %184 to i32
  %186 = and i32 %185, 1
  %187 = load i8, i8* %9, align 1
  %188 = zext i8 %187 to i32
  %189 = and i32 %188, 1
  %190 = icmp ne i32 %186, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %183
  %192 = load i32, i32* %4, align 4
  %193 = call i32 @ad1848_tmr_reprogram(i32 %192)
  br label %194

194:                                              ; preds = %191, %183
  br label %195

195:                                              ; preds = %194, %178, %166
  %196 = load i32, i32* %4, align 4
  %197 = call i32 @ad1848_halt_output(i32 %196)
  ret i32 0
}

declare dso_local i32 @ad_mute(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ad_enter_MCE(%struct.TYPE_10__*) #1

declare dso_local i32 @ad_write(%struct.TYPE_10__*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @ad_read(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ad_leave_MCE(%struct.TYPE_10__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ad1848_tmr_reprogram(i32) #1

declare dso_local i32 @ad1848_halt_output(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

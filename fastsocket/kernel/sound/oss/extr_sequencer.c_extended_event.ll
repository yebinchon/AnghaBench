; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_extended_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_sequencer.c_extended_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8)*, i32 (i32, i8, i8, i16)*, i32 (i32, i8, i8)*, i32 (i32, i8, i8)*, i32 (i32, i8, i8)*, i32 (i32, i8, i8, i8)*, i32 (i32, i8, i8, i8)* }

@max_synthdev = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@synth_open_mask = common dso_local global i32 0, align 4
@synth_devs = common dso_local global %struct.TYPE_2__** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @extended_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extended_event(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 2
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @max_synthdev, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11, %1
  %16 = load i32, i32* @ENXIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %210

18:                                               ; preds = %11
  %19 = load i32, i32* @synth_open_mask, align 4
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 1, %20
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %210

27:                                               ; preds = %18
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  switch i32 %31, label %206 [
    i32 131, label %32
    i32 130, label %51
    i32 129, label %108
    i32 134, label %124
    i32 133, label %140
    i32 132, label %156
    i32 128, label %183
  ]

32:                                               ; preds = %27
  %33 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %33, i64 %35
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 6
  %39 = load i32 (i32, i8, i8, i8)*, i32 (i32, i8, i8, i8)** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 3
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 4
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 5
  %49 = load i8, i8* %48, align 1
  %50 = call i32 %39(i32 %40, i8 zeroext %43, i8 zeroext %46, i8 zeroext %49)
  br label %209

51:                                               ; preds = %27
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 4
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp sgt i32 %55, 127
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 4
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp ne i32 %61, 255
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %210

64:                                               ; preds = %57, %51
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 5
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %71, i64 %73
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 6
  %77 = load i32 (i32, i8, i8, i8)*, i32 (i32, i8, i8, i8)** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %3, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 4
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %3, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 5
  %87 = load i8, i8* %86, align 1
  %88 = call i32 %77(i32 %78, i8 zeroext %81, i8 zeroext %84, i8 zeroext %87)
  br label %209

89:                                               ; preds = %64
  %90 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %90, i64 %92
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 5
  %96 = load i32 (i32, i8, i8, i8)*, i32 (i32, i8, i8, i8)** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 3
  %100 = load i8, i8* %99, align 1
  %101 = load i8*, i8** %3, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 4
  %103 = load i8, i8* %102, align 1
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 5
  %106 = load i8, i8* %105, align 1
  %107 = call i32 %96(i32 %97, i8 zeroext %100, i8 zeroext %103, i8 zeroext %106)
  br label %209

108:                                              ; preds = %27
  %109 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %109, i64 %111
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 4
  %115 = load i32 (i32, i8, i8)*, i32 (i32, i8, i8)** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = load i8*, i8** %3, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  %119 = load i8, i8* %118, align 1
  %120 = load i8*, i8** %3, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 4
  %122 = load i8, i8* %121, align 1
  %123 = call i32 %115(i32 %116, i8 zeroext %119, i8 zeroext %122)
  br label %209

124:                                              ; preds = %27
  %125 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %125, i64 %127
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 3
  %131 = load i32 (i32, i8, i8)*, i32 (i32, i8, i8)** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = load i8*, i8** %3, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 3
  %135 = load i8, i8* %134, align 1
  %136 = load i8*, i8** %3, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 4
  %138 = load i8, i8* %137, align 1
  %139 = call i32 %131(i32 %132, i8 zeroext %135, i8 zeroext %138)
  br label %209

140:                                              ; preds = %27
  %141 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %141, i64 %143
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 2
  %147 = load i32 (i32, i8, i8)*, i32 (i32, i8, i8)** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = load i8*, i8** %3, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 3
  %151 = load i8, i8* %150, align 1
  %152 = load i8*, i8** %3, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 4
  %154 = load i8, i8* %153, align 1
  %155 = call i32 %147(i32 %148, i8 zeroext %151, i8 signext %154)
  br label %209

156:                                              ; preds = %27
  %157 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %158 = load i32, i32* %4, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %157, i64 %159
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32 (i32, i8, i8, i16)*, i32 (i32, i8, i8, i16)** %162, align 8
  %164 = load i32, i32* %4, align 4
  %165 = load i8*, i8** %3, align 8
  %166 = getelementptr inbounds i8, i8* %165, i64 3
  %167 = load i8, i8* %166, align 1
  %168 = load i8*, i8** %3, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 4
  %170 = load i8, i8* %169, align 1
  %171 = load i8*, i8** %3, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 5
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = load i8*, i8** %3, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 6
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = shl i32 %178, 8
  %180 = or i32 %174, %179
  %181 = trunc i32 %180 to i16
  %182 = call i32 %163(i32 %164, i8 zeroext %167, i8 zeroext %170, i16 signext %181)
  br label %209

183:                                              ; preds = %27
  %184 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %184, i64 %186
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32 (i32, i8)*, i32 (i32, i8)** %189, align 8
  %191 = icmp ne i32 (i32, i8)* %190, null
  br i1 %191, label %192, label %205

192:                                              ; preds = %183
  %193 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @synth_devs, align 8
  %194 = load i32, i32* %4, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %193, i64 %195
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32 (i32, i8)*, i32 (i32, i8)** %198, align 8
  %200 = load i32, i32* %4, align 4
  %201 = load i8*, i8** %3, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 3
  %203 = load i8, i8* %202, align 1
  %204 = call i32 %199(i32 %200, i8 zeroext %203)
  br label %205

205:                                              ; preds = %192, %183
  br label %209

206:                                              ; preds = %27
  %207 = load i32, i32* @EINVAL, align 4
  %208 = sub nsw i32 0, %207
  store i32 %208, i32* %2, align 4
  br label %210

209:                                              ; preds = %205, %156, %140, %124, %108, %89, %70, %32
  store i32 0, i32* %2, align 4
  br label %210

210:                                              ; preds = %209, %206, %63, %24, %15
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

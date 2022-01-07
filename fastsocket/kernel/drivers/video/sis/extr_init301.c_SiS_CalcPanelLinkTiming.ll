; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_CalcPanelLinkTiming.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/sis/extr_init301.c_SiS_CalcPanelLinkTiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i32, i16, i32, i16, i16, i32, i16, i16, i16, i16, i64, i64, i64, i64, i64, i64, %struct.TYPE_6__*, i64, %struct.TYPE_5__*, %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_6__ = type { i16, i16, i64, i64 }
%struct.TYPE_5__ = type { i16 }
%struct.TYPE_4__ = type { i16 }

@DontExpandLCD = common dso_local global i32 0, align 4
@LCDPass11 = common dso_local global i32 0, align 4
@HalfDCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16, i16)* @SiS_CalcPanelLinkTiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_CalcPanelLinkTiming(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca %struct.SiS_Private*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %10 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %11 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @DontExpandLCD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %154

16:                                               ; preds = %4
  %17 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %18 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @LCDPass11, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %138

23:                                               ; preds = %16
  %24 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %25 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %24, i32 0, i32 21
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %23
  %29 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %30 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 4
  store i16 %31, i16* %9, align 2
  %32 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %33 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @HalfDCLK, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %28
  %39 = load i16, i16* %9, align 2
  %40 = zext i16 %39 to i32
  %41 = shl i32 %40, 1
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %9, align 2
  br label %43

43:                                               ; preds = %38, %28
  %44 = load i16, i16* %9, align 2
  %45 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %46 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %45, i32 0, i32 4
  store i16 %44, i16* %46, align 2
  %47 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %48 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %47, i32 0, i32 3
  store i16 %44, i16* %48, align 4
  %49 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %50 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %49, i32 0, i32 20
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %53 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %52, i32 0, i32 14
  store i64 %51, i64* %53, align 8
  %54 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %55 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %54, i32 0, i32 13
  store i64 %51, i64* %55, align 8
  br label %137

56:                                               ; preds = %23
  %57 = load i16, i16* %6, align 2
  %58 = zext i16 %57 to i32
  %59 = icmp slt i32 %58, 19
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %62 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %61, i32 0, i32 19
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i16, i16* %7, align 2
  %65 = zext i16 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i16, i16* %67, align 2
  store i16 %68, i16* %9, align 2
  br label %78

69:                                               ; preds = %56
  %70 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %71 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %70, i32 0, i32 18
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i16, i16* %8, align 2
  %74 = zext i16 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i16, i16* %76, align 2
  store i16 %77, i16* %9, align 2
  br label %78

78:                                               ; preds = %69, %60
  %79 = load i16, i16* %9, align 2
  %80 = zext i16 %79 to i32
  %81 = icmp eq i32 %80, 9
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %84 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %83, i32 0, i32 17
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i16 32, i16* %9, align 2
  br label %95

88:                                               ; preds = %82
  %89 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %90 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 1
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i16 33, i16* %9, align 2
  br label %94

94:                                               ; preds = %93, %88
  br label %95

95:                                               ; preds = %94, %87
  br label %96

96:                                               ; preds = %95, %78
  %97 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %98 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %97, i32 0, i32 16
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i16, i16* %9, align 2
  %101 = zext i16 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i16, i16* %103, align 8
  %105 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %106 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %105, i32 0, i32 3
  store i16 %104, i16* %106, align 4
  %107 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %108 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %107, i32 0, i32 16
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i16, i16* %9, align 2
  %111 = zext i16 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %116 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %115, i32 0, i32 13
  store i64 %114, i64* %116, align 8
  %117 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %118 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %117, i32 0, i32 16
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i16, i16* %9, align 2
  %121 = zext i16 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i16, i16* %123, align 2
  %125 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %126 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %125, i32 0, i32 4
  store i16 %124, i16* %126, align 2
  %127 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %128 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %127, i32 0, i32 16
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = load i16, i16* %9, align 2
  %131 = zext i16 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %136 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %135, i32 0, i32 14
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %96, %43
  br label %153

138:                                              ; preds = %16
  %139 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %140 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %139, i32 0, i32 6
  %141 = load i16, i16* %140, align 4
  %142 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %143 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %142, i32 0, i32 4
  store i16 %141, i16* %143, align 2
  %144 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %145 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %144, i32 0, i32 3
  store i16 %141, i16* %145, align 4
  %146 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %147 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %146, i32 0, i32 12
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %150 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %149, i32 0, i32 14
  store i64 %148, i64* %150, align 8
  %151 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %152 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %151, i32 0, i32 13
  store i64 %148, i64* %152, align 8
  br label %153

153:                                              ; preds = %138, %137
  br label %205

154:                                              ; preds = %4
  %155 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %156 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %155, i32 0, i32 8
  %157 = load i16, i16* %156, align 8
  %158 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %159 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %158, i32 0, i32 7
  store i16 %157, i16* %159, align 2
  %160 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %161 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %160, i32 0, i32 11
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %164 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %163, i32 0, i32 15
  store i64 %162, i64* %164, align 8
  %165 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %166 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %165, i32 0, i32 6
  %167 = load i16, i16* %166, align 4
  %168 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %169 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %168, i32 0, i32 4
  store i16 %167, i16* %169, align 2
  %170 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %171 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %170, i32 0, i32 12
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %174 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %173, i32 0, i32 14
  store i64 %172, i64* %174, align 8
  %175 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %176 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %175, i32 0, i32 6
  %177 = load i16, i16* %176, align 4
  %178 = zext i16 %177 to i32
  %179 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %180 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %179, i32 0, i32 8
  %181 = load i16, i16* %180, align 8
  %182 = zext i16 %181 to i32
  %183 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %184 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %183, i32 0, i32 9
  %185 = load i16, i16* %184, align 2
  %186 = zext i16 %185 to i32
  %187 = sub nsw i32 %182, %186
  %188 = sub nsw i32 %178, %187
  %189 = trunc i32 %188 to i16
  %190 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %191 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %190, i32 0, i32 3
  store i16 %189, i16* %191, align 4
  %192 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %193 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %192, i32 0, i32 12
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %196 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %195, i32 0, i32 11
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %199 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %198, i32 0, i32 10
  %200 = load i64, i64* %199, align 8
  %201 = sub nsw i64 %197, %200
  %202 = sub nsw i64 %194, %201
  %203 = load %struct.SiS_Private*, %struct.SiS_Private** %5, align 8
  %204 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %203, i32 0, i32 13
  store i64 %202, i64* %204, align 8
  br label %205

205:                                              ; preds = %154, %153
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

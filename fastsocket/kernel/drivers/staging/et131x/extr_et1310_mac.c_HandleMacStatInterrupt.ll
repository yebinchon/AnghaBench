; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_mac.c_HandleMacStatInterrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_mac.c_HandleMacStatInterrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_16__, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__, i8* }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, i8* }
%struct.TYPE_15__ = type { i64, i64, i64, i64, i64, i64, i64 }

@COUNTER_WRAP_16_BIT = common dso_local global i64 0, align 8
@COUNTER_WRAP_12_BIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HandleMacStatInterrupt(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca %struct.TYPE_18__, align 8
  %4 = alloca %struct.TYPE_17__, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %5 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %5, i32 0, i32 1
  %7 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = call i8* @readl(i32* %10)
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %13, i32 0, i32 1
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = call i8* @readl(i32* %18)
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = call i32 @writel(i8* %22, i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %32, i32 0, i32 1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = call i32 @writel(i8* %31, i32* %37)
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %1
  %44 = load i64, i64* @COUNTER_WRAP_16_BIT, align 8
  %45 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %49, %44
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 4
  br label %52

52:                                               ; preds = %43, %1
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %59 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %58
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 8
  br label %66

66:                                               ; preds = %57, %52
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i64, i64* @COUNTER_WRAP_16_BIT, align 8
  %73 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 11
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %72
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  br label %80

80:                                               ; preds = %71, %66
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load i64, i64* @COUNTER_WRAP_16_BIT, align 8
  %87 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %88 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %91, %86
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %89, align 8
  br label %94

94:                                               ; preds = %85, %80
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load i64, i64* @COUNTER_WRAP_16_BIT, align 8
  %101 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %102 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = add nsw i64 %105, %100
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %103, align 4
  br label %108

108:                                              ; preds = %99, %94
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load i64, i64* @COUNTER_WRAP_16_BIT, align 8
  %115 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %116 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %114
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 8
  br label %122

122:                                              ; preds = %113, %108
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %3, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %122
  %128 = load i64, i64* @COUNTER_WRAP_16_BIT, align 8
  %129 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %130 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %128
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %131, align 4
  br label %136

136:                                              ; preds = %127, %122
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 6
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %136
  %142 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %143 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %144 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %142
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 8
  br label %150

150:                                              ; preds = %141, %136
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 5
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %150
  %156 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %157 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %158 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %156
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %159, align 4
  br label %164

164:                                              ; preds = %155, %150
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 4
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %171 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %172 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %175, %170
  %177 = trunc i64 %176 to i32
  store i32 %177, i32* %173, align 8
  br label %178

178:                                              ; preds = %169, %164
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %178
  %184 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %185 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %186 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %184
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %187, align 4
  br label %192

192:                                              ; preds = %183, %178
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %192
  %198 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %199 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %200 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %198
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %201, align 8
  br label %206

206:                                              ; preds = %197, %192
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %206
  %212 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %213 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %214 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %212
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %215, align 4
  br label %220

220:                                              ; preds = %211, %206
  %221 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %220
  %226 = load i64, i64* @COUNTER_WRAP_12_BIT, align 8
  %227 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %228 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = sext i32 %230 to i64
  %232 = add nsw i64 %231, %226
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %229, align 8
  br label %234

234:                                              ; preds = %225, %220
  ret void
}

declare dso_local i8* @readl(i32*) #1

declare dso_local i32 @writel(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

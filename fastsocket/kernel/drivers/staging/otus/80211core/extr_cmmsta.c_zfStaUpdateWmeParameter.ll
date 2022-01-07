; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaUpdateWmeParameter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaUpdateWmeParameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"wmeParameterSetCount changed!\00", align 1
@zcCwTlb = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaUpdateWmeParameter(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  %7 = alloca [5 x i32], align 16
  %8 = alloca [5 x i32], align 16
  %9 = alloca [5 x i32], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @zmw_get_wlan_dev(i32* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %205

23:                                               ; preds = %2
  %24 = load i32*, i32** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @zfFindWifiElement(i32* %24, i32* %25, i32 2, i32 1)
  store i32 %26, i32* %14, align 4
  %27 = icmp ne i32 %26, 65535
  br i1 %27, label %28, label %204

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i8* @zmw_rx_buf_readb(i32* %29, i32* %30, i32 %32)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = icmp sge i32 %34, 7
  br i1 %35, label %36, label %203

36:                                               ; preds = %28
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %14, align 4
  %40 = add nsw i32 %39, 8
  %41 = call i8* @zmw_rx_buf_readb(i32* %37, i32* %38, i32 %40)
  %42 = ptrtoint i8* %41 to i64
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %43, %47
  br i1 %48, label %49, label %202

49:                                               ; preds = %36
  %50 = load i32, i32* @ZM_LV_0, align 4
  %51 = call i32 @zm_msg0_mm(i32 %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %52 = load i64, i64* %15, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i64 %52, i64* %55, align 8
  store i64 15, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %134, %49
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %137

59:                                               ; preds = %56
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %61, 4
  %63 = add nsw i32 8, %62
  %64 = add nsw i32 %63, 4
  %65 = icmp sge i32 %60, %64
  br i1 %65, label %66, label %133

66:                                               ; preds = %59
  %67 = load i32*, i32** %3, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %14, align 4
  %70 = add nsw i32 %69, 10
  %71 = load i32, i32* %13, align 4
  %72 = mul nsw i32 %71, 4
  %73 = add nsw i32 %70, %72
  %74 = call i8* @zmw_rx_buf_readb(i32* %67, i32* %68, i32 %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = ashr i32 %76, 5
  %78 = and i32 %77, 3
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %11, align 8
  %80 = load i32, i32* %5, align 4
  %81 = and i32 %80, 16
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %66
  %84 = load i64, i64* %11, align 8
  %85 = trunc i64 %84 to i32
  %86 = shl i32 1, %85
  %87 = xor i32 %86, -1
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %10, align 8
  %90 = and i64 %89, %88
  store i64 %90, i64* %10, align 8
  br label %91

91:                                               ; preds = %83, %66
  %92 = load i32, i32* %5, align 4
  %93 = and i32 %92, 15
  %94 = mul nsw i32 %93, 9
  %95 = add nsw i32 %94, 10
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %96
  store i32 %95, i32* %97, align 4
  %98 = load i32*, i32** %3, align 8
  %99 = load i32*, i32** %4, align 8
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 11
  %102 = load i32, i32* %13, align 4
  %103 = mul nsw i32 %102, 4
  %104 = add nsw i32 %101, %103
  %105 = call i8* @zmw_rx_buf_readb(i32* %98, i32* %99, i32 %104)
  %106 = ptrtoint i8* %105 to i32
  store i32 %106, i32* %5, align 4
  %107 = load i32*, i32** @zcCwTlb, align 8
  %108 = load i32, i32* %5, align 4
  %109 = and i32 %108, 15
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i64, i64* %11, align 8
  %114 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %113
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** @zcCwTlb, align 8
  %116 = load i32, i32* %5, align 4
  %117 = ashr i32 %116, 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = load i64, i64* %11, align 8
  %122 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %121
  store i32 %120, i32* %122, align 4
  %123 = load i32*, i32** %3, align 8
  %124 = load i32*, i32** %4, align 8
  %125 = load i32, i32* %14, align 4
  %126 = add nsw i32 %125, 12
  %127 = load i32, i32* %13, align 4
  %128 = mul nsw i32 %127, 4
  %129 = add nsw i32 %126, %128
  %130 = call i32 @zmw_rx_buf_readh(i32* %123, i32* %124, i32 %129)
  %131 = load i64, i64* %11, align 8
  %132 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %131
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %91, %59
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %13, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %13, align 4
  br label %56

137:                                              ; preds = %56
  %138 = load i64, i64* %10, align 8
  %139 = and i64 %138, 4
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %154

141:                                              ; preds = %137
  %142 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %143 = load i32, i32* %142, align 16
  %144 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 %143, i32* %144, align 8
  %145 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %146 = load i32, i32* %145, align 16
  %147 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  store i32 %146, i32* %147, align 8
  %148 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %149 = load i32, i32* %148, align 16
  %150 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  store i32 %149, i32* %150, align 8
  %151 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %152 = load i32, i32* %151, align 16
  %153 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2
  store i32 %152, i32* %153, align 8
  br label %154

154:                                              ; preds = %141, %137
  %155 = load i64, i64* %10, align 8
  %156 = and i64 %155, 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %154
  %159 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %160 = load i32, i32* %159, align 8
  %161 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 %160, i32* %161, align 4
  %162 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  store i32 %163, i32* %164, align 4
  %165 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %166 = load i32, i32* %165, align 8
  %167 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 %166, i32* %167, align 4
  %168 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 2
  %169 = load i32, i32* %168, align 8
  %170 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 3
  store i32 %169, i32* %170, align 4
  br label %171

171:                                              ; preds = %158, %154
  %172 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 3, i32* %172, align 16
  %173 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 7, i32* %173, align 16
  %174 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 28, i32* %174, align 16
  %175 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  %178 = load i32, i32* %177, align 8
  %179 = add nsw i32 %176, %178
  %180 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %181 = load i32, i32* %180, align 16
  %182 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %183 = load i32, i32* %182, align 16
  %184 = add nsw i32 %181, %183
  %185 = add nsw i32 %184, 1
  %186 = icmp sgt i32 %179, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %171
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  store i32 1, i32* %190, align 8
  br label %195

191:                                              ; preds = %171
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 2
  store i32 0, i32* %194, align 8
  br label %195

195:                                              ; preds = %191, %187
  %196 = load i32*, i32** %3, align 8
  %197 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %198 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %199 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %200 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %201 = call i32 @zfHpUpdateQosParameter(i32* %196, i32* %197, i32* %198, i32* %199, i32* %200)
  br label %202

202:                                              ; preds = %195, %36
  br label %203

203:                                              ; preds = %202, %28
  br label %204

204:                                              ; preds = %203, %23
  br label %205

205:                                              ; preds = %204, %2
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfFindWifiElement(i32*, i32*, i32, i32) #1

declare dso_local i8* @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zfHpUpdateQosParameter(i32*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_mds.c_Mds_Tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/winbond/extr_mds.c_Mds_Tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsoft_priv = type { %struct.TYPE_2__, %struct.wb35_mds, %struct.hw_data }
%struct.TYPE_2__ = type { i32 }
%struct.wb35_mds = type { i64, i32*, i64*, i64, i32*, i32, i64, i32*, i64*, i32, i32, i64 }
%struct.hw_data = type { i32 }
%struct.wb35_descriptor = type { i64, i64 }

@MAX_USB_TX_BUFFER = common dso_local global i64 0, align 8
@CURRENT_FRAGMENT_THRESHOLD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[Mds_Tx] Excess max tx buffer.\0A\00", align 1
@MAX_USB_TX_DESCRIPTOR = common dso_local global i64 0, align 8
@MAX_USB_TX_BUFFER_NUMBER = common dso_local global i64 0, align 8
@DOT_11_DA_OFFSET = common dso_local global i32 0, align 4
@MAC_SUBTYPE_MNGMNT_PROBE_REQUEST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Mds_Tx(%struct.wbsoft_priv* %0) #0 {
  %2 = alloca %struct.wbsoft_priv*, align 8
  %3 = alloca %struct.hw_data*, align 8
  %4 = alloca %struct.wb35_mds*, align 8
  %5 = alloca %struct.wb35_descriptor, align 8
  %6 = alloca %struct.wb35_descriptor*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8, align 1
  store %struct.wbsoft_priv* %0, %struct.wbsoft_priv** %2, align 8
  %18 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %19 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %18, i32 0, i32 2
  store %struct.hw_data* %19, %struct.hw_data** %3, align 8
  %20 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %21 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %20, i32 0, i32 1
  store %struct.wb35_mds* %21, %struct.wb35_mds** %4, align 8
  store %struct.wb35_descriptor* %5, %struct.wb35_descriptor** %6, align 8
  store i8 0, i8* %17, align 1
  %22 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %23 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %22, i32 0, i32 11
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %218

27:                                               ; preds = %1
  %28 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %29 = call i32 @hal_driver_init_OK(%struct.hw_data* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  br label %218

32:                                               ; preds = %27
  %33 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %34 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %33, i32 0, i32 9
  %35 = call i32 @atomic_inc_return(i32* %34)
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %214

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %204, %38
  %40 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %41 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %13, align 8
  %43 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %44 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %205

51:                                               ; preds = %39
  %52 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %53 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* @MAX_USB_TX_BUFFER, align 8
  %56 = load i64, i64* %13, align 8
  %57 = mul i64 %55, %56
  %58 = getelementptr inbounds i64, i64* %54, i64 %57
  store i64* %58, i64** %7, align 8
  store i32 0, i32* %8, align 4
  store i64 0, i64* %16, align 8
  br label %59

59:                                               ; preds = %164, %51
  %60 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %61 = getelementptr inbounds %struct.wbsoft_priv, %struct.wbsoft_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %59
  br label %168

67:                                               ; preds = %59
  %68 = load i32, i32* @CURRENT_FRAGMENT_THRESHOLD, align 4
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %12, align 4
  %71 = sdiv i32 %69, %70
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %15, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %15, align 8
  %77 = mul i64 %76, 32
  %78 = add i64 %75, %77
  %79 = add i64 %78, 8
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* @MAX_USB_TX_BUFFER, align 8
  %86 = icmp uge i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %67
  %88 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %168

89:                                               ; preds = %67
  store i8 1, i8* %17, align 1
  %90 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %6, align 8
  %91 = bitcast %struct.wb35_descriptor* %90 to i64*
  %92 = getelementptr inbounds i64, i64* %91, i64 1
  %93 = call i32 @memset(i64* %92, i32 0, i32 15)
  %94 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %95 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %14, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %6, align 8
  %99 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %101 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %14, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 2, i32* %104, align 4
  %105 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %106 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %106, align 8
  %109 = load i64, i64* @MAX_USB_TX_DESCRIPTOR, align 8
  %110 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %111 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = urem i64 %112, %109
  store i64 %113, i64* %111, align 8
  %114 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %115 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %6, align 8
  %116 = call i32 @MLME_GetNextPacket(%struct.wbsoft_priv* %114, %struct.wb35_descriptor* %115)
  %117 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %118 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %6, align 8
  %119 = load i64*, i64** %7, align 8
  %120 = call i32 @Mds_HeaderCopy(%struct.wbsoft_priv* %117, %struct.wb35_descriptor* %118, i64* %119)
  %121 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %6, align 8
  %122 = getelementptr inbounds %struct.wb35_descriptor, %struct.wb35_descriptor* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %89
  %126 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %127 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %126, i32 0, i32 0
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %89
  %129 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %130 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %6, align 8
  %131 = load i64*, i64** %7, align 8
  %132 = call i32 @Mds_BodyCopy(%struct.wbsoft_priv* %129, %struct.wb35_descriptor* %130, i64* %131)
  store i32 %132, i32* %11, align 4
  %133 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %134 = load %struct.wb35_descriptor*, %struct.wb35_descriptor** %6, align 8
  %135 = load i64*, i64** %7, align 8
  %136 = call i32 @Mds_DurationSet(%struct.wbsoft_priv* %133, %struct.wb35_descriptor* %134, i64* %135)
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i64*, i64** %7, align 8
  %142 = sext i32 %140 to i64
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  store i64* %143, i64** %7, align 8
  %144 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %145 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %144, i32 0, i32 5
  store i32 1, i32* %145, align 8
  %146 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %147 = call i32 @MLME_SendComplete(%struct.wbsoft_priv* %146, i32 0, i32 1)
  %148 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %149 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %149, align 8
  %152 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %153 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %128
  %157 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %158 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %157, i32 0, i32 10
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %156, %128
  %162 = load i64, i64* %16, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %16, align 8
  br label %164

164:                                              ; preds = %161
  %165 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %166 = call i64 @HAL_USB_MODE_BURST(%struct.hw_data* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %59, label %168

168:                                              ; preds = %164, %87, %66
  %169 = load i8, i8* %17, align 1
  %170 = icmp ne i8 %169, 0
  br i1 %170, label %171, label %198

171:                                              ; preds = %168
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %174 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %173, i32 0, i32 7
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %13, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32 %172, i32* %177, align 4
  %178 = load i64, i64* %16, align 8
  %179 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %180 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %179, i32 0, i32 8
  %181 = load i64*, i64** %180, align 8
  %182 = load i64, i64* %13, align 8
  %183 = getelementptr inbounds i64, i64* %181, i64 %182
  store i64 %178, i64* %183, align 8
  %184 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %185 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* %13, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32 1, i32* %188, align 4
  %189 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %190 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %190, align 8
  %193 = load i64, i64* @MAX_USB_TX_BUFFER_NUMBER, align 8
  %194 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %195 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = urem i64 %196, %193
  store i64 %197, i64* %195, align 8
  store i8 0, i8* %17, align 1
  br label %199

198:                                              ; preds = %168
  br label %205

199:                                              ; preds = %171
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %203, label %202

202:                                              ; preds = %199
  br label %205

203:                                              ; preds = %199
  br label %204

204:                                              ; preds = %203
  br i1 true, label %39, label %205

205:                                              ; preds = %204, %202, %198, %50
  %206 = load %struct.hw_data*, %struct.hw_data** %3, align 8
  %207 = getelementptr inbounds %struct.hw_data, %struct.hw_data* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %213, label %210

210:                                              ; preds = %205
  %211 = load %struct.wbsoft_priv*, %struct.wbsoft_priv** %2, align 8
  %212 = call i32 @Wb35Tx_start(%struct.wbsoft_priv* %211)
  br label %213

213:                                              ; preds = %210, %205
  br label %214

214:                                              ; preds = %213, %37
  %215 = load %struct.wb35_mds*, %struct.wb35_mds** %4, align 8
  %216 = getelementptr inbounds %struct.wb35_mds, %struct.wb35_mds* %215, i32 0, i32 9
  %217 = call i32 @atomic_dec(i32* %216)
  br label %218

218:                                              ; preds = %214, %31, %26
  ret void
}

declare dso_local i32 @hal_driver_init_OK(%struct.hw_data*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @MLME_GetNextPacket(%struct.wbsoft_priv*, %struct.wb35_descriptor*) #1

declare dso_local i32 @Mds_HeaderCopy(%struct.wbsoft_priv*, %struct.wb35_descriptor*, i64*) #1

declare dso_local i32 @Mds_BodyCopy(%struct.wbsoft_priv*, %struct.wb35_descriptor*, i64*) #1

declare dso_local i32 @Mds_DurationSet(%struct.wbsoft_priv*, %struct.wb35_descriptor*, i64*) #1

declare dso_local i32 @MLME_SendComplete(%struct.wbsoft_priv*, i32, i32) #1

declare dso_local i64 @HAL_USB_MODE_BURST(%struct.hw_data*) #1

declare dso_local i32 @Wb35Tx_start(%struct.wbsoft_priv*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

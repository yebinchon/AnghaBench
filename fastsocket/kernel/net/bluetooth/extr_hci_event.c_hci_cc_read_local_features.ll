; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cc_read_local_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/bluetooth/extr_hci_event.c_hci_cc_read_local_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32*, i32, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.hci_rp_read_local_features = type { i32, i64 }

@.str = private unnamed_addr constant [15 x i8] c"%s status 0x%x\00", align 1
@LMP_3SLOT = common dso_local global i32 0, align 4
@HCI_DM3 = common dso_local global i32 0, align 4
@HCI_DH3 = common dso_local global i32 0, align 4
@LMP_5SLOT = common dso_local global i32 0, align 4
@HCI_DM5 = common dso_local global i32 0, align 4
@HCI_DH5 = common dso_local global i32 0, align 4
@LMP_HV2 = common dso_local global i32 0, align 4
@HCI_HV2 = common dso_local global i32 0, align 4
@ESCO_HV2 = common dso_local global i32 0, align 4
@LMP_HV3 = common dso_local global i32 0, align 4
@HCI_HV3 = common dso_local global i32 0, align 4
@ESCO_HV3 = common dso_local global i32 0, align 4
@LMP_ESCO = common dso_local global i32 0, align 4
@ESCO_EV3 = common dso_local global i32 0, align 4
@LMP_EV4 = common dso_local global i32 0, align 4
@ESCO_EV4 = common dso_local global i32 0, align 4
@LMP_EV5 = common dso_local global i32 0, align 4
@ESCO_EV5 = common dso_local global i32 0, align 4
@LMP_EDR_ESCO_2M = common dso_local global i32 0, align 4
@ESCO_2EV3 = common dso_local global i32 0, align 4
@LMP_EDR_ESCO_3M = common dso_local global i32 0, align 4
@ESCO_3EV3 = common dso_local global i32 0, align 4
@LMP_EDR_3S_ESCO = common dso_local global i32 0, align 4
@ESCO_2EV5 = common dso_local global i32 0, align 4
@ESCO_3EV5 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%s features 0x%.2x%.2x%.2x%.2x%.2x%.2x%.2x%.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_cc_read_local_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_cc_read_local_features(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_rp_read_local_features*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.hci_rp_read_local_features*
  store %struct.hci_rp_read_local_features* %10, %struct.hci_rp_read_local_features** %5, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.hci_rp_read_local_features*, %struct.hci_rp_read_local_features** %5, align 8
  %15 = getelementptr inbounds %struct.hci_rp_read_local_features, %struct.hci_rp_read_local_features* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 (i8*, i32, i32, ...) @BT_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17)
  %19 = load %struct.hci_rp_read_local_features*, %struct.hci_rp_read_local_features** %5, align 8
  %20 = getelementptr inbounds %struct.hci_rp_read_local_features, %struct.hci_rp_read_local_features* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %242

24:                                               ; preds = %2
  %25 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.hci_rp_read_local_features*, %struct.hci_rp_read_local_features** %5, align 8
  %29 = getelementptr inbounds %struct.hci_rp_read_local_features, %struct.hci_rp_read_local_features* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @memcpy(i32* %27, i32 %30, i32 8)
  %32 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @LMP_3SLOT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %24
  %41 = load i32, i32* @HCI_DM3, align 4
  %42 = load i32, i32* @HCI_DH3, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %40, %24
  %49 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %50 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @LMP_5SLOT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %48
  %58 = load i32, i32* @HCI_DM5, align 4
  %59 = load i32, i32* @HCI_DH5, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %62 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %57, %48
  %66 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %67 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @LMP_HV2, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %65
  %75 = load i32, i32* @HCI_HV2, align 4
  %76 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %77 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* @ESCO_HV2, align 4
  %81 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %74, %65
  %86 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %87 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @LMP_HV3, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %85
  %95 = load i32, i32* @HCI_HV3, align 4
  %96 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %97 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load i32, i32* @ESCO_HV3, align 4
  %101 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %102 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %94, %85
  %106 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %107 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @LMP_ESCO, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %105
  %115 = load i32, i32* @ESCO_EV3, align 4
  %116 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %117 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %114, %105
  %121 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %122 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @LMP_EV4, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %120
  %130 = load i32, i32* @ESCO_EV4, align 4
  %131 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %132 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %129, %120
  %136 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %137 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 4
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @LMP_EV5, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %135
  %145 = load i32, i32* @ESCO_EV5, align 4
  %146 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %147 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %135
  %151 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %152 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 5
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @LMP_EDR_ESCO_2M, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %150
  %160 = load i32, i32* @ESCO_2EV3, align 4
  %161 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %162 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %159, %150
  %166 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %167 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 5
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @LMP_EDR_ESCO_3M, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %165
  %175 = load i32, i32* @ESCO_3EV3, align 4
  %176 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %177 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %175
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %174, %165
  %181 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %182 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 5
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @LMP_EDR_3S_ESCO, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %180
  %190 = load i32, i32* @ESCO_2EV5, align 4
  %191 = load i32, i32* @ESCO_3EV5, align 4
  %192 = or i32 %190, %191
  %193 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %194 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %192
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %189, %180
  %198 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %199 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %202 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %207 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %212 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 2
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %217 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 3
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %222 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 4
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %227 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 5
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %232 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 6
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %237 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 7
  %240 = load i32, i32* %239, align 4
  %241 = call i32 (i8*, i32, i32, ...) @BT_DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %200, i32 %205, i32 %210, i32 %215, i32 %220, i32 %225, i32 %230, i32 %235, i32 %240)
  br label %242

242:                                              ; preds = %197, %23
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

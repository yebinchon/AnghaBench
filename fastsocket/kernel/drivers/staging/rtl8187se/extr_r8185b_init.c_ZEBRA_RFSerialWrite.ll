; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_ZEBRA_RFSerialWrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/extr_r8185b_init.c_ZEBRA_RFSerialWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@RF_SW_CONFIG = common dso_local global i32 0, align 4
@RF_SW_CFG_SI = common dso_local global i32 0, align 4
@RFPinsOutput = common dso_local global i32 0, align 4
@RFPinsEnable = common dso_local global i32 0, align 4
@RFPinsSelect = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ZEBRA_RFSerialWrite(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load i32, i32* @RF_SW_CONFIG, align 4
  %19 = call i32 @read_nic_byte(%struct.net_device* %17, i32 %18)
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* @RF_SW_CFG_SI, align 4
  %21 = load i32, i32* %16, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %16, align 4
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load i32, i32* @RF_SW_CONFIG, align 4
  %25 = load i32, i32* %16, align 4
  %26 = call i32 @write_nic_byte(%struct.net_device* %23, i32 %24, i32 %25)
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load i32, i32* @RFPinsOutput, align 4
  %29 = call i32 @read_nic_word(%struct.net_device* %27, i32 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = and i32 %30, 65528
  store i32 %31, i32* %11, align 4
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = load i32, i32* @RFPinsEnable, align 4
  %34 = call i32 @read_nic_word(%struct.net_device* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = load i32, i32* @RFPinsSelect, align 4
  %37 = call i32 @read_nic_word(%struct.net_device* %35, i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = and i32 %38, 65528
  store i32 %39, i32* %13, align 4
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = load i32, i32* @RFPinsEnable, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %42, 7
  %44 = call i32 @write_nic_word(%struct.net_device* %40, i32 %41, i32 %43)
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = load i32, i32* @RFPinsSelect, align 4
  %47 = load i32, i32* %13, align 4
  %48 = or i32 %47, 7
  %49 = call i32 @write_nic_word(%struct.net_device* %45, i32 %46, i32 %48)
  %50 = call i32 @udelay(i32 10)
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = load i32, i32* @RFPinsOutput, align 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @write_nic_word(%struct.net_device* %54, i32 %55, i32 %59)
  %61 = call i32 @udelay(i32 2)
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = load i32, i32* @RFPinsOutput, align 4
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @write_nic_word(%struct.net_device* %64, i32 %65, i32 %69)
  %71 = call i32 @udelay(i32 10)
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %4
  br label %79

75:                                               ; preds = %4
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %76, 1
  %78 = shl i32 1, %77
  br label %79

79:                                               ; preds = %75, %74
  %80 = phi i32 [ 1, %74 ], [ %78, %75 ]
  store i32 %80, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %169, %79
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %7, align 4
  %84 = sdiv i32 %83, 2
  %85 = icmp slt i32 %82, %84
  br i1 %85, label %86, label %172

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %14, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 4
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = load i32, i32* @RFPinsOutput, align 4
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %11, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @write_nic_word(%struct.net_device* %95, i32 %96, i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  store i32 1, i32* %103, align 4
  %104 = load %struct.net_device*, %struct.net_device** %5, align 8
  %105 = load i32, i32* @RFPinsOutput, align 4
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @write_nic_word(%struct.net_device* %104, i32 %105, i32 %109)
  %111 = load %struct.net_device*, %struct.net_device** %5, align 8
  %112 = load i32, i32* @RFPinsOutput, align 4
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %11, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @write_nic_word(%struct.net_device* %111, i32 %112, i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %86
  %121 = load i32, i32* %14, align 4
  %122 = shl i32 %121, 1
  br label %126

123:                                              ; preds = %86
  %124 = load i32, i32* %14, align 4
  %125 = ashr i32 %124, 1
  br label %126

126:                                              ; preds = %123, %120
  %127 = phi i32 [ %122, %120 ], [ %125, %123 ]
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %14, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i64
  %133 = select i1 %131, i32 1, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.net_device*, %struct.net_device** %5, align 8
  %137 = load i32, i32* @RFPinsOutput, align 4
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %11, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @write_nic_word(%struct.net_device* %136, i32 %137, i32 %141)
  %143 = load %struct.net_device*, %struct.net_device** %5, align 8
  %144 = load i32, i32* @RFPinsOutput, align 4
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %11, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @write_nic_word(%struct.net_device* %143, i32 %144, i32 %148)
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  store i32 0, i32* %151, align 4
  %152 = load %struct.net_device*, %struct.net_device** %5, align 8
  %153 = load i32, i32* @RFPinsOutput, align 4
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %11, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @write_nic_word(%struct.net_device* %152, i32 %153, i32 %157)
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %126
  %162 = load i32, i32* %14, align 4
  %163 = shl i32 %162, 1
  br label %167

164:                                              ; preds = %126
  %165 = load i32, i32* %14, align 4
  %166 = ashr i32 %165, 1
  br label %167

167:                                              ; preds = %164, %161
  %168 = phi i32 [ %163, %161 ], [ %166, %164 ]
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %167
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %81

172:                                              ; preds = %81
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store i32 1, i32* %174, align 4
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 2
  store i32 0, i32* %176, align 4
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 1
  store i32 0, i32* %178, align 4
  %179 = load %struct.net_device*, %struct.net_device** %5, align 8
  %180 = load i32, i32* @RFPinsOutput, align 4
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %11, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @write_nic_word(%struct.net_device* %179, i32 %180, i32 %184)
  %186 = call i32 @udelay(i32 10)
  %187 = load %struct.net_device*, %struct.net_device** %5, align 8
  %188 = load i32, i32* @RFPinsOutput, align 4
  %189 = load i32, i32* %11, align 4
  %190 = or i32 %189, 4
  %191 = call i32 @write_nic_word(%struct.net_device* %187, i32 %188, i32 %190)
  %192 = load %struct.net_device*, %struct.net_device** %5, align 8
  %193 = load i32, i32* @RFPinsSelect, align 4
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @write_nic_word(%struct.net_device* %192, i32 %193, i32 %194)
  %196 = load %struct.net_device*, %struct.net_device** %5, align 8
  %197 = call i32 @SetOutputEnableOfRfPins(%struct.net_device* %196)
  ret void
}

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @read_nic_word(%struct.net_device*, i32) #1

declare dso_local i32 @write_nic_word(%struct.net_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @SetOutputEnableOfRfPins(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

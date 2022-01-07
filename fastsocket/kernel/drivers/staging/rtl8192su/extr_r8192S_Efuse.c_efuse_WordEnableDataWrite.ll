; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_WordEnableDataWrite.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_WordEnableDataWrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@PGPKT_DATA_SIZE = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i64 0, align 8
@BIT1 = common dso_local global i64 0, align 8
@BIT2 = common dso_local global i64 0, align 8
@BIT3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*, i64, i64, i64*)* @efuse_WordEnableDataWrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @efuse_WordEnableDataWrite(%struct.net_device* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca [8 x i64], align 16
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load i64, i64* %6, align 8
  store i64 %13, i64* %10, align 8
  store i64 15, i64* %11, align 8
  %14 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 0
  %15 = load i32, i32* @PGPKT_DATA_SIZE, align 4
  %16 = call i32 @memset(i64* %14, i32 255, i32 %15)
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @BIT0, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %67, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* %10, align 8
  store i64 %22, i64* %9, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = load i64, i64* %10, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %10, align 8
  %26 = trunc i64 %24 to i32
  %27 = load i64*, i64** %8, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @efuse_OneByteWrite(%struct.net_device* %23, i32 %26, i64 %29)
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %10, align 8
  %34 = trunc i64 %32 to i32
  %35 = load i64*, i64** %8, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @efuse_OneByteWrite(%struct.net_device* %31, i32 %34, i64 %37)
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 0
  %42 = call i32 @efuse_OneByteRead(%struct.net_device* %39, i64 %40, i64* %41)
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add nsw i64 %44, 1
  %46 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 1
  %47 = call i32 @efuse_OneByteRead(%struct.net_device* %43, i64 %45, i64* %46)
  %48 = load i64*, i64** %8, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 0
  %52 = load i64, i64* %51, align 16
  %53 = icmp ne i64 %50, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %21
  %55 = load i64*, i64** %8, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %57, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %54, %21
  %62 = load i64, i64* @BIT0, align 8
  %63 = xor i64 %62, -1
  %64 = load i64, i64* %11, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %11, align 8
  br label %66

66:                                               ; preds = %61, %54
  br label %67

67:                                               ; preds = %66, %4
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @BIT1, align 8
  %70 = and i64 %68, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %118, label %72

72:                                               ; preds = %67
  %73 = load i64, i64* %10, align 8
  store i64 %73, i64* %9, align 8
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %10, align 8
  %77 = trunc i64 %75 to i32
  %78 = load i64*, i64** %8, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 2
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @efuse_OneByteWrite(%struct.net_device* %74, i32 %77, i64 %80)
  %82 = load %struct.net_device*, %struct.net_device** %5, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %10, align 8
  %85 = trunc i64 %83 to i32
  %86 = load i64*, i64** %8, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 3
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @efuse_OneByteWrite(%struct.net_device* %82, i32 %85, i64 %88)
  %90 = load %struct.net_device*, %struct.net_device** %5, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 2
  %93 = call i32 @efuse_OneByteRead(%struct.net_device* %90, i64 %91, i64* %92)
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = load i64, i64* %9, align 8
  %96 = add nsw i64 %95, 1
  %97 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 3
  %98 = call i32 @efuse_OneByteRead(%struct.net_device* %94, i64 %96, i64* %97)
  %99 = load i64*, i64** %8, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 2
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 2
  %103 = load i64, i64* %102, align 16
  %104 = icmp ne i64 %101, %103
  br i1 %104, label %112, label %105

105:                                              ; preds = %72
  %106 = load i64*, i64** %8, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 3
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %108, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %105, %72
  %113 = load i64, i64* @BIT1, align 8
  %114 = xor i64 %113, -1
  %115 = load i64, i64* %11, align 8
  %116 = and i64 %115, %114
  store i64 %116, i64* %11, align 8
  br label %117

117:                                              ; preds = %112, %105
  br label %118

118:                                              ; preds = %117, %67
  %119 = load i64, i64* %7, align 8
  %120 = load i64, i64* @BIT2, align 8
  %121 = and i64 %119, %120
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %169, label %123

123:                                              ; preds = %118
  %124 = load i64, i64* %10, align 8
  store i64 %124, i64* %9, align 8
  %125 = load %struct.net_device*, %struct.net_device** %5, align 8
  %126 = load i64, i64* %10, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %10, align 8
  %128 = trunc i64 %126 to i32
  %129 = load i64*, i64** %8, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 4
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @efuse_OneByteWrite(%struct.net_device* %125, i32 %128, i64 %131)
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = load i64, i64* %10, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %10, align 8
  %136 = trunc i64 %134 to i32
  %137 = load i64*, i64** %8, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 5
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @efuse_OneByteWrite(%struct.net_device* %133, i32 %136, i64 %139)
  %141 = load %struct.net_device*, %struct.net_device** %5, align 8
  %142 = load i64, i64* %9, align 8
  %143 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 4
  %144 = call i32 @efuse_OneByteRead(%struct.net_device* %141, i64 %142, i64* %143)
  %145 = load %struct.net_device*, %struct.net_device** %5, align 8
  %146 = load i64, i64* %9, align 8
  %147 = add nsw i64 %146, 1
  %148 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 5
  %149 = call i32 @efuse_OneByteRead(%struct.net_device* %145, i64 %147, i64* %148)
  %150 = load i64*, i64** %8, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 4
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 4
  %154 = load i64, i64* %153, align 16
  %155 = icmp ne i64 %152, %154
  br i1 %155, label %163, label %156

156:                                              ; preds = %123
  %157 = load i64*, i64** %8, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 5
  %159 = load i64, i64* %158, align 8
  %160 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %159, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %156, %123
  %164 = load i64, i64* @BIT2, align 8
  %165 = xor i64 %164, -1
  %166 = load i64, i64* %11, align 8
  %167 = and i64 %166, %165
  store i64 %167, i64* %11, align 8
  br label %168

168:                                              ; preds = %163, %156
  br label %169

169:                                              ; preds = %168, %118
  %170 = load i64, i64* %7, align 8
  %171 = load i64, i64* @BIT3, align 8
  %172 = and i64 %170, %171
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %220, label %174

174:                                              ; preds = %169
  %175 = load i64, i64* %10, align 8
  store i64 %175, i64* %9, align 8
  %176 = load %struct.net_device*, %struct.net_device** %5, align 8
  %177 = load i64, i64* %10, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %10, align 8
  %179 = trunc i64 %177 to i32
  %180 = load i64*, i64** %8, align 8
  %181 = getelementptr inbounds i64, i64* %180, i64 6
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @efuse_OneByteWrite(%struct.net_device* %176, i32 %179, i64 %182)
  %184 = load %struct.net_device*, %struct.net_device** %5, align 8
  %185 = load i64, i64* %10, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* %10, align 8
  %187 = trunc i64 %185 to i32
  %188 = load i64*, i64** %8, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 7
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @efuse_OneByteWrite(%struct.net_device* %184, i32 %187, i64 %190)
  %192 = load %struct.net_device*, %struct.net_device** %5, align 8
  %193 = load i64, i64* %9, align 8
  %194 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 6
  %195 = call i32 @efuse_OneByteRead(%struct.net_device* %192, i64 %193, i64* %194)
  %196 = load %struct.net_device*, %struct.net_device** %5, align 8
  %197 = load i64, i64* %9, align 8
  %198 = add nsw i64 %197, 1
  %199 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 7
  %200 = call i32 @efuse_OneByteRead(%struct.net_device* %196, i64 %198, i64* %199)
  %201 = load i64*, i64** %8, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 6
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 6
  %205 = load i64, i64* %204, align 16
  %206 = icmp ne i64 %203, %205
  br i1 %206, label %214, label %207

207:                                              ; preds = %174
  %208 = load i64*, i64** %8, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 7
  %210 = load i64, i64* %209, align 8
  %211 = getelementptr inbounds [8 x i64], [8 x i64]* %12, i64 0, i64 7
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %210, %212
  br i1 %213, label %214, label %219

214:                                              ; preds = %207, %174
  %215 = load i64, i64* @BIT3, align 8
  %216 = xor i64 %215, -1
  %217 = load i64, i64* %11, align 8
  %218 = and i64 %217, %216
  store i64 %218, i64* %11, align 8
  br label %219

219:                                              ; preds = %214, %207
  br label %220

220:                                              ; preds = %219, %169
  %221 = load i64, i64* %11, align 8
  ret i64 %221
}

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @efuse_OneByteWrite(%struct.net_device*, i32, i64) #1

declare dso_local i32 @efuse_OneByteRead(%struct.net_device*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

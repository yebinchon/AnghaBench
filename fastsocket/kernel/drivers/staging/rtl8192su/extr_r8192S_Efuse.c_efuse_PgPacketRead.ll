; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_PgPacketRead.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192S_Efuse.c_efuse_PgPacketRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@PG_STATE_HEADER = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@PGPKT_DATA_SIZE = common dso_local global i32 0, align 4
@EFUSE_MAX_SIZE = common dso_local global i64 0, align 8
@PG_STATE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32*)* @efuse_PgPacketRead to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efuse_PgPacketRead(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [8 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %18 = load i32, i32* @PG_STATE_HEADER, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @FALSE, align 4
  store i32 %24, i32* %4, align 4
  br label %196

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = icmp sgt i32 %26, 15
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @FALSE, align 4
  store i32 %29, i32* %4, align 4
  br label %196

30:                                               ; preds = %25
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @PGPKT_DATA_SIZE, align 4
  %33 = sext i32 %32 to i64
  %34 = mul i64 4, %33
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(i32* %31, i32 255, i32 %35)
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %38 = load i32, i32* @PGPKT_DATA_SIZE, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(i32* %37, i32 255, i32 %41)
  br label %43

43:                                               ; preds = %151, %30
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* @EFUSE_MAX_SIZE, align 8
  %49 = icmp slt i64 %47, %48
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br i1 %51, label %52, label %152

52:                                               ; preds = %50
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @PG_STATE_HEADER, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %133

57:                                               ; preds = %52
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i64 @efuse_OneByteRead(%struct.net_device* %58, i64 %59, i32* %11)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %130

62:                                               ; preds = %57
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 255
  br i1 %64, label %65, label %130

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = ashr i32 %66, 4
  %68 = and i32 %67, 15
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %11, align 4
  %70 = and i32 %69, 15
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @efuse_CalculateWordCnts(i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %121

77:                                               ; preds = %65
  store i32 0, i32* %16, align 4
  br label %78

78:                                               ; preds = %103, %77
  %79 = load i32, i32* %16, align 4
  %80 = load i32, i32* %12, align 4
  %81 = mul nsw i32 %80, 2
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %106

83:                                               ; preds = %78
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = load i64, i64* %13, align 8
  %86 = add nsw i64 %85, 1
  %87 = load i32, i32* %16, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = call i64 @efuse_OneByteRead(%struct.net_device* %84, i64 %89, i32* %11)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %83
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %16, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 %95
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp ne i32 %97, 255
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32, i32* @FALSE, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %99, %92
  br label %102

102:                                              ; preds = %101, %83
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %16, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %16, align 4
  br label %78

106:                                              ; preds = %78
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @FALSE, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = load i32, i32* @PG_STATE_DATA, align 4
  store i32 %111, i32* %8, align 4
  br label %120

112:                                              ; preds = %106
  %113 = load i64, i64* %13, align 8
  %114 = load i32, i32* %12, align 4
  %115 = mul nsw i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %113, %116
  %118 = add nsw i64 %117, 1
  store i64 %118, i64* %13, align 8
  %119 = load i32, i32* @PG_STATE_HEADER, align 4
  store i32 %119, i32* %8, align 4
  br label %120

120:                                              ; preds = %112, %110
  br label %129

121:                                              ; preds = %65
  %122 = load i64, i64* %13, align 8
  %123 = load i32, i32* %12, align 4
  %124 = mul nsw i32 %123, 2
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %122, %125
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %13, align 8
  %128 = load i32, i32* @PG_STATE_HEADER, align 4
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %121, %120
  br label %132

130:                                              ; preds = %62, %57
  %131 = load i32, i32* @FALSE, align 4
  store i32 %131, i32* %9, align 4
  br label %132

132:                                              ; preds = %130, %129
  br label %151

133:                                              ; preds = %52
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @PG_STATE_DATA, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %133
  %139 = load i32, i32* %15, align 4
  %140 = getelementptr inbounds [8 x i32], [8 x i32]* %17, i64 0, i64 0
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @efuse_WordEnableDataRead(i32 %139, i32* %140, i32* %141)
  %143 = load i64, i64* %13, align 8
  %144 = load i32, i32* %12, align 4
  %145 = mul nsw i32 %144, 2
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %143, %146
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* %13, align 8
  %149 = load i32, i32* @PG_STATE_HEADER, align 4
  store i32 %149, i32* %8, align 4
  br label %150

150:                                              ; preds = %138, %133
  br label %151

151:                                              ; preds = %150, %132
  br label %43

152:                                              ; preds = %50
  %153 = load i32*, i32** %7, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 255
  br i1 %156, label %157, label %194

157:                                              ; preds = %152
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 255
  br i1 %161, label %162, label %194

162:                                              ; preds = %157
  %163 = load i32*, i32** %7, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 2
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 255
  br i1 %166, label %167, label %194

167:                                              ; preds = %162
  %168 = load i32*, i32** %7, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  %170 = load i32, i32* %169, align 4
  %171 = icmp eq i32 %170, 255
  br i1 %171, label %172, label %194

172:                                              ; preds = %167
  %173 = load i32*, i32** %7, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 255
  br i1 %176, label %177, label %194

177:                                              ; preds = %172
  %178 = load i32*, i32** %7, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 5
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 255
  br i1 %181, label %182, label %194

182:                                              ; preds = %177
  %183 = load i32*, i32** %7, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 6
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 255
  br i1 %186, label %187, label %194

187:                                              ; preds = %182
  %188 = load i32*, i32** %7, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 7
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %190, 255
  br i1 %191, label %192, label %194

192:                                              ; preds = %187
  %193 = load i32, i32* @FALSE, align 4
  store i32 %193, i32* %4, align 4
  br label %196

194:                                              ; preds = %187, %182, %177, %172, %167, %162, %157, %152
  %195 = load i32, i32* @TRUE, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %194, %192, %28, %23
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @efuse_OneByteRead(%struct.net_device*, i64, i32*) #1

declare dso_local i32 @efuse_CalculateWordCnts(i32) #1

declare dso_local i32 @efuse_WordEnableDataRead(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

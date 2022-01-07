; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_setup_tearsync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_blizzard.c_setup_tearsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64 (...)*, i32 (i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@BLIZZARD_HSW = common dso_local global i32 0, align 4
@BLIZZARD_VSW = common dso_local global i32 0, align 4
@BLIZZARD_HDISP = common dso_local global i32 0, align 4
@BLIZZARD_VDISP0 = common dso_local global i32 0, align 4
@BLIZZARD_VDISP1 = common dso_local global i32 0, align 4
@BLIZZARD_HNDP = common dso_local global i32 0, align 4
@BLIZZARD_VNDP = common dso_local global i32 0, align 4
@blizzard = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"max_tx_rate %ld HZ\0A\00", align 1
@EDOM = common dso_local global i32 0, align 4
@BLIZZARD_NDISP_CTRL_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"pix_clk %ld HZ pix_tx_time %ld ps line_upd_time %ld ps\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"hs %d ps vs %d ps mode %d vsync_only %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @setup_tearsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_tearsync(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load i32, i32* @BLIZZARD_HSW, align 4
  %22 = call i32 @blizzard_read_reg(i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @BLIZZARD_VSW, align 4
  %24 = call i32 @blizzard_read_reg(i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, 128
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %11, align 4
  %31 = and i32 %30, 128
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, 127
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, 63
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @BLIZZARD_HDISP, align 4
  %40 = call i32 @blizzard_read_reg(i32 %39)
  %41 = mul nsw i32 %40, 8
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @BLIZZARD_VDISP0, align 4
  %43 = call i32 @blizzard_read_reg(i32 %42)
  %44 = load i32, i32* @BLIZZARD_VDISP1, align 4
  %45 = call i32 @blizzard_read_reg(i32 %44)
  %46 = and i32 %45, 3
  %47 = shl i32 %46, 8
  %48 = add nsw i32 %43, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @BLIZZARD_HNDP, align 4
  %50 = call i32 @blizzard_read_reg(i32 %49)
  %51 = and i32 %50, 63
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @BLIZZARD_VNDP, align 4
  %53 = call i32 @blizzard_read_reg(i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 5, i32 0), align 8
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 0), align 8
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 3), align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64 (...)*, i64 (...)** %56, align 8
  %58 = icmp ne i64 (...)* %57, null
  br i1 %58, label %59, label %79

59:                                               ; preds = %2
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 3), align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64 (...)*, i64 (...)** %61, align 8
  %63 = call i64 (...) %62()
  store i64 %63, i64* %20, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 4), align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %20, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i64, i64* %20, align 8
  %71 = udiv i64 %70, 1000
  %72 = udiv i64 1000000000, %71
  store i64 %72, i64* %19, align 8
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 0), align 8
  %74 = load i64, i64* %19, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %59
  %77 = load i64, i64* %19, align 8
  store i64 %77, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 0), align 8
  br label %78

78:                                               ; preds = %76, %59
  br label %79

79:                                               ; preds = %78, %2
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %80, %81
  %83 = mul nsw i32 %82, 1000000
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %4, align 8
  %86 = udiv i64 %85, 1000
  %87 = udiv i64 %84, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 1), align 8
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 1), align 8
  %90 = mul nsw i32 %89, 1000
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 1), align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 0), align 8
  %94 = mul i64 %92, %93
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 1), align 8
  %96 = sext i32 %95 to i64
  %97 = icmp ugt i64 %94, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %79
  store i32 1, i32* %16, align 4
  br label %100

99:                                               ; preds = %79
  store i32 0, i32* %16, align 4
  br label %100

100:                                              ; preds = %99, %98
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %100
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106, %103
  store i32 1, i32* %17, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %13, align 4
  br label %119

112:                                              ; preds = %106, %100
  store i32 0, i32* %17, align 4
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %118

118:                                              ; preds = %117, %112
  br label %119

119:                                              ; preds = %118, %109
  %120 = load i32, i32* %12, align 4
  %121 = mul nsw i32 %120, 1000000
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %4, align 8
  %124 = udiv i64 %123, 1000
  %125 = udiv i64 %122, %124
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %12, align 4
  %128 = mul nsw i32 %127, 1000
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %130, %131
  %133 = mul nsw i32 %129, %132
  %134 = mul nsw i32 %133, 1000000
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %4, align 8
  %137 = udiv i64 %136, 1000
  %138 = udiv i64 %135, %137
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %13, align 4
  %140 = load i32, i32* %13, align 4
  %141 = mul nsw i32 %140, 1000
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %12, align 4
  %144 = icmp sle i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %119
  %146 = load i32, i32* @EDOM, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %213

148:                                              ; preds = %119
  %149 = load i32, i32* %12, align 4
  %150 = mul nsw i32 %149, 12
  %151 = sdiv i32 %150, 10
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp sgt i32 %152, 10000
  br i1 %153, label %154, label %155

154:                                              ; preds = %148
  store i32 10000, i32* %12, align 4
  br label %155

155:                                              ; preds = %154, %148
  %156 = load i32, i32* @BLIZZARD_NDISP_CTRL_STATUS, align 4
  %157 = call i32 @blizzard_read_reg(i32 %156)
  store i32 %157, i32* %18, align 4
  %158 = load i32, i32* %18, align 4
  %159 = and i32 %158, -4
  store i32 %159, i32* %18, align 4
  %160 = load i32, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 1, i32 0
  %164 = load i32, i32* %18, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %18, align 4
  %166 = load i32, i32* %17, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %155
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br label %171

171:                                              ; preds = %168, %155
  %172 = phi i1 [ false, %155 ], [ %170, %168 ]
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 0, i32 2
  %175 = load i32, i32* %18, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %18, align 4
  %177 = load i32, i32* @BLIZZARD_NDISP_CTRL_STATUS, align 4
  %178 = load i32, i32* %18, align 4
  %179 = call i32 @blizzard_write_reg(i32 %177, i32 %178)
  %180 = load i32, i32* %16, align 4
  %181 = icmp ne i32 %180, 0
  %182 = xor i1 %181, true
  %183 = zext i1 %182 to i32
  store i32 %183, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 2), align 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 4), align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i64, i64* %4, align 8
  %188 = trunc i64 %187 to i32
  %189 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 0), align 8
  %190 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 1), align 8
  %191 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %186, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %188, i64 %189, i32 %190)
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 4), align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %18, align 4
  %198 = and i32 %197, 3
  %199 = load i32, i32* %16, align 4
  %200 = icmp ne i32 %199, 0
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %194, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %195, i32 %196, i32 %198, i32 %202)
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @blizzard, i32 0, i32 3), align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %13, align 4
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* %15, align 4
  %211 = load i32, i32* %5, align 4
  %212 = call i32 %206(i32 1, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211)
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %171, %145
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @blizzard_read_reg(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @blizzard_write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_daio_mgr_commit_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_cthw20k1.c_daio_mgr_commit_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw = type { i32 }
%struct.daio_mgr_ctrl_blk = type { %struct.TYPE_6__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 }

@I2SCTL = common dso_local global i64 0, align 8
@SPOCTL = common dso_local global i64 0, align 8
@SPICTL = common dso_local global i64 0, align 8
@DAOIMAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw*, i8*)* @daio_mgr_commit_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @daio_mgr_commit_write(%struct.hw* %0, i8* %1) #0 {
  %3 = alloca %struct.hw*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.daio_mgr_ctrl_blk*, align 8
  %6 = alloca i32, align 4
  store %struct.hw* %0, %struct.hw** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.daio_mgr_ctrl_blk*
  store %struct.daio_mgr_ctrl_blk* %8, %struct.daio_mgr_ctrl_blk** %5, align 8
  %9 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %10 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %17 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %78

22:                                               ; preds = %15, %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %67, %22
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %70

26:                                               ; preds = %23
  %27 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %28 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %26
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %41 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, %39
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %36, %26
  %47 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %48 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %46
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 1, %57
  %59 = xor i32 %58, -1
  %60 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %61 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %59
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %56, %46
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %23

70:                                               ; preds = %23
  %71 = load %struct.hw*, %struct.hw** %3, align 8
  %72 = load i64, i64* @I2SCTL, align 8
  %73 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %74 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @hw_write_20kx(%struct.hw* %71, i64 %72, i32 %75)
  %77 = call i32 @mdelay(i32 1)
  br label %78

78:                                               ; preds = %70, %15
  %79 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %80 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %121

85:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %110, %85
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 4
  br i1 %88, label %89, label %113

89:                                               ; preds = %86
  %90 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %91 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = shl i32 1, %95
  %97 = and i32 %94, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %89
  %100 = load i32, i32* %6, align 4
  %101 = shl i32 1, %100
  %102 = xor i32 %101, -1
  %103 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %104 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %102
  store i32 %108, i32* %106, align 8
  br label %109

109:                                              ; preds = %99, %89
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  br label %86

113:                                              ; preds = %86
  %114 = load %struct.hw*, %struct.hw** %3, align 8
  %115 = load i64, i64* @SPOCTL, align 8
  %116 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %117 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @hw_write_20kx(%struct.hw* %114, i64 %115, i32 %118)
  %120 = call i32 @mdelay(i32 1)
  br label %121

121:                                              ; preds = %113, %78
  %122 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %123 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %164

128:                                              ; preds = %121
  store i32 0, i32* %6, align 4
  br label %129

129:                                              ; preds = %153, %128
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 4
  br i1 %131, label %132, label %156

132:                                              ; preds = %129
  %133 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %134 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %6, align 4
  %139 = shl i32 1, %138
  %140 = and i32 %137, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %152

142:                                              ; preds = %132
  %143 = load i32, i32* %6, align 4
  %144 = shl i32 1, %143
  %145 = xor i32 %144, -1
  %146 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %147 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, %145
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %142, %132
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %6, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %6, align 4
  br label %129

156:                                              ; preds = %129
  %157 = load %struct.hw*, %struct.hw** %3, align 8
  %158 = load i64, i64* @SPICTL, align 8
  %159 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %160 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @hw_write_20kx(%struct.hw* %157, i64 %158, i32 %161)
  %163 = call i32 @mdelay(i32 1)
  br label %164

164:                                              ; preds = %156, %121
  %165 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %166 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 4
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %190

171:                                              ; preds = %164
  %172 = load %struct.hw*, %struct.hw** %3, align 8
  %173 = load i64, i64* @DAOIMAP, align 8
  %174 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %175 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = mul nsw i32 %177, 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %173, %179
  %181 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %182 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @hw_write_20kx(%struct.hw* %172, i64 %180, i32 %184)
  %186 = load %struct.daio_mgr_ctrl_blk*, %struct.daio_mgr_ctrl_blk** %5, align 8
  %187 = getelementptr inbounds %struct.daio_mgr_ctrl_blk, %struct.daio_mgr_ctrl_blk* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 4
  store i64 0, i64* %189, align 8
  br label %190

190:                                              ; preds = %171, %164
  ret i32 0
}

declare dso_local i32 @hw_write_20kx(%struct.hw*, i64, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

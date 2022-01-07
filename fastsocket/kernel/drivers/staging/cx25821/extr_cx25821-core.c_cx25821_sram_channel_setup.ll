; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_sram_channel_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_sram_channel_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32 }
%struct.sram_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@RISC_JUMP = common dso_local global i32 0, align 4
@RISC_IRQ1 = common dso_local global i32 0, align 4
@RISC_CNT_INC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_sram_channel_setup(%struct.cx25821_dev* %0, %struct.sram_channel* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx25821_dev*, align 8
  %7 = alloca %struct.sram_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cx25821_dev* %0, %struct.cx25821_dev** %6, align 8
  store %struct.sram_channel* %1, %struct.sram_channel** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %14 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %4
  %18 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %19 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cx_write(i32 %20, i32 0)
  %22 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %23 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @cx_write(i32 %24, i32 0)
  %26 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %27 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @cx_write(i32 %28, i32 0)
  %30 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %31 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @cx_write(i32 %32, i32 0)
  store i32 0, i32* %5, align 4
  br label %219

34:                                               ; preds = %4
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, 7
  %37 = and i32 %36, -8
  store i32 %37, i32* %8, align 4
  %38 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %39 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %42 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = udiv i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ugt i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 4, i32* %11, align 4
  br label %49

49:                                               ; preds = %48, %34
  %50 = load i32, i32* %11, align 4
  %51 = icmp ult i32 %50, 2
  %52 = zext i1 %51 to i32
  %53 = call i32 @BUG_ON(i32 %52)
  %54 = load i32, i32* @RISC_JUMP, align 4
  %55 = load i32, i32* @RISC_IRQ1, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @RISC_CNT_INC, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @cx_write(i32 8, i32 %58)
  %60 = call i32 @cx_write(i32 12, i32 8)
  %61 = call i32 @cx_write(i32 16, i32 0)
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %97, %49
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ult i32 %63, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %62
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = mul i32 16, %68
  %70 = add i32 %67, %69
  %71 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %72 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %10, align 4
  %76 = mul i32 %74, %75
  %77 = add i32 %73, %76
  %78 = call i32 @cx_write(i32 %70, i32 %77)
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %10, align 4
  %81 = mul i32 16, %80
  %82 = add i32 %79, %81
  %83 = add i32 %82, 4
  %84 = call i32 @cx_write(i32 %83, i32 0)
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %10, align 4
  %87 = mul i32 16, %86
  %88 = add i32 %85, %87
  %89 = add i32 %88, 8
  %90 = call i32 @cx_write(i32 %89, i32 0)
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %10, align 4
  %93 = mul i32 16, %92
  %94 = add i32 %91, %93
  %95 = add i32 %94, 12
  %96 = call i32 @cx_write(i32 %95, i32 0)
  br label %97

97:                                               ; preds = %66
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %62

100:                                              ; preds = %62
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %113, %100
  %102 = load i32, i32* %10, align 4
  %103 = icmp ult i32 %102, 128
  br i1 %103, label %104, label %116

104:                                              ; preds = %101
  %105 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %106 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %10, align 4
  %109 = mul i32 4, %108
  %110 = add i32 %107, %109
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @cx_write(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %10, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %101

116:                                              ; preds = %101
  %117 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %118 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %117, i32 0, i32 9
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %123 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = add nsw i32 %124, 0
  %126 = call i32 @cx_write(i32 %125, i32 8)
  br label %134

127:                                              ; preds = %116
  %128 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %129 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 %130, 0
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @cx_write(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %127, %121
  %135 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %136 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 4
  %139 = call i32 @cx_write(i32 %138, i32 0)
  %140 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %141 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, 8
  %144 = load i32, i32* %12, align 4
  %145 = call i32 @cx_write(i32 %143, i32 %144)
  %146 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %147 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 12
  %150 = load i32, i32* %11, align 4
  %151 = mul i32 %150, 16
  %152 = lshr i32 %151, 3
  %153 = call i32 @cx_write(i32 %149, i32 %152)
  %154 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %155 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %156, 16
  %158 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %159 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @cx_write(i32 %157, i32 %160)
  %162 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %163 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %162, i32 0, i32 9
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %134
  %167 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %168 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 20
  %171 = call i32 @cx_write(i32 %170, i32 -2147483632)
  br label %178

172:                                              ; preds = %134
  %173 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %174 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 20
  %177 = call i32 @cx_write(i32 %176, i32 16)
  br label %178

178:                                              ; preds = %172, %166
  store i32 24, i32* %10, align 4
  br label %179

179:                                              ; preds = %189, %178
  %180 = load i32, i32* %10, align 4
  %181 = icmp ult i32 %180, 80
  br i1 %181, label %182, label %192

182:                                              ; preds = %179
  %183 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %184 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = add i32 %185, %186
  %188 = call i32 @cx_write(i32 %187, i32 0)
  br label %189

189:                                              ; preds = %182
  %190 = load i32, i32* %10, align 4
  %191 = add i32 %190, 4
  store i32 %191, i32* %10, align 4
  br label %179

192:                                              ; preds = %179
  %193 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %194 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %197 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @cx_write(i32 %195, i32 %198)
  %200 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %201 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = call i32 @cx_write(i32 %202, i32 %203)
  %205 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %206 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %11, align 4
  %209 = mul i32 %208, 16
  %210 = lshr i32 %209, 3
  %211 = call i32 @cx_write(i32 %207, i32 %210)
  %212 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %213 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %212, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* %8, align 4
  %216 = lshr i32 %215, 3
  %217 = sub i32 %216, 1
  %218 = call i32 @cx_write(i32 %214, i32 %217)
  store i32 0, i32* %5, align 4
  br label %219

219:                                              ; preds = %192, %17
  %220 = load i32, i32* %5, align 4
  ret i32 %220
}

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

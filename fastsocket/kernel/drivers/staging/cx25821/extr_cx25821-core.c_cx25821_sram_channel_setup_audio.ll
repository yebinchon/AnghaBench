; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_sram_channel_setup_audio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/cx25821/extr_cx25821-core.c_cx25821_sram_channel_setup_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx25821_dev = type { i32 }
%struct.sram_channel = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@RISC_JUMP = common dso_local global i32 0, align 4
@RISC_IRQ1 = common dso_local global i32 0, align 4
@RISC_CNT_INC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25821_sram_channel_setup_audio(%struct.cx25821_dev* %0, %struct.sram_channel* %1, i32 %2, i32 %3) #0 {
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
  br label %203

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
  %47 = icmp ugt i32 %46, 3
  br i1 %47, label %48, label %49

48:                                               ; preds = %34
  store i32 3, i32* %11, align 4
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
  %101 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %102 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %101, i32 0, i32 9
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %100
  %106 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %107 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 0
  %110 = call i32 @cx_write(i32 %109, i32 8)
  br label %118

111:                                              ; preds = %100
  %112 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %113 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 0
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @cx_write(i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %111, %105
  %119 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %120 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 4
  %123 = call i32 @cx_write(i32 %122, i32 0)
  %124 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %125 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @cx_write(i32 %127, i32 %128)
  %130 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %131 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, 12
  %134 = load i32, i32* %11, align 4
  %135 = mul i32 %134, 16
  %136 = lshr i32 %135, 3
  %137 = call i32 @cx_write(i32 %133, i32 %136)
  %138 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %139 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = add nsw i32 %140, 16
  %142 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %143 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %142, i32 0, i32 8
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @cx_write(i32 %141, i32 %144)
  %146 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %147 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %146, i32 0, i32 9
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %118
  %151 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %152 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = add nsw i32 %153, 20
  %155 = call i32 @cx_write(i32 %154, i32 -2147483632)
  br label %162

156:                                              ; preds = %118
  %157 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %158 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 20
  %161 = call i32 @cx_write(i32 %160, i32 16)
  br label %162

162:                                              ; preds = %156, %150
  store i32 24, i32* %10, align 4
  br label %163

163:                                              ; preds = %173, %162
  %164 = load i32, i32* %10, align 4
  %165 = icmp ult i32 %164, 80
  br i1 %165, label %166, label %176

166:                                              ; preds = %163
  %167 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %168 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = add i32 %169, %170
  %172 = call i32 @cx_write(i32 %171, i32 0)
  br label %173

173:                                              ; preds = %166
  %174 = load i32, i32* %10, align 4
  %175 = add i32 %174, 4
  store i32 %175, i32* %10, align 4
  br label %163

176:                                              ; preds = %163
  %177 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %178 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %181 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %180, i32 0, i32 7
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @cx_write(i32 %179, i32 %182)
  %184 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %185 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = call i32 @cx_write(i32 %186, i32 %187)
  %189 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %190 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %11, align 4
  %193 = mul i32 %192, 16
  %194 = lshr i32 %193, 3
  %195 = call i32 @cx_write(i32 %191, i32 %194)
  %196 = load %struct.sram_channel*, %struct.sram_channel** %7, align 8
  %197 = getelementptr inbounds %struct.sram_channel, %struct.sram_channel* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = lshr i32 %199, 3
  %201 = sub i32 %200, 1
  %202 = call i32 @cx_write(i32 %198, i32 %201)
  store i32 0, i32* %5, align 4
  br label %203

203:                                              ; preds = %176, %17
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

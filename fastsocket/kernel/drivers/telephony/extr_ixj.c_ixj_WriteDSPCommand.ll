; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_WriteDSPCommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_WriteDSPCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i16, i16 }

@.str = private unnamed_addr constant [53 x i8] c"IXJ %d DSP write overlap attempting command 0x%4.4x\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@hertz = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"IXJ %d DSP overlaped command 0x%4.4x during control ready failure.\0A\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"IXJ %d DSP overlaped command 0x%4.4x during status wait failure.\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"IXJ %d DSP overlaped command 0x%4.4x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, %struct.TYPE_8__*)* @ixj_WriteDSPCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixj_WriteDSPCommand(i16 zeroext %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__, align 2
  %7 = alloca i64, align 8
  store i16 %0, i16* %4, align 2
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = call i32 @atomic_inc(i32* %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = call i32 @atomic_read(i32* %12)
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i16, i16* %4, align 2
  %20 = call i32 @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %18, i16 zeroext %19)
  store i32 -1, i32* %3, align 4
  br label %175

21:                                               ; preds = %2
  %22 = load i16, i16* %4, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %23, 65280
  %25 = ashr i32 %24, 8
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i16 %26, i16* %27, align 2
  %28 = load i16, i16* %4, align 2
  %29 = zext i16 %28 to i32
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i16
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i16 %31, i16* %32, align 2
  %33 = load i32, i32* @jiffies, align 4
  %34 = load i32, i32* @hertz, align 4
  %35 = mul nsw i32 60, %34
  %36 = sdiv i32 %35, 100
  %37 = add nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %82, %21
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = call i32 @IsControlReady(%struct.TYPE_8__* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br i1 %43, label %44, label %83

44:                                               ; preds = %39
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ixj_perfmon(i32 %47)
  %49 = load i32, i32* @jiffies, align 4
  %50 = load i64, i64* %7, align 8
  %51 = call i64 @time_after(i32 %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %82

53:                                               ; preds = %44
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ixj_perfmon(i32 %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = call i32 @atomic_dec(i32* %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = call i32 @atomic_read(i32* %62)
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %53
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i16, i16* %4, align 2
  %70 = call i32 @printk(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %68, i16 zeroext %69)
  br label %71

71:                                               ; preds = %76, %65
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = call i32 @atomic_read(i32* %73)
  %75 = icmp sgt i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = call i32 @atomic_dec(i32* %78)
  br label %71

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %53
  store i32 -1, i32* %3, align 4
  br label %175

82:                                               ; preds = %44
  br label %39

83:                                               ; preds = %39
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %85 = load i16, i16* %84, align 2
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 6
  %90 = call i32 @outb(i16 zeroext %85, i64 %89)
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %92 = load i16, i16* %91, align 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, 7
  %97 = call i32 @outb(i16 zeroext %92, i64 %96)
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = call i64 @ixj_status_wait(%struct.TYPE_8__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %132

101:                                              ; preds = %83
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 255, i32* %104, align 8
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i32 255, i32* %107, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = call i32 @atomic_dec(i32* %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = call i32 @atomic_read(i32* %112)
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %101
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i16, i16* %4, align 2
  %120 = call i32 @printk(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i32 %118, i16 zeroext %119)
  br label %121

121:                                              ; preds = %126, %115
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = call i32 @atomic_read(i32* %123)
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = call i32 @atomic_dec(i32* %128)
  br label %121

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130, %101
  store i32 -1, i32* %3, align 4
  br label %175

132:                                              ; preds = %83
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 2
  %137 = call i8* @inb_p(i64 %136)
  %138 = ptrtoint i8* %137 to i32
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, 3
  %146 = call i8* @inb_p(i64 %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 1
  store i32 %147, i32* %150, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = call i32 @atomic_dec(i32* %152)
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = call i32 @atomic_read(i32* %155)
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %174

158:                                              ; preds = %132
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i16, i16* %4, align 2
  %163 = call i32 @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %161, i16 zeroext %162)
  br label %164

164:                                              ; preds = %169, %158
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = call i32 @atomic_read(i32* %166)
  %168 = icmp sgt i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = call i32 @atomic_dec(i32* %171)
  br label %164

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173, %132
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %131, %81, %15
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @printk(i8*, i32, i16 zeroext) #1

declare dso_local i32 @IsControlReady(%struct.TYPE_8__*) #1

declare dso_local i32 @ixj_perfmon(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @outb(i16 zeroext, i64) #1

declare dso_local i64 @ixj_status_wait(%struct.TYPE_8__*) #1

declare dso_local i8* @inb_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

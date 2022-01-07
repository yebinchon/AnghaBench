; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_ac97_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/arm/extr_aaci.c_aaci_ac97_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ac97 = type { i32, %struct.aaci* }
%struct.aaci = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@AACI_SL1TX = common dso_local global i64 0, align 8
@AACI_SLFR = common dso_local global i64 0, align 8
@SLFR_1TXB = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [27 x i8] c"timeout on slot 1 TX busy\0A\00", align 1
@SLFR_1RXV = common dso_local global i16 0, align 2
@SLFR_2RXV = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [21 x i8] c"timeout on RX valid\0A\00", align 1
@AACI_SL1RX = common dso_local global i64 0, align 8
@AACI_SL2RX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"ac97 read back fail.  retry\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"wrong ac97 register read back (%x != %x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.snd_ac97*, i16)* @aaci_ac97_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @aaci_ac97_read(%struct.snd_ac97* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.snd_ac97*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.aaci*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_ac97* %0, %struct.snd_ac97** %4, align 8
  store i16 %1, i16* %5, align 2
  %10 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %11 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %10, i32 0, i32 1
  %12 = load %struct.aaci*, %struct.aaci** %11, align 8
  store %struct.aaci* %12, %struct.aaci** %6, align 8
  store i32 5000, i32* %8, align 4
  store i32 10, i32* %9, align 4
  %13 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %14 = getelementptr inbounds %struct.snd_ac97, %struct.snd_ac97* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp sge i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i16 -1, i16* %3, align 2
  br label %162

18:                                               ; preds = %2
  %19 = load %struct.aaci*, %struct.aaci** %6, align 8
  %20 = getelementptr inbounds %struct.aaci, %struct.aaci* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.aaci*, %struct.aaci** %6, align 8
  %23 = load %struct.snd_ac97*, %struct.snd_ac97** %4, align 8
  %24 = call i32 @aaci_ac97_select_codec(%struct.aaci* %22, %struct.snd_ac97* %23)
  %25 = load i16, i16* %5, align 2
  %26 = zext i16 %25 to i32
  %27 = shl i32 %26, 12
  %28 = or i32 %27, 524288
  %29 = trunc i32 %28 to i16
  %30 = load %struct.aaci*, %struct.aaci** %6, align 8
  %31 = getelementptr inbounds %struct.aaci, %struct.aaci* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AACI_SL1TX, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i16 zeroext %29, i64 %34)
  br label %36

36:                                               ; preds = %55, %18
  %37 = load %struct.aaci*, %struct.aaci** %6, align 8
  %38 = getelementptr inbounds %struct.aaci, %struct.aaci* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AACI_SLFR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @readl(i64 %41)
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %7, align 2
  br label %44

44:                                               ; preds = %36
  %45 = load i16, i16* %7, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* @SLFR_1TXB, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %46, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br label %55

55:                                               ; preds = %51, %44
  %56 = phi i1 [ false, %44 ], [ %54, %51 ]
  br i1 %56, label %36, label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = load %struct.aaci*, %struct.aaci** %6, align 8
  %62 = getelementptr inbounds %struct.aaci, %struct.aaci* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i16 -1, i16* %7, align 2
  br label %157

66:                                               ; preds = %57
  %67 = call i32 @udelay(i32 42)
  store i32 5000, i32* %8, align 4
  br label %68

68:                                               ; preds = %96, %66
  %69 = call i32 (...) @cond_resched()
  %70 = load %struct.aaci*, %struct.aaci** %6, align 8
  %71 = getelementptr inbounds %struct.aaci, %struct.aaci* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AACI_SLFR, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @readl(i64 %74)
  %76 = load i16, i16* @SLFR_1RXV, align 2
  %77 = zext i16 %76 to i32
  %78 = load i16, i16* @SLFR_2RXV, align 2
  %79 = zext i16 %78 to i32
  %80 = or i32 %77, %79
  %81 = and i32 %75, %80
  %82 = trunc i32 %81 to i16
  store i16 %82, i16* %7, align 2
  br label %83

83:                                               ; preds = %68
  %84 = load i16, i16* %7, align 2
  %85 = zext i16 %84 to i32
  %86 = load i16, i16* @SLFR_1RXV, align 2
  %87 = zext i16 %86 to i32
  %88 = load i16, i16* @SLFR_2RXV, align 2
  %89 = zext i16 %88 to i32
  %90 = or i32 %87, %89
  %91 = icmp ne i32 %85, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br label %96

96:                                               ; preds = %92, %83
  %97 = phi i1 [ false, %83 ], [ %95, %92 ]
  br i1 %97, label %68, label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load %struct.aaci*, %struct.aaci** %6, align 8
  %103 = getelementptr inbounds %struct.aaci, %struct.aaci* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 @dev_err(i32* %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i16 -1, i16* %7, align 2
  br label %157

107:                                              ; preds = %98
  br label %108

108:                                              ; preds = %153, %107
  %109 = load %struct.aaci*, %struct.aaci** %6, align 8
  %110 = getelementptr inbounds %struct.aaci, %struct.aaci* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @AACI_SL1RX, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @readl(i64 %113)
  %115 = ashr i32 %114, 12
  %116 = trunc i32 %115 to i16
  store i16 %116, i16* %7, align 2
  %117 = load i16, i16* %7, align 2
  %118 = zext i16 %117 to i32
  %119 = load i16, i16* %5, align 2
  %120 = zext i16 %119 to i32
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %108
  %123 = load %struct.aaci*, %struct.aaci** %6, align 8
  %124 = getelementptr inbounds %struct.aaci, %struct.aaci* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @AACI_SL2RX, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @readl(i64 %127)
  %129 = ashr i32 %128, 4
  %130 = trunc i32 %129 to i16
  store i16 %130, i16* %7, align 2
  br label %156

131:                                              ; preds = %108
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load %struct.aaci*, %struct.aaci** %6, align 8
  %137 = getelementptr inbounds %struct.aaci, %struct.aaci* %136, i32 0, i32 1
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = call i32 (i32*, i8*, ...) @dev_warn(i32* %139, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %153

141:                                              ; preds = %131
  %142 = load %struct.aaci*, %struct.aaci** %6, align 8
  %143 = getelementptr inbounds %struct.aaci, %struct.aaci* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i16, i16* %7, align 2
  %147 = zext i16 %146 to i32
  %148 = load i16, i16* %5, align 2
  %149 = zext i16 %148 to i32
  %150 = call i32 (i32*, i8*, ...) @dev_warn(i32* %145, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %147, i32 %149)
  store i16 -1, i16* %7, align 2
  br label %151

151:                                              ; preds = %141
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152, %135
  %154 = load i32, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %108, label %156

156:                                              ; preds = %153, %122
  br label %157

157:                                              ; preds = %156, %101, %60
  %158 = load %struct.aaci*, %struct.aaci** %6, align 8
  %159 = getelementptr inbounds %struct.aaci, %struct.aaci* %158, i32 0, i32 0
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i16, i16* %7, align 2
  store i16 %161, i16* %3, align 2
  br label %162

162:                                              ; preds = %157, %17
  %163 = load i16, i16* %3, align 2
  ret i16 %163
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @aaci_ac97_select_codec(%struct.aaci*, %struct.snd_ac97*) #1

declare dso_local i32 @writel(i16 zeroext, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_play_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_play_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i64, i64, i64, i64, i32, i64 }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@ixjdebug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"IXJ %d Starting Play Codec %d at %ld\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"Write buffer allocation for ixj board %d failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @ixj_play_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixj_play_start(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i16, align 2
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i16 0, i16* %4, align 2
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 8
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = call i32 @ixj_play_stop(%struct.TYPE_10__* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* @ixjdebug, align 4
  %14 = and i32 %13, 2
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @jiffies, align 4
  %24 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %12
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = call i64 @ixj_WriteDSPCommand(i32 4064, %struct.TYPE_10__* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 13
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %60, label %40

40:                                               ; preds = %25
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %51 [
    i32 134, label %44
    i32 135, label %45
    i32 128, label %46
    i32 129, label %47
    i32 130, label %48
    i32 133, label %49
    i32 132, label %50
    i32 131, label %50
  ]

44:                                               ; preds = %40
  store i16 21041, i16* %4, align 2
  br label %52

45:                                               ; preds = %40
  store i16 21042, i16* %4, align 2
  br label %52

46:                                               ; preds = %40
  store i16 21040, i16* %4, align 2
  br label %52

47:                                               ; preds = %40
  store i16 21043, i16* %4, align 2
  br label %52

48:                                               ; preds = %40
  store i16 21044, i16* %4, align 2
  br label %52

49:                                               ; preds = %40
  store i16 21045, i16* %4, align 2
  br label %52

50:                                               ; preds = %40, %40
  store i16 21046, i16* %4, align 2
  br label %52

51:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %186

52:                                               ; preds = %50, %49, %48, %47, %46, %45, %44
  %53 = load i16, i16* %4, align 2
  %54 = zext i16 %53 to i32
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = call i64 @ixj_WriteDSPCommand(i32 %54, %struct.TYPE_10__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 -1, i32* %2, align 4
  br label %186

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %25
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %63, 2
  %65 = load i32, i32* @GFP_ATOMIC, align 4
  %66 = call i64 @kmalloc(i32 %64, i32 %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 8
  store i64 %66, i64* %68, align 8
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %60
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 12
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %186

80:                                               ; preds = %60
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 3
  store i32 1, i32* %82, align 4
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = mul nsw i32 %85, 2
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 8
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 %94, 2
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %91, %96
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 11
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 8
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 9
  store i64 %102, i64* %104, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 10
  store i64 %102, i64* %106, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %108 = call i64 @ixj_WriteDSPCommand(i32 20994, %struct.TYPE_10__* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %80
  store i32 -1, i32* %2, align 4
  br label %186

111:                                              ; preds = %80
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  switch i32 %114, label %152 [
    i32 0, label %115
    i32 2, label %116
    i32 4, label %125
    i32 5, label %134
    i32 6, label %143
  ]

115:                                              ; preds = %111
  store i16 11267, i16* %4, align 2
  br label %152

116:                                              ; preds = %111
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 18
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i16 11299, i16* %4, align 2
  br label %124

123:                                              ; preds = %116
  store i16 11297, i16* %4, align 2
  br label %124

124:                                              ; preds = %123, %122
  br label %152

125:                                              ; preds = %111
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 7
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 18
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i16 11331, i16* %4, align 2
  br label %133

132:                                              ; preds = %125
  store i16 11329, i16* %4, align 2
  br label %133

133:                                              ; preds = %132, %131
  br label %152

134:                                              ; preds = %111
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 7
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 18
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store i16 11347, i16* %4, align 2
  br label %142

141:                                              ; preds = %134
  store i16 11345, i16* %4, align 2
  br label %142

142:                                              ; preds = %141, %140
  br label %152

143:                                              ; preds = %111
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 7
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp eq i32 %147, 18
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i16 11363, i16* %4, align 2
  br label %151

150:                                              ; preds = %143
  store i16 11361, i16* %4, align 2
  br label %151

151:                                              ; preds = %150, %149
  br label %152

152:                                              ; preds = %111, %151, %142, %133, %124, %115
  %153 = load i16, i16* %4, align 2
  %154 = zext i16 %153 to i32
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %156 = call i64 @ixj_WriteDSPCommand(i32 %154, %struct.TYPE_10__* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  store i32 -1, i32* %2, align 4
  br label %186

159:                                              ; preds = %152
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %161 = call i64 @ixj_WriteDSPCommand(i32 8192, %struct.TYPE_10__* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 -1, i32* %2, align 4
  br label %186

164:                                              ; preds = %159
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 8192, %167
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %170 = call i64 @ixj_WriteDSPCommand(i32 %168, %struct.TYPE_10__* %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %164
  store i32 -1, i32* %2, align 4
  br label %186

173:                                              ; preds = %164
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 6
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %173
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 5
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @ixj_aec_start(%struct.TYPE_10__* %180, i32 %183)
  br label %185

185:                                              ; preds = %179, %173
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %185, %172, %163, %158, %110, %73, %58, %51
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @ixj_play_stop(%struct.TYPE_10__*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i64 @ixj_WriteDSPCommand(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @ixj_aec_start(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

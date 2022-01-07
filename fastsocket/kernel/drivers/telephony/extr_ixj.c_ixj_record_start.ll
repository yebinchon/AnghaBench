; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_record_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_ixj_record_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }

@ixjdebug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"IXJ %d Starting Record Codec %d at %ld\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Read buffer allocation for ixj board %d failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @ixj_record_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixj_record_start(%struct.TYPE_10__* %0) #0 {
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
  %11 = call i32 @ixj_record_stop(%struct.TYPE_10__* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = call i64 @ixj_WriteDSPCommand(i16 zeroext 4064, %struct.TYPE_10__* %16)
  %18 = load i32, i32* @ixjdebug, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @jiffies, align 4
  %29 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %21, %12
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %46 [
    i32 134, label %39
    i32 135, label %40
    i32 128, label %41
    i32 129, label %42
    i32 130, label %43
    i32 133, label %44
    i32 132, label %45
    i32 131, label %45
  ]

39:                                               ; preds = %35
  store i16 20785, i16* %4, align 2
  br label %47

40:                                               ; preds = %35
  store i16 20786, i16* %4, align 2
  br label %47

41:                                               ; preds = %35
  store i16 20784, i16* %4, align 2
  br label %47

42:                                               ; preds = %35
  store i16 20787, i16* %4, align 2
  br label %47

43:                                               ; preds = %35
  store i16 20788, i16* %4, align 2
  br label %47

44:                                               ; preds = %35
  store i16 20789, i16* %4, align 2
  br label %47

45:                                               ; preds = %35, %35
  store i16 20790, i16* %4, align 2
  br label %47

46:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %157

47:                                               ; preds = %45, %44, %43, %42, %41, %40, %39
  %48 = load i16, i16* %4, align 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = call i64 @ixj_WriteDSPCommand(i16 zeroext %48, %struct.TYPE_10__* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i32 -1, i32* %2, align 4
  br label %157

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %53, %30
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 8
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %86, label %59

59:                                               ; preds = %54
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 8
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = mul nsw i32 %67, 2
  %69 = load i32, i32* @GFP_ATOMIC, align 4
  %70 = call i64 @kmalloc(i32 %68, i32 %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 8
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %64, %59
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %157

85:                                               ; preds = %73
  br label %86

86:                                               ; preds = %85, %54
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 2
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = call i64 @ixj_WriteDSPCommand(i16 zeroext 20738, %struct.TYPE_10__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  store i32 -1, i32* %2, align 4
  br label %157

97:                                               ; preds = %86
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %138 [
    i32 0, label %101
    i32 4, label %102
    i32 5, label %111
    i32 6, label %120
    i32 7, label %129
  ]

101:                                              ; preds = %97
  store i16 7171, i16* %4, align 2
  br label %138

102:                                              ; preds = %97
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 18
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  store i16 7683, i16* %4, align 2
  br label %110

109:                                              ; preds = %102
  store i16 7681, i16* %4, align 2
  br label %110

110:                                              ; preds = %109, %108
  br label %138

111:                                              ; preds = %97
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 6
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 18
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  store i16 7811, i16* %4, align 2
  br label %119

118:                                              ; preds = %111
  store i16 7809, i16* %4, align 2
  br label %119

119:                                              ; preds = %118, %117
  br label %138

120:                                              ; preds = %97
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 6
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = icmp eq i32 %124, 18
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i16 7939, i16* %4, align 2
  br label %128

127:                                              ; preds = %120
  store i16 7937, i16* %4, align 2
  br label %128

128:                                              ; preds = %127, %126
  br label %138

129:                                              ; preds = %97
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 18
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store i16 8067, i16* %4, align 2
  br label %137

136:                                              ; preds = %129
  store i16 8065, i16* %4, align 2
  br label %137

137:                                              ; preds = %136, %135
  br label %138

138:                                              ; preds = %97, %137, %128, %119, %110, %101
  %139 = load i16, i16* %4, align 2
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %141 = call i64 @ixj_WriteDSPCommand(i16 zeroext %139, %struct.TYPE_10__* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 -1, i32* %2, align 4
  br label %157

144:                                              ; preds = %138
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @ixj_aec_start(%struct.TYPE_10__* %151, i32 %154)
  br label %156

156:                                              ; preds = %150, %144
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %156, %143, %96, %78, %52, %46
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @ixj_record_stop(%struct.TYPE_10__*) #1

declare dso_local i64 @ixj_WriteDSPCommand(i16 zeroext, %struct.TYPE_10__*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @ixj_aec_start(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

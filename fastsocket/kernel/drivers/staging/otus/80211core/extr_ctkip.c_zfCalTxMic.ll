; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfCalTxMic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfCalTxMic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zsMicVar = type { i32 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"pMicKey is NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfCalTxMic(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32* %5, i32* %6, i32 %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.zsMicVar*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32* %8, i32** %18, align 8
  %26 = load i32*, i32** %15, align 8
  store i32* %26, i32** %24, align 8
  %27 = load i32*, i32** %16, align 8
  store i32* %27, i32** %25, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @zmw_get_wlan_dev(i32* %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ZM_MODE_AP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %9
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call %struct.zsMicVar* @zfApGetTxMicKey(i32* %36, i32* %37, i32* %23)
  store %struct.zsMicVar* %38, %struct.zsMicVar** %19, align 8
  %39 = load %struct.zsMicVar*, %struct.zsMicVar** %19, align 8
  %40 = icmp eq %struct.zsMicVar* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %149

42:                                               ; preds = %35
  br label %60

43:                                               ; preds = %9
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %43
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = call %struct.zsMicVar* @zfStaGetTxMicKey(i32* %50, i32* %51)
  store %struct.zsMicVar* %52, %struct.zsMicVar** %19, align 8
  %53 = load %struct.zsMicVar*, %struct.zsMicVar** %19, align 8
  %54 = icmp eq %struct.zsMicVar* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %149

57:                                               ; preds = %49
  br label %59

58:                                               ; preds = %43
  br label %149

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59, %42
  %61 = load %struct.zsMicVar*, %struct.zsMicVar** %19, align 8
  %62 = call i32 @zfMicClear(%struct.zsMicVar* %61)
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = call i32 @zfwBufGetSize(i32* %63, i32* %64)
  store i32 %65, i32* %21, align 4
  store i32 0, i32* %20, align 4
  br label %66

66:                                               ; preds = %77, %60
  %67 = load i32, i32* %20, align 4
  %68 = icmp slt i32 %67, 6
  br i1 %68, label %69, label %80

69:                                               ; preds = %66
  %70 = load i32*, i32** %24, align 8
  %71 = load i32, i32* %20, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.zsMicVar*, %struct.zsMicVar** %19, align 8
  %76 = call i32 @zfMicAppendByte(i32 %74, %struct.zsMicVar* %75)
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %20, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %20, align 4
  br label %66

80:                                               ; preds = %66
  store i32 0, i32* %20, align 4
  br label %81

81:                                               ; preds = %92, %80
  %82 = load i32, i32* %20, align 4
  %83 = icmp slt i32 %82, 6
  br i1 %83, label %84, label %95

84:                                               ; preds = %81
  %85 = load i32*, i32** %25, align 8
  %86 = load i32, i32* %20, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.zsMicVar*, %struct.zsMicVar** %19, align 8
  %91 = call i32 @zfMicAppendByte(i32 %89, %struct.zsMicVar* %90)
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %20, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %20, align 4
  br label %81

95:                                               ; preds = %81
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %17, align 4
  %100 = and i32 %99, 7
  %101 = load %struct.zsMicVar*, %struct.zsMicVar** %19, align 8
  %102 = call i32 @zfMicAppendByte(i32 %100, %struct.zsMicVar* %101)
  br label %106

103:                                              ; preds = %95
  %104 = load %struct.zsMicVar*, %struct.zsMicVar** %19, align 8
  %105 = call i32 @zfMicAppendByte(i32 0, %struct.zsMicVar* %104)
  br label %106

106:                                              ; preds = %103, %98
  %107 = load %struct.zsMicVar*, %struct.zsMicVar** %19, align 8
  %108 = call i32 @zfMicAppendByte(i32 0, %struct.zsMicVar* %107)
  %109 = load %struct.zsMicVar*, %struct.zsMicVar** %19, align 8
  %110 = call i32 @zfMicAppendByte(i32 0, %struct.zsMicVar* %109)
  %111 = load %struct.zsMicVar*, %struct.zsMicVar** %19, align 8
  %112 = call i32 @zfMicAppendByte(i32 0, %struct.zsMicVar* %111)
  store i32 0, i32* %20, align 4
  br label %113

113:                                              ; preds = %125, %106
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %20, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.zsMicVar*, %struct.zsMicVar** %19, align 8
  %124 = call i32 @zfMicAppendByte(i32 %122, %struct.zsMicVar* %123)
  br label %125

125:                                              ; preds = %117
  %126 = load i32, i32* %20, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %20, align 4
  br label %113

128:                                              ; preds = %113
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %20, align 4
  br label %130

130:                                              ; preds = %142, %128
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* %21, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %130
  %135 = load i32*, i32** %10, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = load i32, i32* %20, align 4
  %138 = call i32 @zmw_tx_buf_readb(i32* %135, i32* %136, i32 %137)
  store i32 %138, i32* %22, align 4
  %139 = load i32, i32* %22, align 4
  %140 = load %struct.zsMicVar*, %struct.zsMicVar** %19, align 8
  %141 = call i32 @zfMicAppendByte(i32 %139, %struct.zsMicVar* %140)
  br label %142

142:                                              ; preds = %134
  %143 = load i32, i32* %20, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %20, align 4
  br label %130

145:                                              ; preds = %130
  %146 = load i32*, i32** %18, align 8
  %147 = load %struct.zsMicVar*, %struct.zsMicVar** %19, align 8
  %148 = call i32 @zfMicGetMic(i32* %146, %struct.zsMicVar* %147)
  br label %149

149:                                              ; preds = %145, %58, %55, %41
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local %struct.zsMicVar* @zfApGetTxMicKey(i32*, i32*, i32*) #1

declare dso_local %struct.zsMicVar* @zfStaGetTxMicKey(i32*, i32*) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfMicClear(%struct.zsMicVar*) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zfMicAppendByte(i32, %struct.zsMicVar*) #1

declare dso_local i32 @zmw_tx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfMicGetMic(i32*, %struct.zsMicVar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

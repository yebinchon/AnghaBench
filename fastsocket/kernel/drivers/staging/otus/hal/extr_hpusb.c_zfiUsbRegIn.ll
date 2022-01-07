; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpusb.c_zfiUsbRegIn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpusb.c_zfiUsbRegIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.zsHpPriv*, i32 (i32*)* }
%struct.zsHpPriv = type { i32 }

@ZM_LV_3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"zfiUsbRegIn()\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\0A\0A WatchDog interrupt!!! : 0xC6 \0A\0A\00", align 1
@wd = common dso_local global %struct.TYPE_2__* null, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"##### Tx retransmission 5 times event #####\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfiUsbRegIn(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = load i32, i32* @ZM_LV_3, align 4
  %16 = call i32 @zm_msg0_mm(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %5, align 8
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  store i32* %22, i32** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 192
  %25 = icmp eq i32 %24, 192
  br i1 %25, label %26, label %156

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp eq i32 %27, 192
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @zfCoreEvent(i32* %30, i32 0, i32* %31)
  br label %155

33:                                               ; preds = %26
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 193
  br i1 %35, label %36, label %67

36:                                               ; preds = %33
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 16
  store i32 %40, i32* %9, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 2
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 9
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 1
  %49 = shl i32 %48, 6
  %50 = or i32 %44, %49
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 8
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  switch i32 %53, label %66 [
    i32 130, label %54
    i32 128, label %58
    i32 129, label %62
  ]

54:                                               ; preds = %36
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 @zfCoreEvent(i32* %55, i32 1, i32* %56)
  br label %66

58:                                               ; preds = %36
  %59 = load i32*, i32** %4, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @zfCoreEvent(i32* %59, i32 2, i32* %60)
  br label %66

62:                                               ; preds = %36
  %63 = load i32*, i32** %4, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @zfCoreEvent(i32* %63, i32 3, i32* %64)
  br label %66

66:                                               ; preds = %36, %62, %58, %54
  br label %154

67:                                               ; preds = %33
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 194
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @zfBeaconCfgInterrupt(i32* %71, i32* %72)
  br label %153

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, 195
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @zfEndOfAtimWindowInterrupt(i32* %78)
  br label %152

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 196
  br i1 %82, label %83, label %94

83:                                               ; preds = %80
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = ashr i32 %86, 16
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 65535
  %92 = shl i32 %91, 16
  %93 = add nsw i32 %87, %92
  store i32 %93, i32* %10, align 4
  br label %151

94:                                               ; preds = %80
  %95 = load i32, i32* %7, align 4
  %96 = icmp eq i32 %95, 197
  br i1 %96, label %97, label %115

97:                                               ; preds = %94
  store i32 1, i32* %11, align 4
  br label %98

98:                                               ; preds = %111, %97
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %6, align 4
  %101 = sdiv i32 %100, 4
  %102 = icmp slt i32 %99, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  store i32* %107, i32** %8, align 8
  %108 = load i32*, i32** %4, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = call i32 @zfCoreEvent(i32* %108, i32 4, i32* %109)
  br label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %98

114:                                              ; preds = %98
  br label %150

115:                                              ; preds = %94
  %116 = load i32, i32* %7, align 4
  %117 = icmp eq i32 %116, 198
  br i1 %117, label %118, label %131

118:                                              ; preds = %115
  %119 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32 (i32*)*, i32 (i32*)** %121, align 8
  %123 = icmp ne i32 (i32*)* %122, null
  br i1 %123, label %124, label %130

124:                                              ; preds = %118
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  %127 = load i32 (i32*)*, i32 (i32*)** %126, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 %127(i32* %128)
  br label %130

130:                                              ; preds = %124, %118
  br label %149

131:                                              ; preds = %115
  %132 = load i32, i32* %7, align 4
  %133 = icmp eq i32 %132, 200
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @zfwDbgProgrameFlashChkDone(i32* %135)
  br label %148

137:                                              ; preds = %131
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %138, 201
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load %struct.zsHpPriv*, %struct.zsHpPriv** %142, align 8
  store %struct.zsHpPriv* %143, %struct.zsHpPriv** %12, align 8
  %144 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %145 = load %struct.zsHpPriv*, %struct.zsHpPriv** %12, align 8
  %146 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %145, i32 0, i32 0
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %140, %137
  br label %148

148:                                              ; preds = %147, %134
  br label %149

149:                                              ; preds = %148, %130
  br label %150

150:                                              ; preds = %149, %114
  br label %151

151:                                              ; preds = %150, %83
  br label %152

152:                                              ; preds = %151, %77
  br label %153

153:                                              ; preds = %152, %70
  br label %154

154:                                              ; preds = %153, %66
  br label %155

155:                                              ; preds = %154, %29
  br label %161

156:                                              ; preds = %3
  %157 = load i32*, i32** %4, align 8
  %158 = load i32*, i32** %5, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @zfIdlRsp(i32* %157, i32* %158, i32 %159)
  br label %161

161:                                              ; preds = %156, %155
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_msg0_mm(i32, i8*) #1

declare dso_local i32 @zfCoreEvent(i32*, i32, i32*) #1

declare dso_local i32 @zfBeaconCfgInterrupt(i32*, i32*) #1

declare dso_local i32 @zfEndOfAtimWindowInterrupt(i32*) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

declare dso_local i32 @zfwDbgProgrameFlashChkDone(i32*) #1

declare dso_local i32 @zfIdlRsp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

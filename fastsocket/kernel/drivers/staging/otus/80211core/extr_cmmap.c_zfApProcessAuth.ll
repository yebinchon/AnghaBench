; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApProcessAuth.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApProcessAuth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32, i64* }

@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Rx Auth, seq=\00", align 1
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_STATE_AUTH = common dso_local global i32 0, align 4
@ZM_STATE_PREAUTH = common dso_local global i32 0, align 4
@ZM_WLAN_FRAME_TYPE_AUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfApProcessAuth(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
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
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %15, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @zmw_get_wlan_dev(i32* %19)
  %21 = call i32 (...) @zmw_declare_for_critical_section()
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @zmw_rx_buf_readb(i32* %22, i32* %23, i32 1)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = and i32 %25, 64
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @zmw_rx_buf_readh(i32* %29, i32* %30, i32 28)
  store i32 %31, i32* %9, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @zmw_rx_buf_readh(i32* %32, i32* %33, i32 30)
  store i32 %34, i32* %10, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @zmw_rx_buf_readh(i32* %35, i32* %36, i32 32)
  store i32 %37, i32* %11, align 4
  br label %48

38:                                               ; preds = %4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @zmw_rx_buf_readh(i32* %39, i32* %40, i32 24)
  store i32 %41, i32* %9, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @zmw_rx_buf_readh(i32* %42, i32* %43, i32 26)
  store i32 %44, i32* %10, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @zmw_rx_buf_readh(i32* %45, i32* %46, i32 28)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %38, %28
  %49 = load i32, i32* @ZM_LV_0, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @zm_msg2_mm(i32 %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = or i32 131072, %52
  store i32 %53, i32* %17, align 4
  store i32 13, i32* %18, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %82

56:                                               ; preds = %48
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %81

66:                                               ; preds = %56
  store i32 131072, i32* %17, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32*, i32** %5, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @ZM_STATE_AUTH, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @zfApAddSta(i32* %70, i32* %71, i32 %72, i32 %73, i32 0, i32 0, i32 0)
  store i32 %74, i32* %13, align 4
  %75 = icmp ne i32 %74, 65535
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 0, i32* %18, align 4
  br label %78

77:                                               ; preds = %69
  store i32 1, i32* %18, align 4
  br label %78

78:                                               ; preds = %77, %76
  br label %80

79:                                               ; preds = %66
  store i32 14, i32* %18, align 4
  br label %80

80:                                               ; preds = %79, %78
  br label %81

81:                                               ; preds = %80, %56
  br label %188

82:                                               ; preds = %48
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %187

85:                                               ; preds = %82
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %186

95:                                               ; preds = %85
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %124

98:                                               ; preds = %95
  store i32 131073, i32* %17, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = call i32 @zmw_enter_critical_section(i32* %99)
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  store i32 1, i32* %12, align 4
  br label %111

107:                                              ; preds = %98
  store i32 0, i32* %12, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %107, %106
  %112 = load i32*, i32** %5, align 8
  %113 = call i32 @zmw_leave_critical_section(i32* %112)
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 1, i32* %18, align 4
  br label %123

117:                                              ; preds = %111
  %118 = load i32*, i32** %5, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* @ZM_STATE_PREAUTH, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @zfApAddSta(i32* %118, i32* %119, i32 %120, i32 %121, i32 0, i32 0, i32 0)
  store i32 0, i32* %18, align 4
  br label %123

123:                                              ; preds = %117, %116
  br label %185

124:                                              ; preds = %95
  %125 = load i32, i32* %10, align 4
  %126 = icmp eq i32 %125, 3
  br i1 %126, label %127, label %183

127:                                              ; preds = %124
  store i32 262145, i32* %17, align 4
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %182

133:                                              ; preds = %127
  %134 = load i32*, i32** %5, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = call i32 @zmw_buf_readh(i32* %134, i32* %135, i32 34)
  %137 = icmp eq i32 %136, 32784
  br i1 %137, label %138, label %168

138:                                              ; preds = %133
  store i32 0, i32* %14, align 4
  br label %139

139:                                              ; preds = %160, %138
  %140 = load i32, i32* %14, align 4
  %141 = icmp slt i32 %140, 128
  br i1 %141, label %142, label %163

142:                                              ; preds = %139
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 2
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = load i32*, i32** %5, align 8
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %14, align 4
  %154 = add nsw i32 32, %153
  %155 = add nsw i32 %154, 4
  %156 = call i64 @zmw_buf_readb(i32* %151, i32* %152, i32 %155)
  %157 = icmp ne i64 %150, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %142
  br label %163

159:                                              ; preds = %142
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  br label %139

163:                                              ; preds = %158, %139
  %164 = load i32, i32* %14, align 4
  %165 = icmp eq i32 %164, 128
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 1, i32* %15, align 4
  br label %167

167:                                              ; preds = %166, %163
  br label %168

168:                                              ; preds = %167, %133
  %169 = load i32, i32* %15, align 4
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load i32*, i32** %5, align 8
  %173 = load i32*, i32** %7, align 8
  %174 = load i32, i32* @ZM_STATE_AUTH, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 @zfApAddSta(i32* %172, i32* %173, i32 %174, i32 %175, i32 0, i32 0, i32 0)
  store i32 0, i32* %18, align 4
  br label %178

177:                                              ; preds = %168
  store i32 15, i32* %18, align 4
  br label %178

178:                                              ; preds = %177, %171
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 1
  store i32 0, i32* %181, align 8
  br label %182

182:                                              ; preds = %178, %127
  br label %184

183:                                              ; preds = %124
  store i32 262145, i32* %17, align 4
  store i32 14, i32* %18, align 4
  br label %184

184:                                              ; preds = %183, %182
  br label %185

185:                                              ; preds = %184, %123
  br label %186

186:                                              ; preds = %185, %85
  br label %187

187:                                              ; preds = %186, %82
  br label %188

188:                                              ; preds = %187, %81
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* @ZM_WLAN_FRAME_TYPE_AUTH, align 4
  %191 = load i32*, i32** %7, align 8
  %192 = load i32, i32* %17, align 4
  %193 = load i32, i32* %18, align 4
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @zfSendMmFrame(i32* %189, i32 %190, i32* %191, i32 %192, i32 %193, i32 %194)
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zm_msg2_mm(i32, i8*, i32) #1

declare dso_local i32 @zfApAddSta(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zmw_buf_readh(i32*, i32*, i32) #1

declare dso_local i64 @zmw_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfSendMmFrame(i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

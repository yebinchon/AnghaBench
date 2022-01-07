; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211req.c_p80211req_mibset_mibget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/wlan-ng/extr_p80211req.c_p80211req_mibset_mibget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32 }

@HOSTWEP_DEFAULTKEY_MASK = common dso_local global i32 0, align 4
@HOSTWEP_PRIVACYINVOKED = common dso_local global i32 0, align 4
@P80211ENUM_truth_true = common dso_local global i32 0, align 4
@P80211ENUM_truth_false = common dso_local global i32 0, align 4
@HOSTWEP_EXCLUDEUNENCRYPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_12__*, i32)* @p80211req_mibset_mibget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p80211req_mibset_mibget(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %7, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %8, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32* %25, i32** %9, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %180 [
    i32 131, label %29
    i32 130, label %40
    i32 129, label %51
    i32 128, label %62
    i32 132, label %73
    i32 133, label %102
    i32 134, label %141
  ]

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %29
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @wep_change_key(%struct.TYPE_10__* %33, i32 0, i32* %34, i32 %37)
  br label %39

39:                                               ; preds = %32, %29
  br label %181

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %40
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @wep_change_key(%struct.TYPE_10__* %44, i32 1, i32* %45, i32 %48)
  br label %50

50:                                               ; preds = %43, %40
  br label %181

51:                                               ; preds = %3
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %51
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @wep_change_key(%struct.TYPE_10__* %55, i32 2, i32* %56, i32 %59)
  br label %61

61:                                               ; preds = %54, %51
  br label %181

62:                                               ; preds = %3
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %62
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @wep_change_key(%struct.TYPE_10__* %66, i32 3, i32* %67, i32 %70)
  br label %72

72:                                               ; preds = %65, %62
  br label %181

73:                                               ; preds = %3
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %10, align 8
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @HOSTWEP_DEFAULTKEY_MASK, align 4
  %84 = and i32 %82, %83
  %85 = load i32*, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  br label %101

86:                                               ; preds = %73
  %87 = load i32, i32* @HOSTWEP_DEFAULTKEY_MASK, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @HOSTWEP_DEFAULTKEY_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %86, %79
  br label %181

102:                                              ; preds = %3
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 1
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %11, align 8
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %102
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @HOSTWEP_PRIVACYINVOKED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i32, i32* @P80211ENUM_truth_true, align 4
  %117 = load i32*, i32** %11, align 8
  store i32 %116, i32* %117, align 4
  br label %121

118:                                              ; preds = %108
  %119 = load i32, i32* @P80211ENUM_truth_false, align 4
  %120 = load i32*, i32** %11, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %118, %115
  br label %140

122:                                              ; preds = %102
  %123 = load i32, i32* @HOSTWEP_PRIVACYINVOKED, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 4
  %129 = load i32*, i32** %11, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @P80211ENUM_truth_true, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %122
  %134 = load i32, i32* @HOSTWEP_PRIVACYINVOKED, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %122
  br label %140

140:                                              ; preds = %139, %121
  br label %181

141:                                              ; preds = %3
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  store i32* %144, i32** %12, align 8
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %141
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @HOSTWEP_EXCLUDEUNENCRYPTED, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i32, i32* @P80211ENUM_truth_true, align 4
  %156 = load i32*, i32** %12, align 8
  store i32 %155, i32* %156, align 4
  br label %160

157:                                              ; preds = %147
  %158 = load i32, i32* @P80211ENUM_truth_false, align 4
  %159 = load i32*, i32** %12, align 8
  store i32 %158, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %154
  br label %179

161:                                              ; preds = %141
  %162 = load i32, i32* @HOSTWEP_EXCLUDEUNENCRYPTED, align 4
  %163 = xor i32 %162, -1
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = and i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load i32*, i32** %12, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @P80211ENUM_truth_true, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %161
  %173 = load i32, i32* @HOSTWEP_EXCLUDEUNENCRYPTED, align 4
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %161
  br label %179

179:                                              ; preds = %178, %160
  br label %181

180:                                              ; preds = %3
  br label %181

181:                                              ; preds = %180, %179, %140, %101, %72, %61, %50, %39
  ret i32 0
}

declare dso_local i32 @wep_change_key(%struct.TYPE_10__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

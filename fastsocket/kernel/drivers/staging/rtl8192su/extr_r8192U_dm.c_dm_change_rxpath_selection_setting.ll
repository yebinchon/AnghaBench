; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_change_rxpath_selection_setting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/extr_r8192U_dm.c_dm_change_rxpath_selection_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i8*, i8*, i8*, i8*, i8* }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32 }
%struct.TYPE_3__ = type { i32, i8* }

@DM_RxPathSelTable = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CCK_Rx_Version_MAX = common dso_local global i32 0, align 4
@CCK_Rx_Version_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_change_rxpath_selection_setting(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r8192_priv*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %9)
  store %struct.r8192_priv* %10, %struct.r8192_priv** %7, align 8
  %11 = load %struct.r8192_priv*, %struct.r8192_priv** %7, align 8
  %12 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  store i8* %23, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @DM_RxPathSelTable, i32 0, i32 5), align 8
  br label %156

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 1, i32* %6, align 4
  br label %31

31:                                               ; preds = %30, %27
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @DM_RxPathSelTable, i32 0, i32 4), align 8
  br label %155

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %46

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %39, 40
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 40, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @DM_RxPathSelTable, i32 0, i32 3), align 8
  br label %154

46:                                               ; preds = %35
  %47 = load i32, i32* %5, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = icmp sgt i32 %50, 25
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 25, i32* %6, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  store i8* %56, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @DM_RxPathSelTable, i32 0, i32 2), align 8
  br label %153

57:                                               ; preds = %46
  %58 = load i32, i32* %5, align 4
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @CCK_Rx_Version_MAX, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @CCK_Rx_Version_1, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  store i8* %69, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @DM_RxPathSelTable, i32 0, i32 1), align 8
  br label %152

70:                                               ; preds = %57
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 10
  br i1 %72, label %73, label %83

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 100
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 50, i32* %6, align 4
  br label %77

77:                                               ; preds = %76, %73
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @DM_RxPathSelTable, i32 0, i32 0), align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  store i8* %80, i8** %82, align 8
  br label %151

83:                                               ; preds = %70
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 11
  br i1 %85, label %86, label %96

86:                                               ; preds = %83
  %87 = load i32, i32* %6, align 4
  %88 = icmp sgt i32 %87, 100
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 50, i32* %6, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = inttoptr i64 %92 to i8*
  %94 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @DM_RxPathSelTable, i32 0, i32 0), align 8
  %95 = getelementptr inbounds i8*, i8** %94, i64 1
  store i8* %93, i8** %95, align 8
  br label %150

96:                                               ; preds = %83
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 12
  br i1 %98, label %99, label %109

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  %101 = icmp sgt i32 %100, 100
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 50, i32* %6, align 4
  br label %103

103:                                              ; preds = %102, %99
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @DM_RxPathSelTable, i32 0, i32 0), align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 2
  store i8* %106, i8** %108, align 8
  br label %149

109:                                              ; preds = %96
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 13
  br i1 %111, label %112, label %122

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = icmp sgt i32 %113, 100
  br i1 %114, label %115, label %116

115:                                              ; preds = %112
  store i32 50, i32* %6, align 4
  br label %116

116:                                              ; preds = %115, %112
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @DM_RxPathSelTable, i32 0, i32 0), align 8
  %121 = getelementptr inbounds i8*, i8** %120, i64 3
  store i8* %119, i8** %121, align 8
  br label %148

122:                                              ; preds = %109
  %123 = load i32, i32* %5, align 4
  %124 = icmp eq i32 %123, 20
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load i32, i32* %6, align 4
  %127 = icmp sgt i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i32 1, i32* %6, align 4
  br label %129

129:                                              ; preds = %128, %125
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  store i8* %132, i8** %134, align 8
  br label %147

135:                                              ; preds = %122
  %136 = load i32, i32* %5, align 4
  %137 = icmp eq i32 %136, 21
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load i32, i32* %6, align 4
  %140 = icmp sgt i32 %139, 30
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  store i32 30, i32* %6, align 4
  br label %142

142:                                              ; preds = %141, %138
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %142, %135
  br label %147

147:                                              ; preds = %146, %129
  br label %148

148:                                              ; preds = %147, %116
  br label %149

149:                                              ; preds = %148, %103
  br label %150

150:                                              ; preds = %149, %90
  br label %151

151:                                              ; preds = %150, %77
  br label %152

152:                                              ; preds = %151, %66
  br label %153

153:                                              ; preds = %152, %53
  br label %154

154:                                              ; preds = %153, %42
  br label %155

155:                                              ; preds = %154, %31
  br label %156

156:                                              ; preds = %155, %20
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

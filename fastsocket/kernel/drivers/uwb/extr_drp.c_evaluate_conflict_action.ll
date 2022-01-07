; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp.c_evaluate_conflict_action.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/uwb/extr_drp.c_evaluate_conflict_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_ie_drp = type { i32 }
%struct.uwb_rsv = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@UWB_DRP_TYPE_PCA = common dso_local global i32 0, align 4
@UWB_DRP_CONFLICT_MANTAIN = common dso_local global i32 0, align 4
@UWB_DRP_TYPE_ALIEN_BP = common dso_local global i32 0, align 4
@UWB_DRP_CONFLICT_ACT1 = common dso_local global i32 0, align 4
@UWB_DRP_CONFLICT_ACT2 = common dso_local global i32 0, align 4
@UWB_DRP_CONFLICT_ACT3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_ie_drp*, i32, %struct.uwb_rsv*, i32)* @evaluate_conflict_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evaluate_conflict_action(%struct.uwb_ie_drp* %0, i32 %1, %struct.uwb_rsv* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uwb_ie_drp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uwb_rsv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.uwb_ie_drp* %0, %struct.uwb_ie_drp** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.uwb_rsv* %2, %struct.uwb_rsv** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %17 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %20 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.uwb_rsv*, %struct.uwb_rsv** %8, align 8
  %23 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %6, align 8
  %29 = call i32 @uwb_ie_drp_tiebreaker(%struct.uwb_ie_drp* %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %6, align 8
  %31 = call i32 @uwb_ie_drp_status(%struct.uwb_ie_drp* %30)
  store i32 %31, i32* %14, align 4
  %32 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %6, align 8
  %33 = call i32 @uwb_ie_drp_type(%struct.uwb_ie_drp* %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = load i32, i32* @UWB_DRP_TYPE_PCA, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @UWB_DRP_TYPE_PCA, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @UWB_DRP_CONFLICT_MANTAIN, align 4
  store i32 %42, i32* %5, align 4
  br label %134

43:                                               ; preds = %37, %4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @UWB_DRP_TYPE_ALIEN_BP, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @UWB_DRP_CONFLICT_MANTAIN, align 4
  store i32 %48, i32* %5, align 4
  br label %134

49:                                               ; preds = %43
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* @UWB_DRP_TYPE_ALIEN_BP, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @UWB_DRP_CONFLICT_ACT1, align 4
  store i32 %54, i32* %5, align 4
  br label %134

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %14, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* @UWB_DRP_CONFLICT_ACT2, align 4
  store i32 %62, i32* %5, align 4
  br label %134

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %14, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @UWB_DRP_CONFLICT_MANTAIN, align 4
  store i32 %70, i32* %5, align 4
  br label %134

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = load i32, i32* @UWB_DRP_CONFLICT_MANTAIN, align 4
  store i32 %80, i32* %5, align 4
  br label %134

81:                                               ; preds = %75, %71
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp sgt i32 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @UWB_DRP_CONFLICT_MANTAIN, align 4
  store i32 %90, i32* %5, align 4
  br label %134

91:                                               ; preds = %85, %81
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i32, i32* @UWB_DRP_CONFLICT_ACT2, align 4
  store i32 %103, i32* %5, align 4
  br label %134

104:                                              ; preds = %98
  br label %112

105:                                              ; preds = %94
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* @UWB_DRP_CONFLICT_ACT2, align 4
  store i32 %110, i32* %5, align 4
  br label %134

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %104
  br label %132

113:                                              ; preds = %91
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i32, i32* @UWB_DRP_CONFLICT_ACT3, align 4
  store i32 %122, i32* %5, align 4
  br label %134

123:                                              ; preds = %117
  br label %131

124:                                              ; preds = %113
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  %129 = load i32, i32* @UWB_DRP_CONFLICT_ACT3, align 4
  store i32 %129, i32* %5, align 4
  br label %134

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %123
  br label %132

132:                                              ; preds = %131, %112
  %133 = load i32, i32* @UWB_DRP_CONFLICT_MANTAIN, align 4
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %132, %128, %121, %109, %102, %89, %79, %69, %61, %53, %47, %41
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @uwb_ie_drp_tiebreaker(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_ie_drp_status(%struct.uwb_ie_drp*) #1

declare dso_local i32 @uwb_ie_drp_type(%struct.uwb_ie_drp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

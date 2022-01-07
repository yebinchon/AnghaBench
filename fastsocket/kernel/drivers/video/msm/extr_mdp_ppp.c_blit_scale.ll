; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_blit_scale.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/msm/extr_mdp_ppp.c_blit_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp_info = type { i32 }
%struct.mdp_blit_req = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mdp_regs = type { i32, i32, i32, i32, i32 }

@MDP_ROT_90 = common dso_local global i32 0, align 4
@MDP_BLUR = common dso_local global i32 0, align 4
@MDP_DOWNSCALE_PT8TO1 = common dso_local global i32 0, align 4
@MDP_DOWNSCALE_PT6TOPT8 = common dso_local global i32 0, align 4
@MDP_DOWNSCALE_PT4TOPT6 = common dso_local global i32 0, align 4
@MDP_DOWNSCALE_PT2TOPT4 = common dso_local global i32 0, align 4
@downscale_x_table = common dso_local global i32 0, align 4
@mdp_downscale_x_table = common dso_local global i32* null, align 8
@downscale_y_table = common dso_local global i32 0, align 4
@mdp_downscale_y_table = common dso_local global i32* null, align 8
@PPP_OP_SCALE_Y_ON = common dso_local global i32 0, align 4
@PPP_OP_SCALE_X_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp_info*, %struct.mdp_blit_req*, %struct.mdp_regs*)* @blit_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blit_scale(%struct.mdp_info* %0, %struct.mdp_blit_req* %1, %struct.mdp_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mdp_info*, align 8
  %6 = alloca %struct.mdp_blit_req*, align 8
  %7 = alloca %struct.mdp_regs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mdp_info* %0, %struct.mdp_info** %5, align 8
  store %struct.mdp_blit_req* %1, %struct.mdp_blit_req** %6, align 8
  store %struct.mdp_regs* %2, %struct.mdp_regs** %7, align 8
  %17 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %6, align 8
  %18 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MDP_ROT_90, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %6, align 8
  %25 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %15, align 4
  %28 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %6, align 8
  %29 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %16, align 4
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %6, align 8
  %34 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %6, align 8
  %38 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %16, align 4
  br label %41

41:                                               ; preds = %32, %23
  %42 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %6, align 8
  %43 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %41
  %49 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %6, align 8
  %50 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  %56 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %6, align 8
  %57 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MDP_BLUR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %71, label %62

62:                                               ; preds = %55
  %63 = load %struct.mdp_regs*, %struct.mdp_regs** %7, align 8
  %64 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load %struct.mdp_regs*, %struct.mdp_regs** %7, align 8
  %66 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load %struct.mdp_regs*, %struct.mdp_regs** %7, align 8
  %68 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %67, i32 0, i32 2
  store i32 0, i32* %68, align 4
  %69 = load %struct.mdp_regs*, %struct.mdp_regs** %7, align 8
  %70 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %69, i32 0, i32 3
  store i32 0, i32* %70, align 4
  store i32 0, i32* %4, align 4
  br label %186

71:                                               ; preds = %55, %48, %41
  %72 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %6, align 8
  %73 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i64 @scale_params(i32 %75, i32 %76, i32 1, i32* %8, i32* %10)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %71
  %80 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %6, align 8
  %81 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %16, align 4
  %85 = call i64 @scale_params(i32 %83, i32 %84, i32 1, i32* %9, i32* %11)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79, %71
  store i32 -1, i32* %4, align 4
  br label %186

88:                                               ; preds = %79
  %89 = load i32, i32* %15, align 4
  %90 = mul nsw i32 %89, 10
  %91 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %6, align 8
  %92 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = sdiv i32 %90, %94
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %16, align 4
  %97 = mul nsw i32 %96, 10
  %98 = load %struct.mdp_blit_req*, %struct.mdp_blit_req** %6, align 8
  %99 = getelementptr inbounds %struct.mdp_blit_req, %struct.mdp_blit_req* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %97, %101
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp sgt i32 %103, 8
  br i1 %104, label %105, label %107

105:                                              ; preds = %88
  %106 = load i32, i32* @MDP_DOWNSCALE_PT8TO1, align 4
  store i32 %106, i32* %14, align 4
  br label %121

107:                                              ; preds = %88
  %108 = load i32, i32* %12, align 4
  %109 = icmp sgt i32 %108, 6
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* @MDP_DOWNSCALE_PT6TOPT8, align 4
  store i32 %111, i32* %14, align 4
  br label %120

112:                                              ; preds = %107
  %113 = load i32, i32* %12, align 4
  %114 = icmp sgt i32 %113, 4
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = load i32, i32* @MDP_DOWNSCALE_PT4TOPT6, align 4
  store i32 %116, i32* %14, align 4
  br label %119

117:                                              ; preds = %112
  %118 = load i32, i32* @MDP_DOWNSCALE_PT2TOPT4, align 4
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %117, %115
  br label %120

120:                                              ; preds = %119, %110
  br label %121

121:                                              ; preds = %120, %105
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* @downscale_x_table, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %121
  %126 = load %struct.mdp_info*, %struct.mdp_info** %5, align 8
  %127 = load i32*, i32** @mdp_downscale_x_table, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @load_scale_table(%struct.mdp_info* %126, i32 %131, i32 64)
  %133 = load i32, i32* %14, align 4
  store i32 %133, i32* @downscale_x_table, align 4
  br label %134

134:                                              ; preds = %125, %121
  %135 = load i32, i32* %13, align 4
  %136 = icmp sgt i32 %135, 8
  br i1 %136, label %137, label %139

137:                                              ; preds = %134
  %138 = load i32, i32* @MDP_DOWNSCALE_PT8TO1, align 4
  store i32 %138, i32* %14, align 4
  br label %153

139:                                              ; preds = %134
  %140 = load i32, i32* %13, align 4
  %141 = icmp sgt i32 %140, 6
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* @MDP_DOWNSCALE_PT6TOPT8, align 4
  store i32 %143, i32* %14, align 4
  br label %152

144:                                              ; preds = %139
  %145 = load i32, i32* %13, align 4
  %146 = icmp sgt i32 %145, 4
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* @MDP_DOWNSCALE_PT4TOPT6, align 4
  store i32 %148, i32* %14, align 4
  br label %151

149:                                              ; preds = %144
  %150 = load i32, i32* @MDP_DOWNSCALE_PT2TOPT4, align 4
  store i32 %150, i32* %14, align 4
  br label %151

151:                                              ; preds = %149, %147
  br label %152

152:                                              ; preds = %151, %142
  br label %153

153:                                              ; preds = %152, %137
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* @downscale_y_table, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = load %struct.mdp_info*, %struct.mdp_info** %5, align 8
  %159 = load i32*, i32** @mdp_downscale_y_table, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @load_scale_table(%struct.mdp_info* %158, i32 %163, i32 64)
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* @downscale_y_table, align 4
  br label %166

166:                                              ; preds = %157, %153
  %167 = load i32, i32* %8, align 4
  %168 = load %struct.mdp_regs*, %struct.mdp_regs** %7, align 8
  %169 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %9, align 4
  %171 = load %struct.mdp_regs*, %struct.mdp_regs** %7, align 8
  %172 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load %struct.mdp_regs*, %struct.mdp_regs** %7, align 8
  %175 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %174, i32 0, i32 2
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* %11, align 4
  %177 = load %struct.mdp_regs*, %struct.mdp_regs** %7, align 8
  %178 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @PPP_OP_SCALE_Y_ON, align 4
  %180 = load i32, i32* @PPP_OP_SCALE_X_ON, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.mdp_regs*, %struct.mdp_regs** %7, align 8
  %183 = getelementptr inbounds %struct.mdp_regs, %struct.mdp_regs* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  store i32 0, i32* %4, align 4
  br label %186

186:                                              ; preds = %166, %87, %62
  %187 = load i32, i32* %4, align 4
  ret i32 %187
}

declare dso_local i64 @scale_params(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @load_scale_table(%struct.mdp_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

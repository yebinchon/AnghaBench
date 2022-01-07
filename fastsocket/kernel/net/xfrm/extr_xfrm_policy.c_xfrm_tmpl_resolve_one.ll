; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_tmpl_resolve_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_tmpl_resolve_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, %struct.xfrm_tmpl* }
%struct.xfrm_tmpl = type { i64, i16, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.flowi = type { i32 }
%struct.xfrm_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.net = type { i32 }

@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@XFRM_MODE_BEET = common dso_local global i64 0, align 8
@XFRM_STATE_VALID = common dso_local global i64 0, align 8
@XFRM_STATE_ERROR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, %struct.flowi*, %struct.xfrm_state**, i16)* @xfrm_tmpl_resolve_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfrm_tmpl_resolve_one(%struct.xfrm_policy* %0, %struct.flowi* %1, %struct.xfrm_state** %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfrm_policy*, align 8
  %7 = alloca %struct.flowi*, align 8
  %8 = alloca %struct.xfrm_state**, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.net*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.xfrm_state*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.xfrm_tmpl*, align 8
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %6, align 8
  store %struct.flowi* %1, %struct.flowi** %7, align 8
  store %struct.xfrm_state** %2, %struct.xfrm_state*** %8, align 8
  store i16 %3, i16* %9, align 2
  %21 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %22 = call %struct.net* @xp_net(%struct.xfrm_policy* %21)
  store %struct.net* %22, %struct.net** %10, align 8
  %23 = load %struct.flowi*, %struct.flowi** %7, align 8
  %24 = load i16, i16* %9, align 2
  %25 = call i32* @xfrm_flowi_daddr(%struct.flowi* %23, i16 zeroext %24)
  store i32* %25, i32** %14, align 8
  %26 = load %struct.flowi*, %struct.flowi** %7, align 8
  %27 = load i16, i16* %9, align 2
  %28 = call i32* @xfrm_flowi_saddr(%struct.flowi* %26, i16 zeroext %27)
  store i32* %28, i32** %15, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %140, %4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %32 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %143

35:                                               ; preds = %29
  %36 = load i32*, i32** %14, align 8
  store i32* %36, i32** %18, align 8
  %37 = load i32*, i32** %15, align 8
  store i32* %37, i32** %19, align 8
  %38 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %39 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %38, i32 0, i32 1
  %40 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %39, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %40, i64 %42
  store %struct.xfrm_tmpl* %43, %struct.xfrm_tmpl** %20, align 8
  %44 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %45 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %35
  %50 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %51 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @XFRM_MODE_BEET, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %78

55:                                               ; preds = %49, %35
  %56 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %57 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32* %58, i32** %18, align 8
  %59 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %60 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %59, i32 0, i32 3
  store i32* %60, i32** %19, align 8
  %61 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %62 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %61, i32 0, i32 1
  %63 = load i16, i16* %62, align 8
  store i16 %63, i16* %9, align 2
  %64 = load i32*, i32** %19, align 8
  %65 = load i16, i16* %9, align 2
  %66 = call i64 @xfrm_addr_any(i32* %64, i16 zeroext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %55
  %69 = load %struct.net*, %struct.net** %10, align 8
  %70 = load i32*, i32** %18, align 8
  %71 = load i16, i16* %9, align 2
  %72 = call i32 @xfrm_get_saddr(%struct.net* %69, i32* %16, i32* %70, i16 zeroext %71)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %145

76:                                               ; preds = %68
  store i32* %16, i32** %19, align 8
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77, %49
  %79 = load i32*, i32** %18, align 8
  %80 = load i32*, i32** %19, align 8
  %81 = load %struct.flowi*, %struct.flowi** %7, align 8
  %82 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %83 = load %struct.xfrm_policy*, %struct.xfrm_policy** %6, align 8
  %84 = load i16, i16* %9, align 2
  %85 = call %struct.xfrm_state* @xfrm_state_find(i32* %79, i32* %80, %struct.flowi* %81, %struct.xfrm_tmpl* %82, %struct.xfrm_policy* %83, i32* %13, i16 zeroext %84)
  store %struct.xfrm_state* %85, %struct.xfrm_state** %17, align 8
  %86 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %87 = icmp ne %struct.xfrm_state* %86, null
  br i1 %87, label %88, label %104

88:                                               ; preds = %78
  %89 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %90 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @XFRM_STATE_VALID, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %88
  %96 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %97 = load %struct.xfrm_state**, %struct.xfrm_state*** %8, align 8
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %97, i64 %100
  store %struct.xfrm_state* %96, %struct.xfrm_state** %101, align 8
  %102 = load i32*, i32** %18, align 8
  store i32* %102, i32** %14, align 8
  %103 = load i32*, i32** %19, align 8
  store i32* %103, i32** %15, align 8
  br label %140

104:                                              ; preds = %88, %78
  %105 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %106 = icmp ne %struct.xfrm_state* %105, null
  br i1 %106, label %107, label %124

107:                                              ; preds = %104
  %108 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %109 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @XFRM_STATE_ERROR, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  br label %120

117:                                              ; preds = %107
  %118 = load i32, i32* @EAGAIN, align 4
  %119 = sub nsw i32 0, %118
  br label %120

120:                                              ; preds = %117, %114
  %121 = phi i32 [ %116, %114 ], [ %119, %117 ]
  store i32 %121, i32* %13, align 4
  %122 = load %struct.xfrm_state*, %struct.xfrm_state** %17, align 8
  %123 = call i32 @xfrm_state_put(%struct.xfrm_state* %122)
  br label %133

124:                                              ; preds = %104
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @ESRCH, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* @EAGAIN, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %13, align 4
  br label %132

132:                                              ; preds = %129, %124
  br label %133

133:                                              ; preds = %132, %120
  %134 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %20, align 8
  %135 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  br label %145

139:                                              ; preds = %133
  br label %140

140:                                              ; preds = %139, %95
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %29

143:                                              ; preds = %29
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %5, align 4
  br label %163

145:                                              ; preds = %138, %75
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %11, align 4
  br label %148

148:                                              ; preds = %158, %145
  %149 = load i32, i32* %11, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load %struct.xfrm_state**, %struct.xfrm_state*** %8, align 8
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.xfrm_state*, %struct.xfrm_state** %152, i64 %154
  %156 = load %struct.xfrm_state*, %struct.xfrm_state** %155, align 8
  %157 = call i32 @xfrm_state_put(%struct.xfrm_state* %156)
  br label %158

158:                                              ; preds = %151
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, -1
  store i32 %160, i32* %11, align 4
  br label %148

161:                                              ; preds = %148
  %162 = load i32, i32* %13, align 4
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %161, %143
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i32* @xfrm_flowi_daddr(%struct.flowi*, i16 zeroext) #1

declare dso_local i32* @xfrm_flowi_saddr(%struct.flowi*, i16 zeroext) #1

declare dso_local i64 @xfrm_addr_any(i32*, i16 zeroext) #1

declare dso_local i32 @xfrm_get_saddr(%struct.net*, i32*, i32*, i16 zeroext) #1

declare dso_local %struct.xfrm_state* @xfrm_state_find(i32*, i32*, %struct.flowi*, %struct.xfrm_tmpl*, %struct.xfrm_policy*, i32*, i16 zeroext) #1

declare dso_local i32 @xfrm_state_put(%struct.xfrm_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

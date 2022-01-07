; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_policy_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/xfrm/extr_xfrm_policy.c_xfrm_policy_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@LONG_MAX = common dso_local global i64 0, align 8
@XFRM_KM_TIMEOUT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xfrm_policy_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfrm_policy_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xfrm_policy*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to %struct.xfrm_policy*
  store %struct.xfrm_policy* %13, %struct.xfrm_policy** %3, align 8
  %14 = call i64 (...) @get_seconds()
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* @LONG_MAX, align 8
  store i64 %15, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %17 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %16, i32 0, i32 0
  %18 = call i32 @read_lock(i32* %17)
  %19 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %20 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %186

26:                                               ; preds = %1
  %27 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %28 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @xfrm_policy_id2dir(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %32 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %26
  %37 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %38 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %42 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %40, %44
  %46 = load i64, i64* %4, align 8
  %47 = sub i64 %45, %46
  store i64 %47, i64* %8, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %192

51:                                               ; preds = %36
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* %8, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %55, %51
  br label %58

58:                                               ; preds = %57, %26
  %59 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %60 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %58
  %65 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %66 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %70 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %80

75:                                               ; preds = %64
  %76 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %77 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  br label %80

80:                                               ; preds = %75, %74
  %81 = phi i64 [ %72, %74 ], [ %79, %75 ]
  %82 = add i64 %68, %81
  %83 = load i64, i64* %4, align 8
  %84 = sub i64 %82, %83
  store i64 %84, i64* %9, align 8
  %85 = load i64, i64* %9, align 8
  %86 = icmp sle i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %80
  br label %192

88:                                               ; preds = %80
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %5, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i64, i64* %9, align 8
  store i64 %93, i64* %5, align 8
  br label %94

94:                                               ; preds = %92, %88
  br label %95

95:                                               ; preds = %94, %58
  %96 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %97 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %95
  %102 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %103 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %107 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %105, %109
  %111 = load i64, i64* %4, align 8
  %112 = sub i64 %110, %111
  store i64 %112, i64* %10, align 8
  %113 = load i64, i64* %10, align 8
  %114 = icmp sle i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %101
  store i32 1, i32* %6, align 4
  %116 = load i64, i64* @XFRM_KM_TIMEOUT, align 8
  store i64 %116, i64* %10, align 8
  br label %117

117:                                              ; preds = %115, %101
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %5, align 8
  %120 = icmp slt i64 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = load i64, i64* %10, align 8
  store i64 %122, i64* %5, align 8
  br label %123

123:                                              ; preds = %121, %117
  br label %124

124:                                              ; preds = %123, %95
  %125 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %126 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %162

130:                                              ; preds = %124
  %131 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %132 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %136 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %146

141:                                              ; preds = %130
  %142 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %143 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  br label %146

146:                                              ; preds = %141, %140
  %147 = phi i64 [ %138, %140 ], [ %145, %141 ]
  %148 = add i64 %134, %147
  %149 = load i64, i64* %4, align 8
  %150 = sub i64 %148, %149
  store i64 %150, i64* %11, align 8
  %151 = load i64, i64* %11, align 8
  %152 = icmp sle i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  store i32 1, i32* %6, align 4
  %154 = load i64, i64* @XFRM_KM_TIMEOUT, align 8
  store i64 %154, i64* %11, align 8
  br label %155

155:                                              ; preds = %153, %146
  %156 = load i64, i64* %11, align 8
  %157 = load i64, i64* %5, align 8
  %158 = icmp slt i64 %156, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i64, i64* %11, align 8
  store i64 %160, i64* %5, align 8
  br label %161

161:                                              ; preds = %159, %155
  br label %162

162:                                              ; preds = %161, %124
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %162
  %166 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @km_policy_expired(%struct.xfrm_policy* %166, i32 %167, i32 0, i32 0)
  br label %169

169:                                              ; preds = %165, %162
  %170 = load i64, i64* %5, align 8
  %171 = load i64, i64* @LONG_MAX, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %185

173:                                              ; preds = %169
  %174 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %175 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %174, i32 0, i32 1
  %176 = load i64, i64* @jiffies, align 8
  %177 = load i64, i64* %5, align 8
  %178 = call i64 @make_jiffies(i64 %177)
  %179 = add nsw i64 %176, %178
  %180 = call i32 @mod_timer(i32* %175, i64 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %173
  %183 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %184 = call i32 @xfrm_pol_hold(%struct.xfrm_policy* %183)
  br label %185

185:                                              ; preds = %182, %173, %169
  br label %186

186:                                              ; preds = %185, %25
  %187 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %188 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %187, i32 0, i32 0
  %189 = call i32 @read_unlock(i32* %188)
  %190 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %191 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %190)
  br label %207

192:                                              ; preds = %87, %50
  %193 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %194 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %193, i32 0, i32 0
  %195 = call i32 @read_unlock(i32* %194)
  %196 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @xfrm_policy_delete(%struct.xfrm_policy* %196, i32 %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %192
  %201 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @km_policy_expired(%struct.xfrm_policy* %201, i32 %202, i32 1, i32 0)
  br label %204

204:                                              ; preds = %200, %192
  %205 = load %struct.xfrm_policy*, %struct.xfrm_policy** %3, align 8
  %206 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %205)
  br label %207

207:                                              ; preds = %204, %186
  ret void
}

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xfrm_policy_id2dir(i32) #1

declare dso_local i32 @km_policy_expired(%struct.xfrm_policy*, i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @make_jiffies(i64) #1

declare dso_local i32 @xfrm_pol_hold(%struct.xfrm_policy*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

declare dso_local i32 @xfrm_policy_delete(%struct.xfrm_policy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

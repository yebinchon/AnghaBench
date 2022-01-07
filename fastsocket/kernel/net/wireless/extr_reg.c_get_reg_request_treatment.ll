; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_get_reg_request_treatment.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_get_reg_request_treatment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i32, i32, i32, i32 }

@REG_REQ_OK = common dso_local global i32 0, align 4
@REG_REQ_IGNORE = common dso_local global i32 0, align 4
@REG_REQ_ALREADY_SET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REG_REQ_INTERSECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.regulatory_request*)* @get_reg_request_treatment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_reg_request_treatment(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.regulatory_request*, align 8
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.regulatory_request*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %5, align 8
  store %struct.wiphy* null, %struct.wiphy** %6, align 8
  %8 = call %struct.regulatory_request* (...) @get_last_request()
  store %struct.regulatory_request* %8, %struct.regulatory_request** %7, align 8
  %9 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %10 = icmp ne %struct.regulatory_request* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @REG_REQ_OK, align 4
  store i32 %12, i32* %3, align 4
  br label %178

13:                                               ; preds = %2
  %14 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %15 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %176 [
    i32 131, label %17
    i32 130, label %19
    i32 129, label %81
    i32 128, label %111
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* @REG_REQ_OK, align 4
  store i32 %18, i32* %3, align 4
  br label %178

19:                                               ; preds = %13
  %20 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %21 = call i32 @reg_request_cell_base(%struct.regulatory_request* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %25 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @regdom_changes(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %30, i32* %3, align 4
  br label %178

31:                                               ; preds = %23
  %32 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  store i32 %32, i32* %3, align 4
  br label %178

33:                                               ; preds = %19
  %34 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %35 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.wiphy* @wiphy_idx_to_wiphy(i32 %36)
  store %struct.wiphy* %37, %struct.wiphy** %6, align 8
  %38 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %39 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @is_an_alpha2(i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @unlikely(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %33
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %178

50:                                               ; preds = %33
  %51 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %52 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 130
  br i1 %54, label %55, label %80

55:                                               ; preds = %50
  %56 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %57 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %58 = icmp ne %struct.wiphy* %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %61 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @regdom_changes(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %66, i32* %3, align 4
  br label %178

67:                                               ; preds = %59
  %68 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  store i32 %68, i32* %3, align 4
  br label %178

69:                                               ; preds = %55
  %70 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %71 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @regdom_changes(i32 %72)
  %74 = call i32 @WARN_ON(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @REG_REQ_OK, align 4
  store i32 %77, i32* %3, align 4
  br label %178

78:                                               ; preds = %69
  %79 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  store i32 %79, i32* %3, align 4
  br label %178

80:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %178

81:                                               ; preds = %13
  %82 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %83 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 131
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %88 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @regdom_changes(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %86
  %93 = load i32, i32* @REG_REQ_OK, align 4
  store i32 %93, i32* %3, align 4
  br label %178

94:                                               ; preds = %86
  %95 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  store i32 %95, i32* %3, align 4
  br label %178

96:                                               ; preds = %81
  %97 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %98 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 129
  br i1 %100, label %101, label %109

101:                                              ; preds = %96
  %102 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %103 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @regdom_changes(i32 %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  store i32 %108, i32* %3, align 4
  br label %178

109:                                              ; preds = %101, %96
  %110 = load i32, i32* @REG_REQ_INTERSECT, align 4
  store i32 %110, i32* %3, align 4
  br label %178

111:                                              ; preds = %13
  %112 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %113 = call i32 @reg_request_cell_base(%struct.regulatory_request* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %117 = call i32 @reg_ignore_cell_hint(%struct.regulatory_request* %116)
  store i32 %117, i32* %3, align 4
  br label %178

118:                                              ; preds = %111
  %119 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %120 = call i32 @reg_request_cell_base(%struct.regulatory_request* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %123, i32* %3, align 4
  br label %178

124:                                              ; preds = %118
  %125 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %126 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 130
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = load i32, i32* @REG_REQ_INTERSECT, align 4
  store i32 %130, i32* %3, align 4
  br label %178

131:                                              ; preds = %124
  %132 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %133 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 128
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %138 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %136
  %142 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %142, i32* %3, align 4
  br label %178

143:                                              ; preds = %136, %131
  %144 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %145 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 131
  br i1 %147, label %158, label %148

148:                                              ; preds = %143
  %149 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %150 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 129
  br i1 %152, label %158, label %153

153:                                              ; preds = %148
  %154 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %155 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp eq i32 %156, 128
  br i1 %157, label %158, label %166

158:                                              ; preds = %153, %148, %143
  %159 = load %struct.regulatory_request*, %struct.regulatory_request** %7, align 8
  %160 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @regdom_changes(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %158
  %165 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %165, i32* %3, align 4
  br label %178

166:                                              ; preds = %158, %153
  %167 = load %struct.regulatory_request*, %struct.regulatory_request** %5, align 8
  %168 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @regdom_changes(i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %166
  %173 = load i32, i32* @REG_REQ_ALREADY_SET, align 4
  store i32 %173, i32* %3, align 4
  br label %178

174:                                              ; preds = %166
  %175 = load i32, i32* @REG_REQ_OK, align 4
  store i32 %175, i32* %3, align 4
  br label %178

176:                                              ; preds = %13
  %177 = load i32, i32* @REG_REQ_IGNORE, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %176, %174, %172, %164, %141, %129, %122, %115, %109, %107, %94, %92, %80, %78, %76, %67, %65, %47, %31, %29, %17, %11
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local %struct.regulatory_request* @get_last_request(...) #1

declare dso_local i32 @reg_request_cell_base(%struct.regulatory_request*) #1

declare dso_local i32 @regdom_changes(i32) #1

declare dso_local %struct.wiphy* @wiphy_idx_to_wiphy(i32) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @is_an_alpha2(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @reg_ignore_cell_hint(%struct.regulatory_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

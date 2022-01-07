; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_get_event_modifier.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_parse-events.c_get_event_modifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_modifier = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.perf_evsel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_modifier*, i8*, %struct.perf_evsel*)* @get_event_modifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_event_modifier(%struct.event_modifier* %0, i8* %1, %struct.perf_evsel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_modifier*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.perf_evsel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.event_modifier* %0, %struct.event_modifier** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.perf_evsel* %2, %struct.perf_evsel** %7, align 8
  %16 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %17 = icmp ne %struct.perf_evsel* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %20 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  br label %24

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi i32 [ %22, %18 ], [ 0, %23 ]
  store i32 %25, i32* %8, align 4
  %26 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %27 = icmp ne %struct.perf_evsel* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %30 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  br label %34

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %28
  %35 = phi i32 [ %32, %28 ], [ 0, %33 ]
  store i32 %35, i32* %9, align 4
  %36 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %37 = icmp ne %struct.perf_evsel* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %40 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  br label %44

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i32 [ %42, %38 ], [ 0, %43 ]
  store i32 %45, i32* %10, align 4
  %46 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %47 = icmp ne %struct.perf_evsel* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %50 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  br label %54

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi i32 [ %52, %48 ], [ 0, %53 ]
  store i32 %55, i32* %11, align 4
  %56 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %57 = icmp ne %struct.perf_evsel* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %60 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  br label %64

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %58
  %65 = phi i32 [ %62, %58 ], [ 0, %63 ]
  store i32 %65, i32* %12, align 4
  %66 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %67 = icmp ne %struct.perf_evsel* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %70 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  br label %74

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %68
  %75 = phi i32 [ %72, %68 ], [ 0, %73 ]
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %14, align 4
  %81 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %82 = icmp ne %struct.perf_evsel* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %85 = getelementptr inbounds %struct.perf_evsel, %struct.perf_evsel* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  br label %88

87:                                               ; preds = %74
  br label %88

88:                                               ; preds = %87, %83
  %89 = phi i32 [ %86, %83 ], [ 0, %87 ]
  store i32 %89, i32* %15, align 4
  %90 = load %struct.perf_evsel*, %struct.perf_evsel** %7, align 8
  %91 = icmp ne %struct.perf_evsel* %90, null
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* %15, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %96

96:                                               ; preds = %95, %92, %88
  %97 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %98 = call i32 @memset(%struct.event_modifier* %97, i32 0, i32 28)
  br label %99

99:                                               ; preds = %171, %96
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %103, label %174

103:                                              ; preds = %99
  %104 = load i8*, i8** %6, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 117
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load i32, i32* %14, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %14, align 4
  br label %112

112:                                              ; preds = %111, %108
  store i32 0, i32* %8, align 4
  br label %171

113:                                              ; preds = %103
  %114 = load i8*, i8** %6, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 107
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %118
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %14, align 4
  br label %122

122:                                              ; preds = %121, %118
  store i32 0, i32* %9, align 4
  br label %170

123:                                              ; preds = %113
  %124 = load i8*, i8** %6, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 104
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  store i32 1, i32* %10, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %14, align 4
  br label %132

132:                                              ; preds = %131, %128
  store i32 0, i32* %10, align 4
  br label %169

133:                                              ; preds = %123
  %134 = load i8*, i8** %6, align 8
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 71
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load i32, i32* %15, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %138
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %15, align 4
  br label %142

142:                                              ; preds = %141, %138
  store i32 0, i32* %12, align 4
  br label %168

143:                                              ; preds = %133
  %144 = load i8*, i8** %6, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 72
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i32, i32* %15, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32 1, i32* %15, align 4
  br label %152

152:                                              ; preds = %151, %148
  store i32 0, i32* %11, align 4
  br label %167

153:                                              ; preds = %143
  %154 = load i8*, i8** %6, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 112
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load i32, i32* %13, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %13, align 4
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %158
  store i32 1, i32* %12, align 4
  br label %164

164:                                              ; preds = %163, %158
  br label %166

165:                                              ; preds = %153
  br label %174

166:                                              ; preds = %164
  br label %167

167:                                              ; preds = %166, %152
  br label %168

168:                                              ; preds = %167, %142
  br label %169

169:                                              ; preds = %168, %132
  br label %170

170:                                              ; preds = %169, %122
  br label %171

171:                                              ; preds = %170, %112
  %172 = load i8*, i8** %6, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %6, align 8
  br label %99

174:                                              ; preds = %165, %99
  %175 = load i32, i32* %13, align 4
  %176 = icmp sgt i32 %175, 3
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %202

180:                                              ; preds = %174
  %181 = load i32, i32* %8, align 4
  %182 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %183 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* %9, align 4
  %185 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %186 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* %10, align 4
  %188 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %189 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* %11, align 4
  %191 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %192 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %191, i32 0, i32 3
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* %12, align 4
  %194 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %195 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %194, i32 0, i32 4
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* %13, align 4
  %197 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %198 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %197, i32 0, i32 5
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %15, align 4
  %200 = load %struct.event_modifier*, %struct.event_modifier** %5, align 8
  %201 = getelementptr inbounds %struct.event_modifier, %struct.event_modifier* %200, i32 0, i32 6
  store i32 %199, i32* %201, align 4
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %180, %177
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @memset(%struct.event_modifier*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

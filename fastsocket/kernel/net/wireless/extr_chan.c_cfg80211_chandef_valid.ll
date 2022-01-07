; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_chandef_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_chan.c_cfg80211_chandef_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfg80211_chandef_valid(%struct.cfg80211_chan_def* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfg80211_chan_def*, align 8
  %4 = alloca i32, align 4
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %3, align 8
  %5 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %6 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %5, i32 0, i32 3
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %212

10:                                               ; preds = %1
  %11 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %12 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %17 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %210 [
    i32 132, label %19
    i32 131, label %19
    i32 130, label %33
    i32 128, label %55
    i32 129, label %110
    i32 133, label %146
  ]

19:                                               ; preds = %10, %10
  %20 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %21 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %212

26:                                               ; preds = %19
  %27 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %28 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %212

32:                                               ; preds = %26
  br label %211

33:                                               ; preds = %10
  %34 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %35 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 10
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %42 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = sub nsw i32 %44, 10
  %46 = icmp ne i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %212

48:                                               ; preds = %40, %33
  %49 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %50 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %212

54:                                               ; preds = %48
  br label %211

55:                                               ; preds = %10
  %56 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %57 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 30
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %55
  %63 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %64 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 10
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %62
  %70 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %71 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = sub nsw i32 %73, 10
  %75 = icmp ne i32 %72, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %78 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = sub nsw i32 %80, 30
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %212

84:                                               ; preds = %76, %69, %62, %55
  %85 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %86 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %212

90:                                               ; preds = %84
  %91 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %92 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %95 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %93, %96
  %98 = icmp eq i32 %97, 80
  br i1 %98, label %108, label %99

99:                                               ; preds = %90
  %100 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %101 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %104 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %102, %105
  %107 = icmp eq i32 %106, 80
  br i1 %107, label %108, label %109

108:                                              ; preds = %99, %90
  store i32 0, i32* %2, align 4
  br label %212

109:                                              ; preds = %99
  br label %211

110:                                              ; preds = %10
  %111 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %112 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 30
  %116 = icmp ne i32 %113, %115
  br i1 %116, label %117, label %139

117:                                              ; preds = %110
  %118 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %119 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 10
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %117
  %125 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %126 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %4, align 4
  %129 = sub nsw i32 %128, 10
  %130 = icmp ne i32 %127, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %124
  %132 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %133 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %4, align 4
  %136 = sub nsw i32 %135, 30
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  store i32 0, i32* %2, align 4
  br label %212

139:                                              ; preds = %131, %124, %117, %110
  %140 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %141 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %212

145:                                              ; preds = %139
  br label %211

146:                                              ; preds = %10
  %147 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %148 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, 70
  %152 = icmp ne i32 %149, %151
  br i1 %152, label %153, label %203

153:                                              ; preds = %146
  %154 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %155 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %4, align 4
  %158 = add nsw i32 %157, 50
  %159 = icmp ne i32 %156, %158
  br i1 %159, label %160, label %203

160:                                              ; preds = %153
  %161 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %162 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 30
  %166 = icmp ne i32 %163, %165
  br i1 %166, label %167, label %203

167:                                              ; preds = %160
  %168 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %169 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %4, align 4
  %172 = add nsw i32 %171, 10
  %173 = icmp ne i32 %170, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %167
  %175 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %176 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* %4, align 4
  %179 = sub nsw i32 %178, 10
  %180 = icmp ne i32 %177, %179
  br i1 %180, label %181, label %203

181:                                              ; preds = %174
  %182 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %183 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* %4, align 4
  %186 = sub nsw i32 %185, 30
  %187 = icmp ne i32 %184, %186
  br i1 %187, label %188, label %203

188:                                              ; preds = %181
  %189 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %190 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %4, align 4
  %193 = sub nsw i32 %192, 50
  %194 = icmp ne i32 %191, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %188
  %196 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %197 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %4, align 4
  %200 = sub nsw i32 %199, 70
  %201 = icmp ne i32 %198, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %195
  store i32 0, i32* %2, align 4
  br label %212

203:                                              ; preds = %195, %188, %181, %174, %167, %160, %153, %146
  %204 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %205 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 0, i32* %2, align 4
  br label %212

209:                                              ; preds = %203
  br label %211

210:                                              ; preds = %10
  store i32 0, i32* %2, align 4
  br label %212

211:                                              ; preds = %209, %145, %109, %54, %32
  store i32 1, i32* %2, align 4
  br label %212

212:                                              ; preds = %211, %210, %208, %202, %144, %138, %108, %89, %83, %53, %47, %31, %25, %9
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

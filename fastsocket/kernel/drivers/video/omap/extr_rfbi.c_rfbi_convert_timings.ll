; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_rfbi.c_rfbi_convert_timings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/omap/extr_rfbi.c_rfbi_convert_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extif_timings = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extif_timings*)* @rfbi_convert_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rfbi_convert_timings(%struct.extif_timings* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.extif_timings*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.extif_timings* %0, %struct.extif_timings** %3, align 8
  %16 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %17 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %15, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %1
  store i32 -1, i32* %2, align 4
  br label %218

25:                                               ; preds = %21
  %26 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %27 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @ps_to_rfbi_ticks(i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %32 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @ps_to_rfbi_ticks(i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp sle i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %39, %25
  %43 = load i32, i32* %7, align 4
  %44 = icmp sgt i32 %43, 15
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 -1, i32* %2, align 4
  br label %218

46:                                               ; preds = %42
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %47, 63
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  store i32 -1, i32* %2, align 4
  br label %218

50:                                               ; preds = %46
  %51 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %52 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %51, i32 0, i32 10
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @ps_to_rfbi_ticks(i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %57 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @ps_to_rfbi_ticks(i32 %58, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %50
  %68 = load i32, i32* %5, align 4
  %69 = icmp sgt i32 %68, 15
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 -1, i32* %2, align 4
  br label %218

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = icmp sgt i32 %72, 63
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 -1, i32* %2, align 4
  br label %218

75:                                               ; preds = %71
  %76 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %77 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @ps_to_rfbi_ticks(i32 %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %82 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %15, align 4
  %85 = call i32 @ps_to_rfbi_ticks(i32 %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %75
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %89, %75
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @max(i32 %94, i32 %95)
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @max(i32 %99, i32 %100)
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %98, %92
  %103 = load i32, i32* %9, align 4
  %104 = icmp sgt i32 %103, 15
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 -1, i32* %2, align 4
  br label %218

106:                                              ; preds = %102
  %107 = load i32, i32* %10, align 4
  %108 = icmp sgt i32 %107, 63
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  store i32 -1, i32* %2, align 4
  br label %218

110:                                              ; preds = %106
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %10, align 4
  %113 = shl i32 %112, 4
  %114 = load i32, i32* %4, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* %7, align 4
  %117 = shl i32 %116, 10
  %118 = load i32, i32* %4, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %4, align 4
  %120 = load i32, i32* %8, align 4
  %121 = shl i32 %120, 14
  %122 = load i32, i32* %4, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %5, align 4
  %125 = shl i32 %124, 20
  %126 = load i32, i32* %4, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %6, align 4
  %129 = shl i32 %128, 24
  %130 = load i32, i32* %4, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %134 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %132, i32* %136, align 4
  %137 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %138 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %15, align 4
  %141 = call i32 @ps_to_rfbi_ticks(i32 %139, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp sle i32 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %110
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  br label %148

148:                                              ; preds = %145, %110
  %149 = load i32, i32* %12, align 4
  %150 = icmp sgt i32 %149, 63
  br i1 %150, label %151, label %152

151:                                              ; preds = %148
  store i32 -1, i32* %2, align 4
  br label %218

152:                                              ; preds = %148
  %153 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %154 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %153, i32 0, i32 5
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %15, align 4
  %157 = call i32 @ps_to_rfbi_ticks(i32 %155, i32 %156)
  store i32 %157, i32* %14, align 4
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %163

161:                                              ; preds = %152
  %162 = load i32, i32* %8, align 4
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %161, %152
  %164 = load i32, i32* %14, align 4
  %165 = icmp sgt i32 %164, 63
  br i1 %165, label %166, label %167

166:                                              ; preds = %163
  store i32 -1, i32* %2, align 4
  br label %218

167:                                              ; preds = %163
  %168 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %169 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %15, align 4
  %172 = call i32 @ps_to_rfbi_ticks(i32 %170, i32 %171)
  store i32 %172, i32* %13, align 4
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i32, i32* %6, align 4
  store i32 %177, i32* %13, align 4
  br label %178

178:                                              ; preds = %176, %167
  %179 = load i32, i32* %13, align 4
  %180 = icmp sgt i32 %179, 63
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  store i32 -1, i32* %2, align 4
  br label %218

182:                                              ; preds = %178
  %183 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %184 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %15, align 4
  %187 = call i32 @ps_to_rfbi_ticks(i32 %185, i32 %186)
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp sgt i32 %188, 63
  br i1 %189, label %190, label %191

190:                                              ; preds = %182
  store i32 -1, i32* %2, align 4
  br label %218

191:                                              ; preds = %182
  %192 = load i32, i32* %14, align 4
  store i32 %192, i32* %4, align 4
  %193 = load i32, i32* %13, align 4
  %194 = shl i32 %193, 6
  %195 = load i32, i32* %4, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %4, align 4
  %197 = load i32, i32* %11, align 4
  %198 = shl i32 %197, 12
  %199 = load i32, i32* %4, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %4, align 4
  %201 = load i32, i32* %12, align 4
  %202 = shl i32 %201, 22
  %203 = load i32, i32* %4, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %4, align 4
  %205 = load i32, i32* %4, align 4
  %206 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %207 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  store i32 %205, i32* %209, align 4
  %210 = load i32, i32* %15, align 4
  %211 = sub nsw i32 %210, 1
  %212 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %213 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 2
  store i32 %211, i32* %215, align 4
  %216 = load %struct.extif_timings*, %struct.extif_timings** %3, align 8
  %217 = getelementptr inbounds %struct.extif_timings, %struct.extif_timings* %216, i32 0, i32 2
  store i32 1, i32* %217, align 8
  store i32 0, i32* %2, align 4
  br label %218

218:                                              ; preds = %191, %190, %181, %166, %151, %109, %105, %74, %70, %49, %45, %24
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i32 @ps_to_rfbi_ticks(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

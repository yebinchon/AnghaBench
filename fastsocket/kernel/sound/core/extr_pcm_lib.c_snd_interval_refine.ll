; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_interval_refine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/core/extr_pcm_lib.c_snd_interval_refine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_interval = type { i64, i32, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_interval_refine(%struct.snd_interval* %0, %struct.snd_interval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_interval*, align 8
  %5 = alloca %struct.snd_interval*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_interval* %0, %struct.snd_interval** %4, align 8
  store %struct.snd_interval* %1, %struct.snd_interval** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %8 = call i32 @snd_interval_empty(%struct.snd_interval* %7)
  %9 = call i64 @snd_BUG_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %172

14:                                               ; preds = %2
  %15 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %16 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %19 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %17, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %14
  %23 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %24 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %27 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %29 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %32 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  store i32 1, i32* %6, align 4
  br label %55

33:                                               ; preds = %14
  %34 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %35 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %38 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %33
  %42 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %43 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %41
  %47 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %48 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %53 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  store i32 1, i32* %6, align 4
  br label %54

54:                                               ; preds = %51, %46, %41, %33
  br label %55

55:                                               ; preds = %54, %22
  %56 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %57 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %60 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %65 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %68 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  %69 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %70 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %73 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 8
  store i32 1, i32* %6, align 4
  br label %96

74:                                               ; preds = %55
  %75 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %76 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %79 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %74
  %83 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %84 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %89 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %94 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %93, i32 0, i32 3
  store i32 1, i32* %94, align 8
  store i32 1, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %87, %82, %74
  br label %96

96:                                               ; preds = %95, %63
  %97 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %98 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %96
  %102 = load %struct.snd_interval*, %struct.snd_interval** %5, align 8
  %103 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %108 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %107, i32 0, i32 4
  store i32 1, i32* %108, align 4
  store i32 1, i32* %6, align 4
  br label %109

109:                                              ; preds = %106, %101, %96
  %110 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %111 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %139

114:                                              ; preds = %109
  %115 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %116 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %121 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %121, align 8
  %124 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %125 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %124, i32 0, i32 1
  store i32 0, i32* %125, align 8
  br label %126

126:                                              ; preds = %119, %114
  %127 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %128 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %133 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, -1
  store i64 %135, i64* %133, align 8
  %136 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %137 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %136, i32 0, i32 3
  store i32 0, i32* %137, align 8
  br label %138

138:                                              ; preds = %131, %126
  br label %161

139:                                              ; preds = %109
  %140 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %141 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %160, label %144

144:                                              ; preds = %139
  %145 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %146 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %144
  %150 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %151 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %154 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = icmp eq i64 %152, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %149
  %158 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %159 = getelementptr inbounds %struct.snd_interval, %struct.snd_interval* %158, i32 0, i32 4
  store i32 1, i32* %159, align 4
  br label %160

160:                                              ; preds = %157, %149, %144, %139
  br label %161

161:                                              ; preds = %160, %138
  %162 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %163 = call i64 @snd_interval_checkempty(%struct.snd_interval* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %161
  %166 = load %struct.snd_interval*, %struct.snd_interval** %4, align 8
  %167 = call i32 @snd_interval_none(%struct.snd_interval* %166)
  %168 = load i32, i32* @EINVAL, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %172

170:                                              ; preds = %161
  %171 = load i32, i32* %6, align 4
  store i32 %171, i32* %3, align 4
  br label %172

172:                                              ; preds = %170, %165, %11
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_interval_empty(%struct.snd_interval*) #1

declare dso_local i64 @snd_interval_checkempty(%struct.snd_interval*) #1

declare dso_local i32 @snd_interval_none(%struct.snd_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

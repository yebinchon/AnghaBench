; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-dapm.c_dapm_set_path_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/extr_soc-dapm.c_dapm_set_path_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_widget = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.snd_soc_dapm_path = type { i32, i32 }
%struct.soc_mixer_control = type { i32, i32, i32, i32 }
%struct.soc_enum = type { i32, i32, i32, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_path*, i32)* @dapm_set_path_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dapm_set_path_status(%struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_path* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_widget*, align 8
  %5 = alloca %struct.snd_soc_dapm_path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.soc_mixer_control*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.soc_enum*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.soc_enum*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.snd_soc_dapm_widget* %0, %struct.snd_soc_dapm_widget** %4, align 8
  store %struct.snd_soc_dapm_path* %1, %struct.snd_soc_dapm_path** %5, align 8
  store i32 %2, i32* %6, align 4
  %21 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %22 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %234 [
    i32 130, label %24
    i32 139, label %24
    i32 138, label %24
    i32 137, label %78
    i32 129, label %147
    i32 135, label %228
    i32 136, label %228
    i32 148, label %228
    i32 143, label %228
    i32 145, label %228
    i32 140, label %228
    i32 128, label %228
    i32 131, label %228
    i32 147, label %228
    i32 146, label %228
    i32 144, label %231
    i32 141, label %231
    i32 132, label %231
    i32 142, label %231
    i32 133, label %231
    i32 134, label %231
  ]

24:                                               ; preds = %3, %3, %3
  %25 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %26 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.soc_mixer_control*
  store %struct.soc_mixer_control* %33, %struct.soc_mixer_control** %8, align 8
  %34 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %35 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %38 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  %40 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %41 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @fls(i32 %43)
  %45 = shl i32 1, %44
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %12, align 4
  %47 = load %struct.soc_mixer_control*, %struct.soc_mixer_control** %8, align 8
  %48 = getelementptr inbounds %struct.soc_mixer_control, %struct.soc_mixer_control* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @snd_soc_read(i32 %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %10, align 4
  %57 = ashr i32 %55, %56
  %58 = load i32, i32* %12, align 4
  %59 = and i32 %57, %58
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %24
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %62, %24
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68, %62
  %72 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %5, align 8
  %73 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  br label %77

74:                                               ; preds = %68, %65
  %75 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %5, align 8
  %76 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %75, i32 0, i32 0
  store i32 0, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %71
  br label %234

78:                                               ; preds = %3
  %79 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %80 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to %struct.soc_enum*
  store %struct.soc_enum* %87, %struct.soc_enum** %14, align 8
  store i32 1, i32* %17, align 4
  br label %88

88:                                               ; preds = %95, %78
  %89 = load i32, i32* %17, align 4
  %90 = load %struct.soc_enum*, %struct.soc_enum** %14, align 8
  %91 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %17, align 4
  %97 = shl i32 %96, 1
  store i32 %97, i32* %17, align 4
  br label %88

98:                                               ; preds = %88
  %99 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %100 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.soc_enum*, %struct.soc_enum** %14, align 8
  %103 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @snd_soc_read(i32 %101, i32 %104)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.soc_enum*, %struct.soc_enum** %14, align 8
  %108 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = ashr i32 %106, %109
  %111 = load i32, i32* %17, align 4
  %112 = sub nsw i32 %111, 1
  %113 = and i32 %110, %112
  store i32 %113, i32* %16, align 4
  %114 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %5, align 8
  %115 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %114, i32 0, i32 0
  store i32 0, i32* %115, align 4
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %143, %98
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.soc_enum*, %struct.soc_enum** %14, align 8
  %119 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %117, %120
  br i1 %121, label %122, label %146

122:                                              ; preds = %116
  %123 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %5, align 8
  %124 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.soc_enum*, %struct.soc_enum** %14, align 8
  %127 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %126, i32 0, i32 5
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @strcmp(i32 %125, i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %142, label %135

135:                                              ; preds = %122
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %5, align 8
  %141 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %140, i32 0, i32 0
  store i32 1, i32* %141, align 4
  br label %142

142:                                              ; preds = %139, %135, %122
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %116

146:                                              ; preds = %116
  br label %234

147:                                              ; preds = %3
  %148 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %149 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %148, i32 0, i32 2
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to %struct.soc_enum*
  store %struct.soc_enum* %156, %struct.soc_enum** %18, align 8
  %157 = load %struct.snd_soc_dapm_widget*, %struct.snd_soc_dapm_widget** %4, align 8
  %158 = getelementptr inbounds %struct.snd_soc_dapm_widget, %struct.snd_soc_dapm_widget* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.soc_enum*, %struct.soc_enum** %18, align 8
  %161 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @snd_soc_read(i32 %159, i32 %162)
  store i32 %163, i32* %19, align 4
  %164 = load i32, i32* %19, align 4
  %165 = load %struct.soc_enum*, %struct.soc_enum** %18, align 8
  %166 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = ashr i32 %164, %167
  %169 = load %struct.soc_enum*, %struct.soc_enum** %18, align 8
  %170 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = and i32 %168, %171
  store i32 %172, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %173

173:                                              ; preds = %191, %147
  %174 = load i32, i32* %20, align 4
  %175 = load %struct.soc_enum*, %struct.soc_enum** %18, align 8
  %176 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %173
  %180 = load i32, i32* %19, align 4
  %181 = load %struct.soc_enum*, %struct.soc_enum** %18, align 8
  %182 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %20, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %180, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %179
  br label %194

190:                                              ; preds = %179
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %20, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %20, align 4
  br label %173

194:                                              ; preds = %189, %173
  %195 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %5, align 8
  %196 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %195, i32 0, i32 0
  store i32 0, i32* %196, align 4
  store i32 0, i32* %6, align 4
  br label %197

197:                                              ; preds = %224, %194
  %198 = load i32, i32* %6, align 4
  %199 = load %struct.soc_enum*, %struct.soc_enum** %18, align 8
  %200 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = icmp slt i32 %198, %201
  br i1 %202, label %203, label %227

203:                                              ; preds = %197
  %204 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %5, align 8
  %205 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.soc_enum*, %struct.soc_enum** %18, align 8
  %208 = getelementptr inbounds %struct.soc_enum, %struct.soc_enum* %207, i32 0, i32 5
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %6, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @strcmp(i32 %206, i32 %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %223, label %216

216:                                              ; preds = %203
  %217 = load i32, i32* %20, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %216
  %221 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %5, align 8
  %222 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %221, i32 0, i32 0
  store i32 1, i32* %222, align 4
  br label %223

223:                                              ; preds = %220, %216, %203
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %6, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %6, align 4
  br label %197

227:                                              ; preds = %197
  br label %234

228:                                              ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  %229 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %5, align 8
  %230 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %229, i32 0, i32 0
  store i32 1, i32* %230, align 4
  br label %234

231:                                              ; preds = %3, %3, %3, %3, %3, %3
  %232 = load %struct.snd_soc_dapm_path*, %struct.snd_soc_dapm_path** %5, align 8
  %233 = getelementptr inbounds %struct.snd_soc_dapm_path, %struct.snd_soc_dapm_path* %232, i32 0, i32 0
  store i32 0, i32* %233, align 4
  br label %234

234:                                              ; preds = %3, %231, %228, %227, %146, %77
  ret void
}

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @snd_soc_read(i32, i32) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

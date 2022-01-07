; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_rgb_gamma_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_rgb_gamma_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.vfe_cmd_rgb_gamma_config = type { i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfe_rgb_gamma_update(%struct.vfe_cmd_rgb_gamma_config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfe_cmd_rgb_gamma_config*, align 8
  %4 = alloca i32, align 4
  store %struct.vfe_cmd_rgb_gamma_config* %0, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  %6 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  %12 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %177 [
    i32 131, label %14
    i32 129, label %28
    i32 128, label %42
    i32 133, label %56
    i32 132, label %83
    i32 130, label %110
    i32 134, label %137
  ]

14:                                               ; preds = %1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  %25 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @vfe_write_gamma_table(i32 0, i32 %23, i32 %26)
  br label %180

28:                                               ; preds = %1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  %39 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @vfe_write_gamma_table(i32 1, i32 %37, i32 %40)
  br label %180

42:                                               ; preds = %1
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = xor i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  %53 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vfe_write_gamma_table(i32 2, i32 %51, i32 %54)
  br label %180

56:                                               ; preds = %1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = xor i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  %72 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @vfe_write_gamma_table(i32 0, i32 %70, i32 %73)
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  %80 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @vfe_write_gamma_table(i32 1, i32 %78, i32 %81)
  br label %180

83:                                               ; preds = %1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = xor i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = xor i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  %99 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @vfe_write_gamma_table(i32 0, i32 %97, i32 %100)
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  %107 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @vfe_write_gamma_table(i32 2, i32 %105, i32 %108)
  br label %180

110:                                              ; preds = %1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = xor i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = xor i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  %126 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @vfe_write_gamma_table(i32 1, i32 %124, i32 %127)
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  %134 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @vfe_write_gamma_table(i32 2, i32 %132, i32 %135)
  br label %180

137:                                              ; preds = %1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = xor i32 %141, 1
  store i32 %142, i32* %140, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = xor i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = xor i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  %158 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @vfe_write_gamma_table(i32 0, i32 %156, i32 %159)
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  %166 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @vfe_write_gamma_table(i32 1, i32 %164, i32 %167)
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.vfe_cmd_rgb_gamma_config*, %struct.vfe_cmd_rgb_gamma_config** %3, align 8
  %174 = getelementptr inbounds %struct.vfe_cmd_rgb_gamma_config, %struct.vfe_cmd_rgb_gamma_config* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @vfe_write_gamma_table(i32 2, i32 %172, i32 %175)
  br label %180

177:                                              ; preds = %1
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %2, align 4
  br label %185

180:                                              ; preds = %137, %110, %83, %56, %42, %28, %14
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ctrl, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 0
  %183 = call i32 @vfe_program_lut_bank_sel(%struct.TYPE_5__* %182)
  %184 = load i32, i32* %4, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %180, %177
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @vfe_write_gamma_table(i32, i32, i32) #1

declare dso_local i32 @vfe_program_lut_bank_sel(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

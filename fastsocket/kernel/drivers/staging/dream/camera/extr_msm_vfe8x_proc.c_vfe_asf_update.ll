; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_asf_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_asf_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.vfe_cmd_asf_update = type { i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vfe_asf_update = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_4__* null, align 8
@VFE_ASF_CFG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfe_asf_update(%struct.vfe_cmd_asf_update* %0) #0 {
  %2 = alloca %struct.vfe_cmd_asf_update*, align 8
  %3 = alloca %struct.vfe_asf_update, align 4
  store %struct.vfe_cmd_asf_update* %0, %struct.vfe_cmd_asf_update** %2, align 8
  %4 = call i32 @memset(%struct.vfe_asf_update* %3, i32 0, i32 124)
  %5 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %6 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %5, i32 0, i32 15
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 8
  %11 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %12 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 30
  store i32 %13, i32* %14, align 4
  %15 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %16 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %15, i32 0, i32 13
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 29
  store i32 %17, i32* %18, align 4
  %19 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %20 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %19, i32 0, i32 12
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 28
  store i32 %21, i32* %22, align 4
  %23 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %24 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 27
  store i32 %25, i32* %26, align 4
  %27 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %28 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 26
  store i32 %29, i32* %30, align 4
  %31 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %32 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 25
  store i32 %33, i32* %34, align 4
  %35 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %36 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 24
  store i32 %37, i32* %38, align 4
  %39 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %40 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 23
  store i32 %41, i32* %42, align 4
  %43 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %44 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 22
  store i32 %45, i32* %46, align 4
  %47 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %48 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 21
  store i32 %49, i32* %50, align 4
  %51 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %52 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 20
  store i32 %53, i32* %54, align 4
  %55 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %56 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 19
  store i32 %57, i32* %58, align 4
  %59 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %60 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 18
  store i32 %61, i32* %62, align 4
  %63 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %64 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 17
  store i32 %67, i32* %68, align 4
  %69 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %70 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 16
  store i32 %73, i32* %74, align 4
  %75 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %76 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 15
  store i32 %79, i32* %80, align 4
  %81 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %82 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 14
  store i32 %85, i32* %86, align 4
  %87 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %88 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 13
  store i32 %91, i32* %92, align 4
  %93 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %94 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 5
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 12
  store i32 %97, i32* %98, align 4
  %99 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %100 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 6
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 11
  store i32 %103, i32* %104, align 4
  %105 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %106 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 7
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 10
  store i32 %109, i32* %110, align 4
  %111 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %112 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 8
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 9
  store i32 %115, i32* %116, align 4
  %117 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %118 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 8
  store i32 %121, i32* %122, align 4
  %123 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %124 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 7
  store i32 %127, i32* %128, align 4
  %129 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %130 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 2
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 6
  store i32 %133, i32* %134, align 4
  %135 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %136 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 5
  store i32 %139, i32* %140, align 4
  %141 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %142 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 4
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 4
  store i32 %145, i32* %146, align 4
  %147 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %148 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 5
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 3
  store i32 %151, i32* %152, align 4
  %153 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %154 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 6
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 2
  store i32 %157, i32* %158, align 4
  %159 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %160 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 7
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 1
  store i32 %163, i32* %164, align 4
  %165 = load %struct.vfe_cmd_asf_update*, %struct.vfe_cmd_asf_update** %2, align 8
  %166 = getelementptr inbounds %struct.vfe_cmd_asf_update, %struct.vfe_cmd_asf_update* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 8
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.vfe_asf_update, %struct.vfe_asf_update* %3, i32 0, i32 0
  store i32 %169, i32* %170, align 4
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ctrl, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @VFE_ASF_CFG, align 8
  %175 = add nsw i64 %173, %174
  %176 = bitcast %struct.vfe_asf_update* %3 to i32*
  %177 = call i32 @vfe_prog_hw(i64 %175, i32* %176, i32 124)
  ret void
}

declare dso_local i32 @memset(%struct.vfe_asf_update*, i32, i32) #1

declare dso_local i32 @vfe_prog_hw(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

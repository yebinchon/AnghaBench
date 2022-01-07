; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_addr_convert.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/dream/camera/extr_msm_vfe8x_proc.c_vfe_addr_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8* }
%struct.msm_vfe_phy_info = type { i32, i32, i32 }
%struct.vfe_message = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.vfe_frame_extra = type { i32, i32, i32, i32 }

@ctrl = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"vfe_addr_convert, pinfo->y_phy = 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"vfe_addr_convert, pinfo->cbcr_phy = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_vfe_phy_info*, i32, i8*, i8**, i32*)* @vfe_addr_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_addr_convert(%struct.msm_vfe_phy_info* %0, i32 %1, i8* %2, i8** %3, i32* %4) #0 {
  %6 = alloca %struct.msm_vfe_phy_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  store %struct.msm_vfe_phy_info* %0, %struct.msm_vfe_phy_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %176 [
    i32 131, label %12
    i32 130, label %81
    i32 129, label %158
    i32 128, label %167
  ]

12:                                               ; preds = %5
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.vfe_message*
  %15 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.msm_vfe_phy_info*, %struct.msm_vfe_phy_info** %6, align 8
  %20 = getelementptr inbounds %struct.msm_vfe_phy_info, %struct.msm_vfe_phy_info* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.vfe_message*
  %23 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.msm_vfe_phy_info*, %struct.msm_vfe_phy_info** %6, align 8
  %28 = getelementptr inbounds %struct.msm_vfe_phy_info, %struct.msm_vfe_phy_info* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to %struct.vfe_message*
  %31 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctrl, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = bitcast i8* %37 to %struct.vfe_frame_extra*
  %39 = getelementptr inbounds %struct.vfe_frame_extra, %struct.vfe_frame_extra* %38, i32 0, i32 3
  store i32 %34, i32* %39, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = bitcast i8* %40 to %struct.vfe_message*
  %42 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctrl, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = bitcast i8* %48 to %struct.vfe_frame_extra*
  %50 = getelementptr inbounds %struct.vfe_frame_extra, %struct.vfe_frame_extra* %49, i32 0, i32 2
  store i32 %45, i32* %50, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = bitcast i8* %51 to %struct.vfe_message*
  %53 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctrl, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = bitcast i8* %59 to %struct.vfe_frame_extra*
  %61 = getelementptr inbounds %struct.vfe_frame_extra, %struct.vfe_frame_extra* %60, i32 0, i32 1
  store i32 %56, i32* %61, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = bitcast i8* %62 to %struct.vfe_message*
  %64 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctrl, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = bitcast i8* %70 to %struct.vfe_frame_extra*
  %72 = getelementptr inbounds %struct.vfe_frame_extra, %struct.vfe_frame_extra* %71, i32 0, i32 0
  store i32 %67, i32* %72, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctrl, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8**, i8*** %9, align 8
  store i8* %75, i8** %76, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctrl, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %10, align 8
  store i32 %79, i32* %80, align 4
  br label %177

81:                                               ; preds = %5
  %82 = load i8*, i8** %8, align 8
  %83 = bitcast i8* %82 to %struct.vfe_message*
  %84 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.msm_vfe_phy_info*, %struct.msm_vfe_phy_info** %6, align 8
  %89 = getelementptr inbounds %struct.msm_vfe_phy_info, %struct.msm_vfe_phy_info* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = bitcast i8* %90 to %struct.vfe_message*
  %92 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.msm_vfe_phy_info*, %struct.msm_vfe_phy_info** %6, align 8
  %97 = getelementptr inbounds %struct.msm_vfe_phy_info, %struct.msm_vfe_phy_info* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.msm_vfe_phy_info*, %struct.msm_vfe_phy_info** %6, align 8
  %99 = getelementptr inbounds %struct.msm_vfe_phy_info, %struct.msm_vfe_phy_info* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @CDBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %100)
  %102 = load %struct.msm_vfe_phy_info*, %struct.msm_vfe_phy_info** %6, align 8
  %103 = getelementptr inbounds %struct.msm_vfe_phy_info, %struct.msm_vfe_phy_info* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @CDBG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  %106 = load i8*, i8** %8, align 8
  %107 = bitcast i8* %106 to %struct.vfe_message*
  %108 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctrl, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = bitcast i8* %114 to %struct.vfe_frame_extra*
  %116 = getelementptr inbounds %struct.vfe_frame_extra, %struct.vfe_frame_extra* %115, i32 0, i32 3
  store i32 %111, i32* %116, align 4
  %117 = load i8*, i8** %8, align 8
  %118 = bitcast i8* %117 to %struct.vfe_message*
  %119 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctrl, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = bitcast i8* %125 to %struct.vfe_frame_extra*
  %127 = getelementptr inbounds %struct.vfe_frame_extra, %struct.vfe_frame_extra* %126, i32 0, i32 2
  store i32 %122, i32* %127, align 4
  %128 = load i8*, i8** %8, align 8
  %129 = bitcast i8* %128 to %struct.vfe_message*
  %130 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctrl, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = bitcast i8* %136 to %struct.vfe_frame_extra*
  %138 = getelementptr inbounds %struct.vfe_frame_extra, %struct.vfe_frame_extra* %137, i32 0, i32 1
  store i32 %133, i32* %138, align 4
  %139 = load i8*, i8** %8, align 8
  %140 = bitcast i8* %139 to %struct.vfe_message*
  %141 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctrl, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = bitcast i8* %147 to %struct.vfe_frame_extra*
  %149 = getelementptr inbounds %struct.vfe_frame_extra, %struct.vfe_frame_extra* %148, i32 0, i32 0
  store i32 %144, i32* %149, align 4
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctrl, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = load i8**, i8*** %9, align 8
  store i8* %152, i8** %153, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** @ctrl, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32*, i32** %10, align 8
  store i32 %156, i32* %157, align 4
  br label %177

158:                                              ; preds = %5
  %159 = load i8*, i8** %8, align 8
  %160 = bitcast i8* %159 to %struct.vfe_message*
  %161 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.msm_vfe_phy_info*, %struct.msm_vfe_phy_info** %6, align 8
  %166 = getelementptr inbounds %struct.msm_vfe_phy_info, %struct.msm_vfe_phy_info* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  br label %177

167:                                              ; preds = %5
  %168 = load i8*, i8** %8, align 8
  %169 = bitcast i8* %168 to %struct.vfe_message*
  %170 = getelementptr inbounds %struct.vfe_message, %struct.vfe_message* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.msm_vfe_phy_info*, %struct.msm_vfe_phy_info** %6, align 8
  %175 = getelementptr inbounds %struct.msm_vfe_phy_info, %struct.msm_vfe_phy_info* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 4
  br label %177

176:                                              ; preds = %5
  br label %177

177:                                              ; preds = %176, %167, %158, %81, %12
  ret void
}

declare dso_local i32 @CDBG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

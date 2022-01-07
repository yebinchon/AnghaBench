; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_unwind-arm.c__Unwind_VRS_Pop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_unwind-arm.c__Unwind_VRS_Pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.vfp_regs }
%struct.TYPE_3__ = type { i32* }
%struct.vfp_regs = type { i32* }

@_UVRSD_UINT32 = common dso_local global i32 0, align 4
@_UVRSR_FAILED = common dso_local global i32 0, align 4
@R_SP = common dso_local global i64 0, align 8
@_UVRSR_OK = common dso_local global i32 0, align 4
@_UVRSD_VFPX = common dso_local global i32 0, align 4
@_UVRSD_DOUBLE = common dso_local global i32 0, align 4
@DEMAND_SAVE_VFP = common dso_local global i32 0, align 4
@_UVRSR_NOT_IMPLEMENTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_Unwind_VRS_Pop(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vfp_regs, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %10, align 8
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %166 [
    i32 132, label %22
    i32 130, label %82
    i32 131, label %164
    i32 128, label %164
    i32 129, label %164
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @_UVRSD_UINT32, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @_UVRSR_FAILED, align 4
  store i32 %27, i32* %5, align 4
  br label %168

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = and i32 %29, 65535
  store i32 %30, i32* %12, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @R_SP, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %11, align 8
  store i32 0, i32* %13, align 4
  br label %40

40:                                               ; preds = %61, %28
  %41 = load i32, i32* %13, align 4
  %42 = icmp slt i32 %41, 16
  br i1 %42, label %43, label %64

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %13, align 4
  %46 = shl i32 1, %45
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load i32*, i32** %11, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %11, align 8
  %52 = load i32, i32* %50, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %52, i32* %59, align 4
  br label %60

60:                                               ; preds = %49, %43
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %40

64:                                               ; preds = %40
  %65 = load i32, i32* %12, align 4
  %66 = load i64, i64* @R_SP, align 8
  %67 = trunc i64 %66 to i32
  %68 = shl i32 1, %67
  %69 = and i32 %65, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load i32*, i32** %11, align 8
  %73 = ptrtoint i32* %72 to i32
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @R_SP, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %71, %64
  %81 = load i32, i32* @_UVRSR_OK, align 4
  store i32 %81, i32* %5, align 4
  br label %168

82:                                               ; preds = %4
  %83 = load i32, i32* %8, align 4
  %84 = ashr i32 %83, 16
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, 65535
  store i32 %86, i32* %15, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @_UVRSD_VFPX, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @_UVRSD_DOUBLE, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %90, %82
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %95, %96
  %98 = icmp sgt i32 %97, 16
  br i1 %98, label %99, label %101

99:                                               ; preds = %94, %90
  %100 = load i32, i32* @_UVRSR_FAILED, align 4
  store i32 %100, i32* %5, align 4
  br label %168

101:                                              ; preds = %94
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @DEMAND_SAVE_VFP, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %118

108:                                              ; preds = %101
  %109 = load i32, i32* @DEMAND_SAVE_VFP, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = call i32 @__gnu_Unwind_Save_VFP(%struct.vfp_regs* %116)
  br label %118

118:                                              ; preds = %108, %101
  %119 = call i32 @__gnu_Unwind_Save_VFP(%struct.vfp_regs* %16)
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* @R_SP, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i32*
  store i32* %128, i32** %17, align 8
  %129 = getelementptr inbounds %struct.vfp_regs, %struct.vfp_regs* %16, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %14, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32* %133, i32** %18, align 8
  %134 = load i32, i32* %15, align 4
  %135 = mul nsw i32 %134, 2
  store i32 %135, i32* %15, align 4
  br label %136

136:                                              ; preds = %140, %118
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %15, align 4
  %139 = icmp ne i32 %137, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load i32*, i32** %17, align 8
  %142 = getelementptr inbounds i32, i32* %141, i32 1
  store i32* %142, i32** %17, align 8
  %143 = load i32, i32* %141, align 4
  %144 = load i32*, i32** %18, align 8
  %145 = getelementptr inbounds i32, i32* %144, i32 1
  store i32* %145, i32** %18, align 8
  store i32 %143, i32* %144, align 4
  br label %136

146:                                              ; preds = %136
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @_UVRSD_VFPX, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i32*, i32** %17, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %17, align 8
  br label %153

153:                                              ; preds = %150, %146
  %154 = load i32*, i32** %17, align 8
  %155 = ptrtoint i32* %154 to i32
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* @R_SP, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32 %155, i32* %161, align 4
  %162 = call i32 @__gnu_Unwind_Restore_VFP(%struct.vfp_regs* %16)
  %163 = load i32, i32* @_UVRSR_OK, align 4
  store i32 %163, i32* %5, align 4
  br label %168

164:                                              ; preds = %4, %4, %4
  %165 = load i32, i32* @_UVRSR_NOT_IMPLEMENTED, align 4
  store i32 %165, i32* %5, align 4
  br label %168

166:                                              ; preds = %4
  %167 = load i32, i32* @_UVRSR_FAILED, align 4
  store i32 %167, i32* %5, align 4
  br label %168

168:                                              ; preds = %166, %164, %153, %99, %80, %26
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local i32 @__gnu_Unwind_Save_VFP(%struct.vfp_regs*) #1

declare dso_local i32 @__gnu_Unwind_Restore_VFP(%struct.vfp_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

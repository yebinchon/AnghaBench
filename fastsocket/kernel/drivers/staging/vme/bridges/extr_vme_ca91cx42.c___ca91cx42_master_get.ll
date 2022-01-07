; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_ca91cx42.c___ca91cx42_master_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_ca91cx42.c___ca91cx42_master_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.vme_master_resource = type { i32 }

@ca91cx42_bridge = common dso_local global %struct.TYPE_4__* null, align 8
@CA91CX42_LSI_CTL = common dso_local global i64* null, align 8
@CA91CX42_LSI_BS = common dso_local global i64* null, align 8
@CA91CX42_LSI_TO = common dso_local global i64* null, align 8
@CA91CX42_LSI_BD = common dso_local global i64* null, align 8
@CA91CX42_LSI_CTL_EN = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VAS_M = common dso_local global i32 0, align 4
@VME_A16 = common dso_local global i64 0, align 8
@VME_A24 = common dso_local global i64 0, align 8
@VME_A32 = common dso_local global i64 0, align 8
@VME_CRCSR = common dso_local global i64 0, align 8
@VME_USER1 = common dso_local global i64 0, align 8
@VME_USER2 = common dso_local global i64 0, align 8
@CA91CX42_LSI_CTL_VCT_BLT = common dso_local global i32 0, align 4
@VME_BLT = common dso_local global i32 0, align 4
@VME_SCT = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_SUPER_SUPR = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_PGM_PGM = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i32 0, align 4
@CA91CX42_LSI_CTL_VDW_M = common dso_local global i32 0, align 4
@VME_D8 = common dso_local global i64 0, align 8
@VME_D16 = common dso_local global i64 0, align 8
@VME_D32 = common dso_local global i64 0, align 8
@VME_D64 = common dso_local global i64 0, align 8
@vmeOut = common dso_local global %struct.TYPE_3__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ca91cx42_master_get(%struct.vme_master_resource* %0, i32* %1, i64* %2, i64* %3, i64* %4, i32* %5, i64* %6) #0 {
  %8 = alloca %struct.vme_master_resource*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.vme_master_resource* %0, %struct.vme_master_resource** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  store i64* %6, i64** %14, align 8
  %20 = load %struct.vme_master_resource*, %struct.vme_master_resource** %8, align 8
  %21 = getelementptr inbounds %struct.vme_master_resource, %struct.vme_master_resource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %15, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ca91cx42_bridge, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64*, i64** @CA91CX42_LSI_CTL, align 8
  %27 = load i32, i32* %15, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %25, %30
  %32 = call i8* @ioread32(i64 %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %16, align 4
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ca91cx42_bridge, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64*, i64** @CA91CX42_LSI_BS, align 8
  %38 = load i32, i32* %15, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %36, %41
  %43 = call i8* @ioread32(i64 %42)
  %44 = ptrtoint i8* %43 to i64
  store i64 %44, i64* %17, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ca91cx42_bridge, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** @CA91CX42_LSI_TO, align 8
  %49 = load i32, i32* %15, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %47, %52
  %54 = call i8* @ioread32(i64 %53)
  %55 = ptrtoint i8* %54 to i64
  store i64 %55, i64* %19, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ca91cx42_bridge, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** @CA91CX42_LSI_BD, align 8
  %60 = load i32, i32* %15, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %58, %63
  %65 = call i8* @ioread32(i64 %64)
  %66 = ptrtoint i8* %65 to i64
  store i64 %66, i64* %18, align 8
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* %19, align 8
  %69 = add i64 %67, %68
  %70 = load i64*, i64** %10, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i64, i64* %18, align 8
  %72 = load i64, i64* %17, align 8
  %73 = sub i64 %71, %72
  %74 = add i64 %73, 4096
  %75 = load i64*, i64** %11, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i32*, i32** %9, align 8
  store i32 0, i32* %76, align 4
  %77 = load i64*, i64** %12, align 8
  store i64 0, i64* %77, align 8
  %78 = load i32*, i32** %13, align 8
  store i32 0, i32* %78, align 4
  %79 = load i64*, i64** %14, align 8
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* @CA91CX42_LSI_CTL_EN, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %7
  %85 = load i32*, i32** %9, align 8
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %7
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* @CA91CX42_LSI_CTL_VAS_M, align 4
  %89 = and i32 %87, %88
  switch i32 %89, label %108 [
    i32 137, label %90
    i32 136, label %93
    i32 135, label %96
    i32 134, label %99
    i32 133, label %102
    i32 132, label %105
  ]

90:                                               ; preds = %86
  %91 = load i64, i64* @VME_A16, align 8
  %92 = load i64*, i64** %12, align 8
  store i64 %91, i64* %92, align 8
  br label %108

93:                                               ; preds = %86
  %94 = load i64, i64* @VME_A24, align 8
  %95 = load i64*, i64** %12, align 8
  store i64 %94, i64* %95, align 8
  br label %108

96:                                               ; preds = %86
  %97 = load i64, i64* @VME_A32, align 8
  %98 = load i64*, i64** %12, align 8
  store i64 %97, i64* %98, align 8
  br label %108

99:                                               ; preds = %86
  %100 = load i64, i64* @VME_CRCSR, align 8
  %101 = load i64*, i64** %12, align 8
  store i64 %100, i64* %101, align 8
  br label %108

102:                                              ; preds = %86
  %103 = load i64, i64* @VME_USER1, align 8
  %104 = load i64*, i64** %12, align 8
  store i64 %103, i64* %104, align 8
  br label %108

105:                                              ; preds = %86
  %106 = load i64, i64* @VME_USER2, align 8
  %107 = load i64*, i64** %12, align 8
  store i64 %106, i64* %107, align 8
  br label %108

108:                                              ; preds = %86, %105, %102, %99, %96, %93, %90
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* @CA91CX42_LSI_CTL_VCT_BLT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load i32, i32* @VME_BLT, align 4
  %115 = load i32*, i32** %13, align 8
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %114
  store i32 %117, i32* %115, align 4
  br label %123

118:                                              ; preds = %108
  %119 = load i32, i32* @VME_SCT, align 4
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %119
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %118, %113
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* @CA91CX42_LSI_CTL_SUPER_SUPR, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i32, i32* @VME_SUPER, align 4
  %130 = load i32*, i32** %13, align 8
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %129
  store i32 %132, i32* %130, align 4
  br label %138

133:                                              ; preds = %123
  %134 = load i32, i32* @VME_USER, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %134
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %133, %128
  %139 = load i32, i32* %16, align 4
  %140 = load i32, i32* @CA91CX42_LSI_CTL_PGM_PGM, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %138
  %144 = load i32, i32* @VME_PROG, align 4
  %145 = load i32*, i32** %13, align 8
  store i32 %144, i32* %145, align 4
  br label %149

146:                                              ; preds = %138
  %147 = load i32, i32* @VME_DATA, align 4
  %148 = load i32*, i32** %13, align 8
  store i32 %147, i32* %148, align 4
  br label %149

149:                                              ; preds = %146, %143
  %150 = load i32, i32* %16, align 4
  %151 = load i32, i32* @CA91CX42_LSI_CTL_VDW_M, align 4
  %152 = and i32 %150, %151
  switch i32 %152, label %165 [
    i32 128, label %153
    i32 131, label %156
    i32 130, label %159
    i32 129, label %162
  ]

153:                                              ; preds = %149
  %154 = load i64, i64* @VME_D8, align 8
  %155 = load i64*, i64** %14, align 8
  store i64 %154, i64* %155, align 8
  br label %165

156:                                              ; preds = %149
  %157 = load i64, i64* @VME_D16, align 8
  %158 = load i64*, i64** %14, align 8
  store i64 %157, i64* %158, align 8
  br label %165

159:                                              ; preds = %149
  %160 = load i64, i64* @VME_D32, align 8
  %161 = load i64*, i64** %14, align 8
  store i64 %160, i64* %161, align 8
  br label %165

162:                                              ; preds = %149
  %163 = load i64, i64* @VME_D64, align 8
  %164 = load i64*, i64** %14, align 8
  store i64 %163, i64* %164, align 8
  br label %165

165:                                              ; preds = %149, %162, %159, %156, %153
  ret i32 0
}

declare dso_local i8* @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_slave_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vme/bridges/extr_vme_ca91cx42.c_ca91cx42_slave_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vme_slave_resource = type { i32 }

@ca91cx42_bridge = common dso_local global %struct.TYPE_2__* null, align 8
@CA91CX42_VSI_CTL = common dso_local global i64* null, align 8
@CA91CX42_VSI_BS = common dso_local global i64* null, align 8
@CA91CX42_VSI_BD = common dso_local global i64* null, align 8
@CA91CX42_VSI_TO = common dso_local global i64* null, align 8
@CA91CX42_VSI_CTL_EN = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_VAS_M = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_VAS_A16 = common dso_local global i32 0, align 4
@VME_A16 = common dso_local global i64 0, align 8
@CA91CX42_VSI_CTL_VAS_A24 = common dso_local global i32 0, align 4
@VME_A24 = common dso_local global i64 0, align 8
@CA91CX42_VSI_CTL_VAS_A32 = common dso_local global i32 0, align 4
@VME_A32 = common dso_local global i64 0, align 8
@CA91CX42_VSI_CTL_VAS_USER1 = common dso_local global i32 0, align 4
@VME_USER1 = common dso_local global i64 0, align 8
@CA91CX42_VSI_CTL_VAS_USER2 = common dso_local global i32 0, align 4
@VME_USER2 = common dso_local global i64 0, align 8
@CA91CX42_VSI_CTL_SUPER_SUPR = common dso_local global i32 0, align 4
@VME_SUPER = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_SUPER_NPRIV = common dso_local global i32 0, align 4
@VME_USER = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_PGM_PGM = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@CA91CX42_VSI_CTL_PGM_DATA = common dso_local global i32 0, align 4
@VME_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ca91cx42_slave_get(%struct.vme_slave_resource* %0, i32* %1, i64* %2, i64* %3, i64* %4, i64* %5, i32* %6) #0 {
  %8 = alloca %struct.vme_slave_resource*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.vme_slave_resource* %0, %struct.vme_slave_resource** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  store i32* %6, i32** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %20 = load %struct.vme_slave_resource*, %struct.vme_slave_resource** %8, align 8
  %21 = getelementptr inbounds %struct.vme_slave_resource, %struct.vme_slave_resource* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* %15, align 4
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %7
  store i32 4096, i32* %16, align 4
  br label %30

29:                                               ; preds = %25
  store i32 65536, i32* %16, align 4
  br label %30

30:                                               ; preds = %29, %28
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca91cx42_bridge, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** @CA91CX42_VSI_CTL, align 8
  %35 = load i32, i32* %15, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %33, %38
  %40 = call i8* @ioread32(i64 %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %17, align 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca91cx42_bridge, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64*, i64** @CA91CX42_VSI_BS, align 8
  %46 = load i32, i32* %15, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %44, %49
  %51 = call i8* @ioread32(i64 %50)
  %52 = ptrtoint i8* %51 to i64
  %53 = load i64*, i64** %10, align 8
  store i64 %52, i64* %53, align 8
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca91cx42_bridge, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64*, i64** @CA91CX42_VSI_BD, align 8
  %58 = load i32, i32* %15, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %56, %61
  %63 = call i8* @ioread32(i64 %62)
  %64 = ptrtoint i8* %63 to i64
  store i64 %64, i64* %18, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ca91cx42_bridge, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** @CA91CX42_VSI_TO, align 8
  %69 = load i32, i32* %15, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %67, %72
  %74 = call i8* @ioread32(i64 %73)
  %75 = ptrtoint i8* %74 to i64
  store i64 %75, i64* %19, align 8
  %76 = load i64*, i64** %10, align 8
  %77 = ptrtoint i64* %76 to i64
  %78 = load i64, i64* %19, align 8
  %79 = add i64 %77, %78
  %80 = load i64*, i64** %12, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i64, i64* %18, align 8
  %82 = load i64*, i64** %10, align 8
  %83 = load i64, i64* %82, align 8
  %84 = sub i64 %81, %83
  %85 = load i32, i32* %16, align 4
  %86 = zext i32 %85 to i64
  %87 = add i64 %84, %86
  %88 = load i64*, i64** %11, align 8
  store i64 %87, i64* %88, align 8
  %89 = load i32*, i32** %9, align 8
  store i32 0, i32* %89, align 4
  %90 = load i64*, i64** %13, align 8
  store i64 0, i64* %90, align 8
  %91 = load i32*, i32** %14, align 8
  store i32 0, i32* %91, align 4
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* @CA91CX42_VSI_CTL_EN, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %30
  %97 = load i32*, i32** %9, align 8
  store i32 1, i32* %97, align 4
  br label %98

98:                                               ; preds = %96, %30
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* @CA91CX42_VSI_CTL_VAS_M, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @CA91CX42_VSI_CTL_VAS_A16, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = load i64, i64* @VME_A16, align 8
  %106 = load i64*, i64** %13, align 8
  store i64 %105, i64* %106, align 8
  br label %107

107:                                              ; preds = %104, %98
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* @CA91CX42_VSI_CTL_VAS_M, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @CA91CX42_VSI_CTL_VAS_A24, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %107
  %114 = load i64, i64* @VME_A24, align 8
  %115 = load i64*, i64** %13, align 8
  store i64 %114, i64* %115, align 8
  br label %116

116:                                              ; preds = %113, %107
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* @CA91CX42_VSI_CTL_VAS_M, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @CA91CX42_VSI_CTL_VAS_A32, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i64, i64* @VME_A32, align 8
  %124 = load i64*, i64** %13, align 8
  store i64 %123, i64* %124, align 8
  br label %125

125:                                              ; preds = %122, %116
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* @CA91CX42_VSI_CTL_VAS_M, align 4
  %128 = and i32 %126, %127
  %129 = load i32, i32* @CA91CX42_VSI_CTL_VAS_USER1, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i64, i64* @VME_USER1, align 8
  %133 = load i64*, i64** %13, align 8
  store i64 %132, i64* %133, align 8
  br label %134

134:                                              ; preds = %131, %125
  %135 = load i32, i32* %17, align 4
  %136 = load i32, i32* @CA91CX42_VSI_CTL_VAS_M, align 4
  %137 = and i32 %135, %136
  %138 = load i32, i32* @CA91CX42_VSI_CTL_VAS_USER2, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i64, i64* @VME_USER2, align 8
  %142 = load i64*, i64** %13, align 8
  store i64 %141, i64* %142, align 8
  br label %143

143:                                              ; preds = %140, %134
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* @CA91CX42_VSI_CTL_SUPER_SUPR, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i32, i32* @VME_SUPER, align 4
  %150 = load i32*, i32** %14, align 8
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %149
  store i32 %152, i32* %150, align 4
  br label %153

153:                                              ; preds = %148, %143
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* @CA91CX42_VSI_CTL_SUPER_NPRIV, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i32, i32* @VME_USER, align 4
  %160 = load i32*, i32** %14, align 8
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %159
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %158, %153
  %164 = load i32, i32* %17, align 4
  %165 = load i32, i32* @CA91CX42_VSI_CTL_PGM_PGM, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load i32, i32* @VME_PROG, align 4
  %170 = load i32*, i32** %14, align 8
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %169
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %168, %163
  %174 = load i32, i32* %17, align 4
  %175 = load i32, i32* @CA91CX42_VSI_CTL_PGM_DATA, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i32, i32* @VME_DATA, align 4
  %180 = load i32*, i32** %14, align 8
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %179
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %178, %173
  ret i32 0
}

declare dso_local i8* @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

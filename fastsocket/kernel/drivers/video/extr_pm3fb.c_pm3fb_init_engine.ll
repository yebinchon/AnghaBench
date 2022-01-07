; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm3fb.c_pm3fb_init_engine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/extr_pm3fb.c_pm3fb_init_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, %struct.pm3_par* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.pm3_par = type { i32 }

@PM3FilterMode = common dso_local global i32 0, align 4
@PM3FilterModeSync = common dso_local global i32 0, align 4
@PM3StatisticMode = common dso_local global i32 0, align 4
@PM3DeltaMode = common dso_local global i32 0, align 4
@PM3RasterizerMode = common dso_local global i32 0, align 4
@PM3ScissorMode = common dso_local global i32 0, align 4
@PM3LineStippleMode = common dso_local global i32 0, align 4
@PM3AreaStippleMode = common dso_local global i32 0, align 4
@PM3GIDMode = common dso_local global i32 0, align 4
@PM3DepthMode = common dso_local global i32 0, align 4
@PM3StencilMode = common dso_local global i32 0, align 4
@PM3StencilData = common dso_local global i32 0, align 4
@PM3ColorDDAMode = common dso_local global i32 0, align 4
@PM3TextureCoordMode = common dso_local global i32 0, align 4
@PM3TextureIndexMode0 = common dso_local global i32 0, align 4
@PM3TextureIndexMode1 = common dso_local global i32 0, align 4
@PM3TextureReadMode = common dso_local global i32 0, align 4
@PM3LUTMode = common dso_local global i32 0, align 4
@PM3TextureFilterMode = common dso_local global i32 0, align 4
@PM3TextureCompositeMode = common dso_local global i32 0, align 4
@PM3TextureApplicationMode = common dso_local global i32 0, align 4
@PM3TextureCompositeColorMode1 = common dso_local global i32 0, align 4
@PM3TextureCompositeAlphaMode1 = common dso_local global i32 0, align 4
@PM3TextureCompositeColorMode0 = common dso_local global i32 0, align 4
@PM3TextureCompositeAlphaMode0 = common dso_local global i32 0, align 4
@PM3FogMode = common dso_local global i32 0, align 4
@PM3ChromaTestMode = common dso_local global i32 0, align 4
@PM3AlphaTestMode = common dso_local global i32 0, align 4
@PM3AntialiasMode = common dso_local global i32 0, align 4
@PM3YUVMode = common dso_local global i32 0, align 4
@PM3AlphaBlendColorMode = common dso_local global i32 0, align 4
@PM3AlphaBlendAlphaMode = common dso_local global i32 0, align 4
@PM3DitherMode = common dso_local global i32 0, align 4
@PM3LogicalOpMode = common dso_local global i32 0, align 4
@PM3RouterMode = common dso_local global i32 0, align 4
@PM3Window = common dso_local global i32 0, align 4
@PM3Config2D = common dso_local global i32 0, align 4
@PM3SpanColorMask = common dso_local global i32 0, align 4
@PM3XBias = common dso_local global i32 0, align 4
@PM3YBias = common dso_local global i32 0, align 4
@PM3DeltaControl = common dso_local global i32 0, align 4
@PM3BitMaskPattern = common dso_local global i32 0, align 4
@PM3FBDestReadEnables = common dso_local global i32 0, align 4
@PM3FBDestReadBufferAddr0 = common dso_local global i32 0, align 4
@PM3FBDestReadBufferOffset0 = common dso_local global i32 0, align 4
@PM3FBDestReadBufferWidth0 = common dso_local global i32 0, align 4
@PM3FBDestReadMode = common dso_local global i32 0, align 4
@PM3FBDestReadMode_ReadEnable = common dso_local global i32 0, align 4
@PM3FBDestReadMode_Enable0 = common dso_local global i32 0, align 4
@PM3FBSourceReadBufferAddr = common dso_local global i32 0, align 4
@PM3FBSourceReadBufferOffset = common dso_local global i32 0, align 4
@PM3FBSourceReadBufferWidth = common dso_local global i32 0, align 4
@PM3FBSourceReadMode = common dso_local global i32 0, align 4
@PM3FBSourceReadMode_Blocking = common dso_local global i32 0, align 4
@PM3FBSourceReadMode_ReadEnable = common dso_local global i32 0, align 4
@PM3PixelSize = common dso_local global i32 0, align 4
@PM3PixelSize_GLOBAL_8BIT = common dso_local global i32 0, align 4
@PM3PixelSize_GLOBAL_16BIT = common dso_local global i32 0, align 4
@PM3PixelSize_GLOBAL_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsupported depth %d\0A\00", align 1
@PM3FBSoftwareWriteMask = common dso_local global i32 0, align 4
@PM3FBHardwareWriteMask = common dso_local global i32 0, align 4
@PM3FBWriteMode = common dso_local global i32 0, align 4
@PM3FBWriteMode_WriteEnable = common dso_local global i32 0, align 4
@PM3FBWriteMode_OpaqueSpan = common dso_local global i32 0, align 4
@PM3FBWriteMode_Enable0 = common dso_local global i32 0, align 4
@PM3FBWriteBufferAddr0 = common dso_local global i32 0, align 4
@PM3FBWriteBufferOffset0 = common dso_local global i32 0, align 4
@PM3FBWriteBufferWidth0 = common dso_local global i32 0, align 4
@PM3SizeOfFramebuffer = common dso_local global i32 0, align 4
@PM3dXDom = common dso_local global i32 0, align 4
@PM3dXSub = common dso_local global i32 0, align 4
@PM3dY = common dso_local global i32 0, align 4
@PM3StartXDom = common dso_local global i32 0, align 4
@PM3StartXSub = common dso_local global i32 0, align 4
@PM3StartY = common dso_local global i32 0, align 4
@PM3Count = common dso_local global i32 0, align 4
@PM3LBDestReadMode = common dso_local global i32 0, align 4
@PM3LBDestReadEnables = common dso_local global i32 0, align 4
@PM3LBSourceReadMode = common dso_local global i32 0, align 4
@PM3LBWriteMode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*)* @pm3fb_init_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm3fb_init_engine(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.pm3_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 4
  %9 = load %struct.pm3_par*, %struct.pm3_par** %8, align 8
  store %struct.pm3_par* %9, %struct.pm3_par** %3, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 7
  %15 = and i32 %14, -8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %17 = call i32 @PM3_WAIT(%struct.pm3_par* %16, i32 50)
  %18 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %19 = load i32, i32* @PM3FilterMode, align 4
  %20 = load i32, i32* @PM3FilterModeSync, align 4
  %21 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %18, i32 %19, i32 %20)
  %22 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %23 = load i32, i32* @PM3StatisticMode, align 4
  %24 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %22, i32 %23, i32 0)
  %25 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %26 = load i32, i32* @PM3DeltaMode, align 4
  %27 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %25, i32 %26, i32 0)
  %28 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %29 = load i32, i32* @PM3RasterizerMode, align 4
  %30 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %28, i32 %29, i32 0)
  %31 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %32 = load i32, i32* @PM3ScissorMode, align 4
  %33 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %31, i32 %32, i32 0)
  %34 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %35 = load i32, i32* @PM3LineStippleMode, align 4
  %36 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %34, i32 %35, i32 0)
  %37 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %38 = load i32, i32* @PM3AreaStippleMode, align 4
  %39 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %37, i32 %38, i32 0)
  %40 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %41 = load i32, i32* @PM3GIDMode, align 4
  %42 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %40, i32 %41, i32 0)
  %43 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %44 = load i32, i32* @PM3DepthMode, align 4
  %45 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %43, i32 %44, i32 0)
  %46 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %47 = load i32, i32* @PM3StencilMode, align 4
  %48 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %46, i32 %47, i32 0)
  %49 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %50 = load i32, i32* @PM3StencilData, align 4
  %51 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %49, i32 %50, i32 0)
  %52 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %53 = load i32, i32* @PM3ColorDDAMode, align 4
  %54 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %52, i32 %53, i32 0)
  %55 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %56 = load i32, i32* @PM3TextureCoordMode, align 4
  %57 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %55, i32 %56, i32 0)
  %58 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %59 = load i32, i32* @PM3TextureIndexMode0, align 4
  %60 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %58, i32 %59, i32 0)
  %61 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %62 = load i32, i32* @PM3TextureIndexMode1, align 4
  %63 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %61, i32 %62, i32 0)
  %64 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %65 = load i32, i32* @PM3TextureReadMode, align 4
  %66 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %64, i32 %65, i32 0)
  %67 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %68 = load i32, i32* @PM3LUTMode, align 4
  %69 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %67, i32 %68, i32 0)
  %70 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %71 = load i32, i32* @PM3TextureFilterMode, align 4
  %72 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %70, i32 %71, i32 0)
  %73 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %74 = load i32, i32* @PM3TextureCompositeMode, align 4
  %75 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %73, i32 %74, i32 0)
  %76 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %77 = load i32, i32* @PM3TextureApplicationMode, align 4
  %78 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %76, i32 %77, i32 0)
  %79 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %80 = load i32, i32* @PM3TextureCompositeColorMode1, align 4
  %81 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %79, i32 %80, i32 0)
  %82 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %83 = load i32, i32* @PM3TextureCompositeAlphaMode1, align 4
  %84 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %82, i32 %83, i32 0)
  %85 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %86 = load i32, i32* @PM3TextureCompositeColorMode0, align 4
  %87 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %85, i32 %86, i32 0)
  %88 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %89 = load i32, i32* @PM3TextureCompositeAlphaMode0, align 4
  %90 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %88, i32 %89, i32 0)
  %91 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %92 = load i32, i32* @PM3FogMode, align 4
  %93 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %91, i32 %92, i32 0)
  %94 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %95 = load i32, i32* @PM3ChromaTestMode, align 4
  %96 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %94, i32 %95, i32 0)
  %97 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %98 = load i32, i32* @PM3AlphaTestMode, align 4
  %99 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %97, i32 %98, i32 0)
  %100 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %101 = load i32, i32* @PM3AntialiasMode, align 4
  %102 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %100, i32 %101, i32 0)
  %103 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %104 = load i32, i32* @PM3YUVMode, align 4
  %105 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %103, i32 %104, i32 0)
  %106 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %107 = load i32, i32* @PM3AlphaBlendColorMode, align 4
  %108 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %106, i32 %107, i32 0)
  %109 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %110 = load i32, i32* @PM3AlphaBlendAlphaMode, align 4
  %111 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %109, i32 %110, i32 0)
  %112 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %113 = load i32, i32* @PM3DitherMode, align 4
  %114 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %112, i32 %113, i32 0)
  %115 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %116 = load i32, i32* @PM3LogicalOpMode, align 4
  %117 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %115, i32 %116, i32 0)
  %118 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %119 = load i32, i32* @PM3RouterMode, align 4
  %120 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %118, i32 %119, i32 0)
  %121 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %122 = load i32, i32* @PM3Window, align 4
  %123 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %121, i32 %122, i32 0)
  %124 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %125 = load i32, i32* @PM3Config2D, align 4
  %126 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %124, i32 %125, i32 0)
  %127 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %128 = load i32, i32* @PM3SpanColorMask, align 4
  %129 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %127, i32 %128, i32 -1)
  %130 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %131 = load i32, i32* @PM3XBias, align 4
  %132 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %130, i32 %131, i32 0)
  %133 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %134 = load i32, i32* @PM3YBias, align 4
  %135 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %133, i32 %134, i32 0)
  %136 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %137 = load i32, i32* @PM3DeltaControl, align 4
  %138 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %136, i32 %137, i32 0)
  %139 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %140 = load i32, i32* @PM3BitMaskPattern, align 4
  %141 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %139, i32 %140, i32 -1)
  %142 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %143 = load i32, i32* @PM3FBDestReadEnables, align 4
  %144 = call i32 @PM3FBDestReadEnables_E(i32 255)
  %145 = call i32 @PM3FBDestReadEnables_R(i32 255)
  %146 = or i32 %144, %145
  %147 = call i32 @PM3FBDestReadEnables_ReferenceAlpha(i32 255)
  %148 = or i32 %146, %147
  %149 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %142, i32 %143, i32 %148)
  %150 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %151 = load i32, i32* @PM3FBDestReadBufferAddr0, align 4
  %152 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %150, i32 %151, i32 0)
  %153 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %154 = load i32, i32* @PM3FBDestReadBufferOffset0, align 4
  %155 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %153, i32 %154, i32 0)
  %156 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %157 = load i32, i32* @PM3FBDestReadBufferWidth0, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @PM3FBDestReadBufferWidth_Width(i32 %158)
  %160 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %156, i32 %157, i32 %159)
  %161 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %162 = load i32, i32* @PM3FBDestReadMode, align 4
  %163 = load i32, i32* @PM3FBDestReadMode_ReadEnable, align 4
  %164 = load i32, i32* @PM3FBDestReadMode_Enable0, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %161, i32 %162, i32 %165)
  %167 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %168 = load i32, i32* @PM3FBSourceReadBufferAddr, align 4
  %169 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %167, i32 %168, i32 0)
  %170 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %171 = load i32, i32* @PM3FBSourceReadBufferOffset, align 4
  %172 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %170, i32 %171, i32 0)
  %173 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %174 = load i32, i32* @PM3FBSourceReadBufferWidth, align 4
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @PM3FBSourceReadBufferWidth_Width(i32 %175)
  %177 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %173, i32 %174, i32 %176)
  %178 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %179 = load i32, i32* @PM3FBSourceReadMode, align 4
  %180 = load i32, i32* @PM3FBSourceReadMode_Blocking, align 4
  %181 = load i32, i32* @PM3FBSourceReadMode_ReadEnable, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %178, i32 %179, i32 %182)
  %184 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %185 = call i32 @PM3_WAIT(%struct.pm3_par* %184, i32 2)
  store i64 385, i64* %5, align 8
  %186 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %187 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  switch i32 %189, label %205 [
    i32 8, label %190
    i32 16, label %195
    i32 32, label %200
  ]

190:                                              ; preds = %1
  %191 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %192 = load i32, i32* @PM3PixelSize, align 4
  %193 = load i32, i32* @PM3PixelSize_GLOBAL_8BIT, align 4
  %194 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %191, i32 %192, i32 %193)
  br label %211

195:                                              ; preds = %1
  %196 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %197 = load i32, i32* @PM3PixelSize, align 4
  %198 = load i32, i32* @PM3PixelSize_GLOBAL_16BIT, align 4
  %199 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %196, i32 %197, i32 %198)
  br label %211

200:                                              ; preds = %1
  %201 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %202 = load i32, i32* @PM3PixelSize, align 4
  %203 = load i32, i32* @PM3PixelSize_GLOBAL_32BIT, align 4
  %204 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %201, i32 %202, i32 %203)
  br label %211

205:                                              ; preds = %1
  %206 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %207 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @DPRINTK(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %209)
  br label %211

211:                                              ; preds = %205, %200, %195, %190
  %212 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %213 = load i32, i32* @PM3RasterizerMode, align 4
  %214 = load i64, i64* %5, align 8
  %215 = trunc i64 %214 to i32
  %216 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %212, i32 %213, i32 %215)
  %217 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %218 = call i32 @PM3_WAIT(%struct.pm3_par* %217, i32 20)
  %219 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %220 = load i32, i32* @PM3FBSoftwareWriteMask, align 4
  %221 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %219, i32 %220, i32 -1)
  %222 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %223 = load i32, i32* @PM3FBHardwareWriteMask, align 4
  %224 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %222, i32 %223, i32 -1)
  %225 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %226 = load i32, i32* @PM3FBWriteMode, align 4
  %227 = load i32, i32* @PM3FBWriteMode_WriteEnable, align 4
  %228 = load i32, i32* @PM3FBWriteMode_OpaqueSpan, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @PM3FBWriteMode_Enable0, align 4
  %231 = or i32 %229, %230
  %232 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %225, i32 %226, i32 %231)
  %233 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %234 = load i32, i32* @PM3FBWriteBufferAddr0, align 4
  %235 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %233, i32 %234, i32 0)
  %236 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %237 = load i32, i32* @PM3FBWriteBufferOffset0, align 4
  %238 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %236, i32 %237, i32 0)
  %239 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %240 = load i32, i32* @PM3FBWriteBufferWidth0, align 4
  %241 = load i32, i32* %4, align 4
  %242 = call i32 @PM3FBWriteBufferWidth_Width(i32 %241)
  %243 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %239, i32 %240, i32 %242)
  %244 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %245 = load i32, i32* @PM3SizeOfFramebuffer, align 4
  %246 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %244, i32 %245, i32 0)
  %247 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %248 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %251 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %250, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = udiv i64 %249, %253
  store i64 %254, i64* %6, align 8
  %255 = load i64, i64* %6, align 8
  %256 = icmp ugt i64 %255, 4095
  br i1 %256, label %257, label %261

257:                                              ; preds = %211
  %258 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %259 = load i32, i32* @PM3SizeOfFramebuffer, align 4
  %260 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %258, i32 %259, i32 4095)
  br label %267

261:                                              ; preds = %211
  %262 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %263 = load i32, i32* @PM3SizeOfFramebuffer, align 4
  %264 = load i64, i64* %6, align 8
  %265 = trunc i64 %264 to i32
  %266 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %262, i32 %263, i32 %265)
  br label %267

267:                                              ; preds = %261, %257
  %268 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %269 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %268, i32 0, i32 2
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  switch i32 %271, label %284 [
    i32 8, label %272
    i32 16, label %276
    i32 32, label %280
  ]

272:                                              ; preds = %267
  %273 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %274 = load i32, i32* @PM3DitherMode, align 4
  %275 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %273, i32 %274, i32 1040)
  br label %291

276:                                              ; preds = %267
  %277 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %278 = load i32, i32* @PM3DitherMode, align 4
  %279 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %277, i32 %278, i32 1032)
  br label %291

280:                                              ; preds = %267
  %281 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %282 = load i32, i32* @PM3DitherMode, align 4
  %283 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %281, i32 %282, i32 1024)
  br label %291

284:                                              ; preds = %267
  %285 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %286 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %285, i32 0, i32 1
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @DPRINTK(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %289)
  br label %291

291:                                              ; preds = %284, %280, %276, %272
  %292 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %293 = load i32, i32* @PM3dXDom, align 4
  %294 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %292, i32 %293, i32 0)
  %295 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %296 = load i32, i32* @PM3dXSub, align 4
  %297 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %295, i32 %296, i32 0)
  %298 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %299 = load i32, i32* @PM3dY, align 4
  %300 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %298, i32 %299, i32 65536)
  %301 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %302 = load i32, i32* @PM3StartXDom, align 4
  %303 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %301, i32 %302, i32 0)
  %304 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %305 = load i32, i32* @PM3StartXSub, align 4
  %306 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %304, i32 %305, i32 0)
  %307 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %308 = load i32, i32* @PM3StartY, align 4
  %309 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %307, i32 %308, i32 0)
  %310 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %311 = load i32, i32* @PM3Count, align 4
  %312 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %310, i32 %311, i32 0)
  %313 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %314 = load i32, i32* @PM3LBDestReadMode, align 4
  %315 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %313, i32 %314, i32 0)
  %316 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %317 = load i32, i32* @PM3LBDestReadEnables, align 4
  %318 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %316, i32 %317, i32 0)
  %319 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %320 = load i32, i32* @PM3LBSourceReadMode, align 4
  %321 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %319, i32 %320, i32 0)
  %322 = load %struct.pm3_par*, %struct.pm3_par** %3, align 8
  %323 = load i32, i32* @PM3LBWriteMode, align 4
  %324 = call i32 @PM3_WRITE_REG(%struct.pm3_par* %322, i32 %323, i32 0)
  %325 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %326 = call i32 @pm3fb_sync(%struct.fb_info* %325)
  ret void
}

declare dso_local i32 @PM3_WAIT(%struct.pm3_par*, i32) #1

declare dso_local i32 @PM3_WRITE_REG(%struct.pm3_par*, i32, i32) #1

declare dso_local i32 @PM3FBDestReadEnables_E(i32) #1

declare dso_local i32 @PM3FBDestReadEnables_R(i32) #1

declare dso_local i32 @PM3FBDestReadEnables_ReferenceAlpha(i32) #1

declare dso_local i32 @PM3FBDestReadBufferWidth_Width(i32) #1

declare dso_local i32 @PM3FBSourceReadBufferWidth_Width(i32) #1

declare dso_local i32 @DPRINTK(i32, i8*, i32) #1

declare dso_local i32 @PM3FBWriteBufferWidth_Width(i32) #1

declare dso_local i32 @pm3fb_sync(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

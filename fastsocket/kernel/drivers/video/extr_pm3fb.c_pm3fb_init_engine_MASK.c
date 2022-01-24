#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct pm3_par {int dummy; } ;
struct TYPE_5__ {int xres_virtual; int bits_per_pixel; } ;
struct TYPE_4__ {unsigned long line_length; } ;
struct fb_info {unsigned long screen_size; TYPE_3__* current_par; TYPE_2__ var; TYPE_1__ fix; struct pm3_par* par; } ;
struct TYPE_6__ {int depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  PM3AlphaBlendAlphaMode ; 
 int /*<<< orphan*/  PM3AlphaBlendColorMode ; 
 int /*<<< orphan*/  PM3AlphaTestMode ; 
 int /*<<< orphan*/  PM3AntialiasMode ; 
 int /*<<< orphan*/  PM3AreaStippleMode ; 
 int /*<<< orphan*/  PM3BitMaskPattern ; 
 int /*<<< orphan*/  PM3ChromaTestMode ; 
 int /*<<< orphan*/  PM3ColorDDAMode ; 
 int /*<<< orphan*/  PM3Config2D ; 
 int /*<<< orphan*/  PM3Count ; 
 int /*<<< orphan*/  PM3DeltaControl ; 
 int /*<<< orphan*/  PM3DeltaMode ; 
 int /*<<< orphan*/  PM3DepthMode ; 
 int /*<<< orphan*/  PM3DitherMode ; 
 int /*<<< orphan*/  PM3FBDestReadBufferAddr0 ; 
 int /*<<< orphan*/  PM3FBDestReadBufferOffset0 ; 
 int /*<<< orphan*/  PM3FBDestReadBufferWidth0 ; 
 int FUNC1 (int const) ; 
 int /*<<< orphan*/  PM3FBDestReadEnables ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  PM3FBDestReadMode ; 
 int PM3FBDestReadMode_Enable0 ; 
 int PM3FBDestReadMode_ReadEnable ; 
 int /*<<< orphan*/  PM3FBHardwareWriteMask ; 
 int /*<<< orphan*/  PM3FBSoftwareWriteMask ; 
 int /*<<< orphan*/  PM3FBSourceReadBufferAddr ; 
 int /*<<< orphan*/  PM3FBSourceReadBufferOffset ; 
 int /*<<< orphan*/  PM3FBSourceReadBufferWidth ; 
 int FUNC5 (int const) ; 
 int /*<<< orphan*/  PM3FBSourceReadMode ; 
 int PM3FBSourceReadMode_Blocking ; 
 int PM3FBSourceReadMode_ReadEnable ; 
 int /*<<< orphan*/  PM3FBWriteBufferAddr0 ; 
 int /*<<< orphan*/  PM3FBWriteBufferOffset0 ; 
 int /*<<< orphan*/  PM3FBWriteBufferWidth0 ; 
 int FUNC6 (int const) ; 
 int /*<<< orphan*/  PM3FBWriteMode ; 
 int PM3FBWriteMode_Enable0 ; 
 int PM3FBWriteMode_OpaqueSpan ; 
 int PM3FBWriteMode_WriteEnable ; 
 int /*<<< orphan*/  PM3FilterMode ; 
 int PM3FilterModeSync ; 
 int /*<<< orphan*/  PM3FogMode ; 
 int /*<<< orphan*/  PM3GIDMode ; 
 int /*<<< orphan*/  PM3LBDestReadEnables ; 
 int /*<<< orphan*/  PM3LBDestReadMode ; 
 int /*<<< orphan*/  PM3LBSourceReadMode ; 
 int /*<<< orphan*/  PM3LBWriteMode ; 
 int /*<<< orphan*/  PM3LUTMode ; 
 int /*<<< orphan*/  PM3LineStippleMode ; 
 int /*<<< orphan*/  PM3LogicalOpMode ; 
 int /*<<< orphan*/  PM3PixelSize ; 
 int PM3PixelSize_GLOBAL_16BIT ; 
 int PM3PixelSize_GLOBAL_32BIT ; 
 int PM3PixelSize_GLOBAL_8BIT ; 
 int /*<<< orphan*/  PM3RasterizerMode ; 
 int /*<<< orphan*/  PM3RouterMode ; 
 int /*<<< orphan*/  PM3ScissorMode ; 
 int /*<<< orphan*/  PM3SizeOfFramebuffer ; 
 int /*<<< orphan*/  PM3SpanColorMask ; 
 int /*<<< orphan*/  PM3StartXDom ; 
 int /*<<< orphan*/  PM3StartXSub ; 
 int /*<<< orphan*/  PM3StartY ; 
 int /*<<< orphan*/  PM3StatisticMode ; 
 int /*<<< orphan*/  PM3StencilData ; 
 int /*<<< orphan*/  PM3StencilMode ; 
 int /*<<< orphan*/  PM3TextureApplicationMode ; 
 int /*<<< orphan*/  PM3TextureCompositeAlphaMode0 ; 
 int /*<<< orphan*/  PM3TextureCompositeAlphaMode1 ; 
 int /*<<< orphan*/  PM3TextureCompositeColorMode0 ; 
 int /*<<< orphan*/  PM3TextureCompositeColorMode1 ; 
 int /*<<< orphan*/  PM3TextureCompositeMode ; 
 int /*<<< orphan*/  PM3TextureCoordMode ; 
 int /*<<< orphan*/  PM3TextureFilterMode ; 
 int /*<<< orphan*/  PM3TextureIndexMode0 ; 
 int /*<<< orphan*/  PM3TextureIndexMode1 ; 
 int /*<<< orphan*/  PM3TextureReadMode ; 
 int /*<<< orphan*/  PM3Window ; 
 int /*<<< orphan*/  PM3XBias ; 
 int /*<<< orphan*/  PM3YBias ; 
 int /*<<< orphan*/  PM3YUVMode ; 
 int /*<<< orphan*/  FUNC7 (struct pm3_par*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pm3_par*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PM3dXDom ; 
 int /*<<< orphan*/  PM3dXSub ; 
 int /*<<< orphan*/  PM3dY ; 
 int /*<<< orphan*/  FUNC9 (struct fb_info*) ; 

__attribute__((used)) static void FUNC10(struct fb_info *info)
{
	struct pm3_par *par = info->par;
	const u32 width = (info->var.xres_virtual + 7) & ~7;

	FUNC7(par, 50);
	FUNC8(par, PM3FilterMode, PM3FilterModeSync);
	FUNC8(par, PM3StatisticMode, 0x0);
	FUNC8(par, PM3DeltaMode, 0x0);
	FUNC8(par, PM3RasterizerMode, 0x0);
	FUNC8(par, PM3ScissorMode, 0x0);
	FUNC8(par, PM3LineStippleMode, 0x0);
	FUNC8(par, PM3AreaStippleMode, 0x0);
	FUNC8(par, PM3GIDMode, 0x0);
	FUNC8(par, PM3DepthMode, 0x0);
	FUNC8(par, PM3StencilMode, 0x0);
	FUNC8(par, PM3StencilData, 0x0);
	FUNC8(par, PM3ColorDDAMode, 0x0);
	FUNC8(par, PM3TextureCoordMode, 0x0);
	FUNC8(par, PM3TextureIndexMode0, 0x0);
	FUNC8(par, PM3TextureIndexMode1, 0x0);
	FUNC8(par, PM3TextureReadMode, 0x0);
	FUNC8(par, PM3LUTMode, 0x0);
	FUNC8(par, PM3TextureFilterMode, 0x0);
	FUNC8(par, PM3TextureCompositeMode, 0x0);
	FUNC8(par, PM3TextureApplicationMode, 0x0);
	FUNC8(par, PM3TextureCompositeColorMode1, 0x0);
	FUNC8(par, PM3TextureCompositeAlphaMode1, 0x0);
	FUNC8(par, PM3TextureCompositeColorMode0, 0x0);
	FUNC8(par, PM3TextureCompositeAlphaMode0, 0x0);
	FUNC8(par, PM3FogMode, 0x0);
	FUNC8(par, PM3ChromaTestMode, 0x0);
	FUNC8(par, PM3AlphaTestMode, 0x0);
	FUNC8(par, PM3AntialiasMode, 0x0);
	FUNC8(par, PM3YUVMode, 0x0);
	FUNC8(par, PM3AlphaBlendColorMode, 0x0);
	FUNC8(par, PM3AlphaBlendAlphaMode, 0x0);
	FUNC8(par, PM3DitherMode, 0x0);
	FUNC8(par, PM3LogicalOpMode, 0x0);
	FUNC8(par, PM3RouterMode, 0x0);
	FUNC8(par, PM3Window, 0x0);

	FUNC8(par, PM3Config2D, 0x0);

	FUNC8(par, PM3SpanColorMask, 0xffffffff);

	FUNC8(par, PM3XBias, 0x0);
	FUNC8(par, PM3YBias, 0x0);
	FUNC8(par, PM3DeltaControl, 0x0);

	FUNC8(par, PM3BitMaskPattern, 0xffffffff);

	FUNC8(par, PM3FBDestReadEnables,
			   FUNC2(0xff) |
			   FUNC3(0xff) |
			   FUNC4(0xff));
	FUNC8(par, PM3FBDestReadBufferAddr0, 0x0);
	FUNC8(par, PM3FBDestReadBufferOffset0, 0x0);
	FUNC8(par, PM3FBDestReadBufferWidth0,
			   FUNC1(width));

	FUNC8(par, PM3FBDestReadMode,
			   PM3FBDestReadMode_ReadEnable |
			   PM3FBDestReadMode_Enable0);
	FUNC8(par, PM3FBSourceReadBufferAddr, 0x0);
	FUNC8(par, PM3FBSourceReadBufferOffset, 0x0);
	FUNC8(par, PM3FBSourceReadBufferWidth,
			   FUNC5(width));
	FUNC8(par, PM3FBSourceReadMode,
			   PM3FBSourceReadMode_Blocking |
			   PM3FBSourceReadMode_ReadEnable);

	FUNC7(par, 2);
	{
		/* invert bits in bitmask */
		unsigned long rm = 1 | (3 << 7);
		switch (info->var.bits_per_pixel) {
		case 8:
			FUNC8(par, PM3PixelSize,
					   PM3PixelSize_GLOBAL_8BIT);
#ifdef __BIG_ENDIAN
			rm |= 3 << 15;
#endif
			break;
		case 16:
			FUNC8(par, PM3PixelSize,
					   PM3PixelSize_GLOBAL_16BIT);
#ifdef __BIG_ENDIAN
			rm |= 2 << 15;
#endif
			break;
		case 32:
			FUNC8(par, PM3PixelSize,
					   PM3PixelSize_GLOBAL_32BIT);
			break;
		default:
			FUNC0(1, "Unsupported depth %d\n",
				info->var.bits_per_pixel);
			break;
		}
		FUNC8(par, PM3RasterizerMode, rm);
	}

	FUNC7(par, 20);
	FUNC8(par, PM3FBSoftwareWriteMask, 0xffffffff);
	FUNC8(par, PM3FBHardwareWriteMask, 0xffffffff);
	FUNC8(par, PM3FBWriteMode,
			   PM3FBWriteMode_WriteEnable |
			   PM3FBWriteMode_OpaqueSpan |
			   PM3FBWriteMode_Enable0);
	FUNC8(par, PM3FBWriteBufferAddr0, 0x0);
	FUNC8(par, PM3FBWriteBufferOffset0, 0x0);
	FUNC8(par, PM3FBWriteBufferWidth0,
			   FUNC6(width));

	FUNC8(par, PM3SizeOfFramebuffer, 0x0);
	{
		/* size in lines of FB */
		unsigned long sofb = info->screen_size /
			info->fix.line_length;
		if (sofb > 4095)
			FUNC8(par, PM3SizeOfFramebuffer, 4095);
		else
			FUNC8(par, PM3SizeOfFramebuffer, sofb);

		switch (info->var.bits_per_pixel) {
		case 8:
			FUNC8(par, PM3DitherMode,
					   (1 << 10) | (2 << 3));
			break;
		case 16:
			FUNC8(par, PM3DitherMode,
					   (1 << 10) | (1 << 3));
			break;
		case 32:
			FUNC8(par, PM3DitherMode,
					   (1 << 10) | (0 << 3));
			break;
		default:
			FUNC0(1, "Unsupported depth %d\n",
				info->current_par->depth);
			break;
		}
	}

	FUNC8(par, PM3dXDom, 0x0);
	FUNC8(par, PM3dXSub, 0x0);
	FUNC8(par, PM3dY, 1 << 16);
	FUNC8(par, PM3StartXDom, 0x0);
	FUNC8(par, PM3StartXSub, 0x0);
	FUNC8(par, PM3StartY, 0x0);
	FUNC8(par, PM3Count, 0x0);

/* Disable LocalBuffer. better safe than sorry */
	FUNC8(par, PM3LBDestReadMode, 0x0);
	FUNC8(par, PM3LBDestReadEnables, 0x0);
	FUNC8(par, PM3LBSourceReadMode, 0x0);
	FUNC8(par, PM3LBWriteMode, 0x0);

	FUNC9(info);
}
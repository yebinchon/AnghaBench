; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_li_setup_dma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/oss/extr_vwsnd.c_li_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i64, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [108 x i8] c"(chan=0x%p, desc=0x%p, lith=0x%p, buffer_paddr=0x%lx, bufshift=%d, fragshift=%d, channels=%d, sampsize=%d)\0A\00", align 1
@LI_CCTL_RESET = common dso_local global i64 0, align 8
@LI_CCFG_MODE_STEREO = common dso_local global i64 0, align 8
@LI_CCFG_MODE_MONO = common dso_local global i64 0, align 8
@LI_CCFG_FMT_16BIT = common dso_local global i64 0, align 8
@LI_CCFG_FMT_8BIT = common dso_local global i64 0, align 8
@LI_CCFG_LOCK = common dso_local global i64 0, align 8
@LI_CCFG_SLOT = common dso_local global i32 0, align 4
@LI_CCTL_SIZE = common dso_local global i32 0, align 4
@LI_CCTL_DMA_ENABLE = common dso_local global i64 0, align 8
@LI_CCTL_TMASK = common dso_local global i32 0, align 4
@LI_CCTL_TPTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"basereg 0x%x = 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cfgreg 0x%x = 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ctlreg 0x%x = 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*, i32*, i64, i32, i32, i32, i32)* @li_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @li_setup_dma(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i64, i64* %12, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %16, align 4
  %29 = call i32 @DBGEV(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %21, %struct.TYPE_8__* %22, i32* %23, i64 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load i32*, i32** %11, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* @LI_CCTL_RESET, align 8
  %35 = call i32 @li_writel(i32* %30, i32 %33, i64 %34)
  %36 = load i32, i32* %15, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %41, label %38

38:                                               ; preds = %8
  %39 = load i32, i32* %15, align 4
  %40 = icmp eq i32 %39, 2
  br label %41

41:                                               ; preds = %38, %8
  %42 = phi i1 [ true, %8 ], [ %40, %38 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @ASSERT(i32 %43)
  %45 = load i32, i32* %15, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i64, i64* @LI_CCFG_MODE_STEREO, align 8
  store i64 %48, i64* %17, align 8
  br label %51

49:                                               ; preds = %41
  %50 = load i64, i64* @LI_CCFG_MODE_MONO, align 8
  store i64 %50, i64* %17, align 8
  br label %51

51:                                               ; preds = %49, %47
  %52 = load i32, i32* %16, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %16, align 4
  %56 = icmp eq i32 %55, 2
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ true, %51 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = load i32, i32* %16, align 4
  %62 = icmp eq i32 %61, 2
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i64, i64* @LI_CCFG_FMT_16BIT, align 8
  store i64 %64, i64* %18, align 8
  br label %67

65:                                               ; preds = %57
  %66 = load i64, i64* @LI_CCFG_FMT_8BIT, align 8
  store i64 %66, i64* %18, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 4
  store %struct.TYPE_8__* %68, %struct.TYPE_8__** %70, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 3
  store i32* %71, i32** %73, align 8
  %74 = load i64, i64* %12, align 8
  %75 = and i64 %74, 255
  %76 = icmp ne i64 %75, 0
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load i64, i64* %12, align 8
  %81 = lshr i64 %80, 8
  %82 = or i64 %81, 536870912
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @LI_CCFG_LOCK, align 8
  %89 = xor i64 %88, -1
  %90 = and i64 %87, %89
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @LI_CCFG_SLOT, align 4
  %95 = call i64 @SHIFT_FIELD(i64 %93, i32 %94)
  %96 = or i64 %90, %95
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = or i64 %96, %99
  %101 = load i64, i64* %17, align 8
  %102 = or i64 %100, %101
  %103 = load i64, i64* %18, align 8
  %104 = or i64 %102, %103
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sub nsw i32 %107, 6
  %109 = sext i32 %108 to i64
  store i64 %109, i64* %19, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sub nsw i32 13, %110
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %20, align 8
  %113 = load i64, i64* %19, align 8
  %114 = icmp uge i64 %113, 2
  br i1 %114, label %115, label %118

115:                                              ; preds = %67
  %116 = load i64, i64* %19, align 8
  %117 = icmp ule i64 %116, 7
  br label %118

118:                                              ; preds = %115, %67
  %119 = phi i1 [ false, %67 ], [ %117, %115 ]
  %120 = zext i1 %119 to i32
  %121 = call i32 @ASSERT(i32 %120)
  %122 = load i64, i64* %20, align 8
  %123 = icmp uge i64 %122, 1
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i64, i64* %20, align 8
  %126 = icmp ule i64 %125, 7
  br label %127

127:                                              ; preds = %124, %118
  %128 = phi i1 [ false, %118 ], [ %126, %124 ]
  %129 = zext i1 %128 to i32
  %130 = call i32 @ASSERT(i32 %129)
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @LI_CCTL_RESET, align 8
  %135 = xor i64 %134, -1
  %136 = and i64 %133, %135
  %137 = load i64, i64* %19, align 8
  %138 = load i32, i32* @LI_CCTL_SIZE, align 4
  %139 = call i64 @SHIFT_FIELD(i64 %137, i32 %138)
  %140 = or i64 %136, %139
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @LI_CCTL_DMA_ENABLE, align 8
  %145 = xor i64 %144, -1
  %146 = and i64 %143, %145
  %147 = or i64 %140, %146
  %148 = load i64, i64* %20, align 8
  %149 = load i32, i32* @LI_CCTL_TMASK, align 4
  %150 = call i64 @SHIFT_FIELD(i64 %148, i32 %149)
  %151 = or i64 %147, %150
  %152 = load i32, i32* @LI_CCTL_TPTR, align 4
  %153 = call i64 @SHIFT_FIELD(i64 0, i32 %152)
  %154 = or i64 %151, %153
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 2
  store i64 %154, i64* %156, align 8
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @DBGPV(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %159, i64 %162)
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @DBGPV(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %166, i64 %169)
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @DBGPV(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %173, i64 %176)
  %178 = load i32*, i32** %11, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @li_writel(i32* %178, i32 %181, i64 %184)
  %186 = load i32*, i32** %11, align 8
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @li_writel(i32* %186, i32 %189, i64 %192)
  %194 = load i32*, i32** %11, align 8
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @li_writel(i32* %194, i32 %197, i64 %200)
  %202 = call i32 (...) @DBGRV()
  ret void
}

declare dso_local i32 @DBGEV(i8*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @li_writel(i32*, i32, i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @SHIFT_FIELD(i64, i32) #1

declare dso_local i32 @DBGPV(i8*, i32, i64) #1

declare dso_local i32 @DBGRV(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

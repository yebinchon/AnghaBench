; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_capture_get_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_capture_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32, i32, %struct.sum_mgr** }
%struct.sum_mgr = type { i32 (%struct.sum_mgr*, %struct.src_desc*, %struct.src**)*, i32 (%struct.sum_mgr*, %struct.amixer_desc*, %struct.amixer**)*, i32 (%struct.sum_mgr*, %struct.sum_desc*, %struct.sum**)*, i32 (%struct.sum_mgr*, %struct.srcimp_desc*, %struct.srcimp**)* }
%struct.src_desc = type opaque
%struct.src = type opaque
%struct.amixer_desc = type opaque
%struct.amixer = type opaque
%struct.sum_desc = type opaque
%struct.sum = type opaque
%struct.srcimp_desc = type opaque
%struct.srcimp = type opaque
%struct.ct_atc_pcm = type { %struct.src.0*, %struct.TYPE_5__*, i64, %struct.srcimp.1**, i32, i64, i32*, i64, %struct.src.0** }
%struct.src.0 = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.srcimp.1 = type { i32 }
%struct.src_mgr = type { i32 (%struct.sum_mgr*, %struct.src_desc.2*, %struct.src.3**)*, i32 (%struct.sum_mgr*, %struct.amixer_desc.4*, %struct.amixer.5**)*, i32 (%struct.sum_mgr*, %struct.sum_desc.6*, %struct.sum.7**)*, i32 (%struct.sum_mgr*, %struct.srcimp_desc.8*, %struct.srcimp.1**)* }
%struct.src_desc.2 = type opaque
%struct.src.3 = type opaque
%struct.amixer_desc.4 = type opaque
%struct.amixer.5 = type opaque
%struct.sum_desc.6 = type { i32, i32 }
%struct.sum.7 = type { i32 }
%struct.srcimp_desc.8 = type { i32, i32 }
%struct.srcimp_mgr = type { i32 (%struct.sum_mgr*, %struct.src_desc.9*, %struct.src.10**)*, i32 (%struct.sum_mgr*, %struct.amixer_desc.11*, %struct.amixer.12**)*, i32 (%struct.sum_mgr*, %struct.sum_desc.6*, %struct.sum.7**)*, i32 (%struct.sum_mgr*, %struct.srcimp_desc.13*, %struct.srcimp.14**)* }
%struct.src_desc.9 = type opaque
%struct.src.10 = type opaque
%struct.amixer_desc.11 = type opaque
%struct.amixer.12 = type opaque
%struct.srcimp_desc.13 = type opaque
%struct.srcimp.14 = type opaque
%struct.amixer_mgr = type { i32 (%struct.sum_mgr*, %struct.src_desc.15*, %struct.src.0**)*, i32 (%struct.sum_mgr*, %struct.amixer_desc.16*, %struct.amixer.17**)*, i32 (%struct.sum_mgr*, %struct.sum_desc.6*, %struct.sum.7**)*, i32 (%struct.sum_mgr*, %struct.srcimp_desc.8*, %struct.srcimp.1**)* }
%struct.src_desc.15 = type { i32, i32, i32, i32 }
%struct.amixer_desc.16 = type opaque
%struct.amixer.17 = type opaque
%struct.amixer_desc.18 = type { i32, i32 }
%struct.src_node_conf_t = type { i32, i32, i32, i32, i32, i32 }
%struct.amixer.19 = type { i32 }

@SRC = common dso_local global i64 0, align 8
@SRCIMP = common dso_local global i64 0, align 8
@AMIXER = common dso_local global i64 0, align 8
@SUM = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ARCRW = common dso_local global i32 0, align 4
@MEMWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* @atc_pcm_capture_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_pcm_capture_get_resources(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.ct_atc_pcm*, align 8
  %6 = alloca %struct.src_mgr*, align 8
  %7 = alloca %struct.srcimp_mgr*, align 8
  %8 = alloca %struct.amixer_mgr*, align 8
  %9 = alloca %struct.sum_mgr*, align 8
  %10 = alloca %struct.src_desc.15, align 4
  %11 = alloca %struct.src.0*, align 8
  %12 = alloca %struct.srcimp_desc.8, align 4
  %13 = alloca %struct.srcimp.1*, align 8
  %14 = alloca %struct.amixer_desc.18, align 4
  %15 = alloca %struct.sum_desc.6, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [2 x %struct.src_node_conf_t], align 16
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %5, align 8
  %25 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %26 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %25, i32 0, i32 2
  %27 = load %struct.sum_mgr**, %struct.sum_mgr*** %26, align 8
  %28 = load i64, i64* @SRC, align 8
  %29 = getelementptr inbounds %struct.sum_mgr*, %struct.sum_mgr** %27, i64 %28
  %30 = load %struct.sum_mgr*, %struct.sum_mgr** %29, align 8
  %31 = bitcast %struct.sum_mgr* %30 to %struct.src_mgr*
  store %struct.src_mgr* %31, %struct.src_mgr** %6, align 8
  %32 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %33 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %32, i32 0, i32 2
  %34 = load %struct.sum_mgr**, %struct.sum_mgr*** %33, align 8
  %35 = load i64, i64* @SRCIMP, align 8
  %36 = getelementptr inbounds %struct.sum_mgr*, %struct.sum_mgr** %34, i64 %35
  %37 = load %struct.sum_mgr*, %struct.sum_mgr** %36, align 8
  %38 = bitcast %struct.sum_mgr* %37 to %struct.srcimp_mgr*
  store %struct.srcimp_mgr* %38, %struct.srcimp_mgr** %7, align 8
  %39 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %40 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %39, i32 0, i32 2
  %41 = load %struct.sum_mgr**, %struct.sum_mgr*** %40, align 8
  %42 = load i64, i64* @AMIXER, align 8
  %43 = getelementptr inbounds %struct.sum_mgr*, %struct.sum_mgr** %41, i64 %42
  %44 = load %struct.sum_mgr*, %struct.sum_mgr** %43, align 8
  %45 = bitcast %struct.sum_mgr* %44 to %struct.amixer_mgr*
  store %struct.amixer_mgr* %45, %struct.amixer_mgr** %8, align 8
  %46 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %47 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %46, i32 0, i32 2
  %48 = load %struct.sum_mgr**, %struct.sum_mgr*** %47, align 8
  %49 = load i64, i64* @SUM, align 8
  %50 = getelementptr inbounds %struct.sum_mgr*, %struct.sum_mgr** %48, i64 %49
  %51 = load %struct.sum_mgr*, %struct.sum_mgr** %50, align 8
  store %struct.sum_mgr* %51, %struct.sum_mgr** %9, align 8
  %52 = bitcast %struct.src_desc.15* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %52, i8 0, i64 16, i1 false)
  %53 = bitcast %struct.srcimp_desc.8* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %53, i8 0, i64 8, i1 false)
  %54 = bitcast %struct.amixer_desc.18* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %54, i8 0, i64 8, i1 false)
  %55 = bitcast %struct.sum_desc.6* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %55, i8 0, i64 8, i1 false)
  %56 = bitcast [2 x %struct.src_node_conf_t]* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %56, i8 0, i64 48, i1 false)
  %57 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %58 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %59 = call i32 @atc_pcm_release_resources(%struct.ct_atc* %57, %struct.ct_atc_pcm* %58)
  %60 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %61 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %17, align 4
  %67 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %68 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %71 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %75 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @atc_get_pitch(i32 %73, i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %83 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %84 = getelementptr inbounds [2 x %struct.src_node_conf_t], [2 x %struct.src_node_conf_t]* %24, i64 0, i64 0
  %85 = call i32 @setup_src_node_conf(%struct.ct_atc* %82, %struct.ct_atc_pcm* %83, %struct.src_node_conf_t* %84, i32* %22)
  %86 = load i32, i32* %17, align 4
  %87 = icmp eq i32 1, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  store i32 %89, i32* %23, align 4
  %90 = load i32, i32* %23, align 4
  %91 = mul nsw i32 %90, 2
  %92 = load i32, i32* %22, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* %22, align 4
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %17, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %115

97:                                               ; preds = %2
  %98 = load i32, i32* %16, align 4
  %99 = icmp uge i32 134217728, %98
  br i1 %99, label %100, label %115

100:                                              ; preds = %97
  %101 = load i32, i32* %17, align 4
  %102 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %103 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %101, %104
  %106 = load i32, i32* %21, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %21, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %110 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %108, %111
  %113 = load i32, i32* %20, align 4
  %114 = add nsw i32 %113, %112
  store i32 %114, i32* %20, align 4
  br label %119

115:                                              ; preds = %97, %2
  %116 = load i32, i32* %17, align 4
  %117 = load i32, i32* %20, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %20, align 4
  br label %119

119:                                              ; preds = %115, %100
  %120 = load i32, i32* %22, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %140

122:                                              ; preds = %119
  %123 = load i32, i32* %22, align 4
  %124 = sext i32 %123 to i64
  %125 = mul i64 8, %124
  %126 = trunc i64 %125 to i32
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i8* @kzalloc(i32 %126, i32 %127)
  %129 = bitcast i8* %128 to %struct.src.0**
  %130 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %131 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %130, i32 0, i32 8
  store %struct.src.0** %129, %struct.src.0*** %131, align 8
  %132 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %133 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %132, i32 0, i32 8
  %134 = load %struct.src.0**, %struct.src.0*** %133, align 8
  %135 = icmp ne %struct.src.0** %134, null
  br i1 %135, label %139, label %136

136:                                              ; preds = %122
  %137 = load i32, i32* @ENOMEM, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %479

139:                                              ; preds = %122
  br label %140

140:                                              ; preds = %139, %119
  %141 = load i32, i32* %21, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %161

143:                                              ; preds = %140
  %144 = load i32, i32* %21, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 8, %145
  %147 = trunc i64 %146 to i32
  %148 = load i32, i32* @GFP_KERNEL, align 4
  %149 = call i8* @kzalloc(i32 %147, i32 %148)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %152 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %151, i32 0, i32 6
  store i32* %150, i32** %152, align 8
  %153 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %154 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %153, i32 0, i32 6
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %160, label %157

157:                                              ; preds = %143
  %158 = load i32, i32* @ENOMEM, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %18, align 4
  br label %474

160:                                              ; preds = %143
  br label %161

161:                                              ; preds = %160, %140
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = mul i64 8, %163
  %165 = trunc i64 %164 to i32
  %166 = load i32, i32* @GFP_KERNEL, align 4
  %167 = call i8* @kzalloc(i32 %165, i32 %166)
  %168 = bitcast i8* %167 to %struct.srcimp.1**
  %169 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %170 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %169, i32 0, i32 3
  store %struct.srcimp.1** %168, %struct.srcimp.1*** %170, align 8
  %171 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %172 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %171, i32 0, i32 3
  %173 = load %struct.srcimp.1**, %struct.srcimp.1*** %172, align 8
  %174 = icmp ne %struct.srcimp.1** %173, null
  br i1 %174, label %178, label %175

175:                                              ; preds = %161
  %176 = load i32, i32* @ENOMEM, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %18, align 4
  br label %474

178:                                              ; preds = %161
  %179 = getelementptr inbounds %struct.src_desc.15, %struct.src_desc.15* %10, i32 0, i32 0
  store i32 1, i32* %179, align 4
  %180 = load i32, i32* @ARCRW, align 4
  %181 = getelementptr inbounds %struct.src_desc.15, %struct.src_desc.15* %10, i32 0, i32 2
  store i32 %180, i32* %181, align 4
  store i32 0, i32* %19, align 4
  %182 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %183 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %182, i32 0, i32 7
  store i64 0, i64* %183, align 8
  br label %184

184:                                              ; preds = %264, %178
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %22, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %267

188:                                              ; preds = %184
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %17, align 4
  %191 = sdiv i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [2 x %struct.src_node_conf_t], [2 x %struct.src_node_conf_t]* %24, i64 0, i64 %192
  %194 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = getelementptr inbounds %struct.src_desc.15, %struct.src_desc.15* %10, i32 0, i32 1
  store i32 %195, i32* %196, align 4
  %197 = load %struct.src_mgr*, %struct.src_mgr** %6, align 8
  %198 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %197, i32 0, i32 0
  %199 = load i32 (%struct.sum_mgr*, %struct.src_desc.2*, %struct.src.3**)*, i32 (%struct.sum_mgr*, %struct.src_desc.2*, %struct.src.3**)** %198, align 8
  %200 = load %struct.src_mgr*, %struct.src_mgr** %6, align 8
  %201 = bitcast %struct.src_mgr* %200 to %struct.sum_mgr*
  %202 = bitcast %struct.src_desc.15* %10 to %struct.src_desc.2*
  %203 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %204 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %203, i32 0, i32 8
  %205 = load %struct.src.0**, %struct.src.0*** %204, align 8
  %206 = load i32, i32* %19, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.src.0*, %struct.src.0** %205, i64 %207
  %209 = bitcast %struct.src.0** %208 to %struct.src.3**
  %210 = call i32 %199(%struct.sum_mgr* %201, %struct.src_desc.2* %202, %struct.src.3** %209)
  store i32 %210, i32* %18, align 4
  %211 = load i32, i32* %18, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %188
  br label %474

214:                                              ; preds = %188
  %215 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %216 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %215, i32 0, i32 8
  %217 = load %struct.src.0**, %struct.src.0*** %216, align 8
  %218 = load i32, i32* %19, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds %struct.src.0*, %struct.src.0** %217, i64 %219
  %221 = load %struct.src.0*, %struct.src.0** %220, align 8
  store %struct.src.0* %221, %struct.src.0** %11, align 8
  %222 = load i32, i32* %19, align 4
  %223 = load i32, i32* %17, align 4
  %224 = sdiv i32 %222, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [2 x %struct.src_node_conf_t], [2 x %struct.src_node_conf_t]* %24, i64 0, i64 %225
  %227 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %16, align 4
  %229 = load %struct.src.0*, %struct.src.0** %11, align 8
  %230 = getelementptr inbounds %struct.src.0, %struct.src.0* %229, i32 0, i32 0
  %231 = load %struct.TYPE_6__*, %struct.TYPE_6__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %232, align 8
  %234 = load %struct.src.0*, %struct.src.0** %11, align 8
  %235 = load i32, i32* %16, align 4
  %236 = call i32 %233(%struct.src.0* %234, i32 %235)
  %237 = load %struct.src.0*, %struct.src.0** %11, align 8
  %238 = getelementptr inbounds %struct.src.0, %struct.src.0* %237, i32 0, i32 0
  %239 = load %struct.TYPE_6__*, %struct.TYPE_6__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %239, i32 0, i32 2
  %241 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %240, align 8
  %242 = load %struct.src.0*, %struct.src.0** %11, align 8
  %243 = load i32, i32* %16, align 4
  %244 = call i32 @select_rom(i32 %243)
  %245 = call i32 %241(%struct.src.0* %242, i32 %244)
  %246 = load %struct.src.0*, %struct.src.0** %11, align 8
  %247 = getelementptr inbounds %struct.src.0, %struct.src.0* %246, i32 0, i32 0
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 1
  %250 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %249, align 8
  %251 = load %struct.src.0*, %struct.src.0** %11, align 8
  %252 = load i32, i32* %19, align 4
  %253 = load i32, i32* %17, align 4
  %254 = sdiv i32 %252, %253
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [2 x %struct.src_node_conf_t], [2 x %struct.src_node_conf_t]* %24, i64 0, i64 %255
  %257 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %256, i32 0, i32 4
  %258 = load i32, i32* %257, align 8
  %259 = call i32 %250(%struct.src.0* %251, i32 %258)
  %260 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %261 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %260, i32 0, i32 7
  %262 = load i64, i64* %261, align 8
  %263 = add nsw i64 %262, 1
  store i64 %263, i64* %261, align 8
  br label %264

264:                                              ; preds = %214
  %265 = load i32, i32* %19, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %19, align 4
  br label %184

267:                                              ; preds = %184
  store i32 0, i32* %19, align 4
  %268 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %269 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %268, i32 0, i32 5
  store i64 0, i64* %269, align 8
  br label %270

270:                                              ; preds = %330, %267
  %271 = load i32, i32* %19, align 4
  %272 = load i32, i32* %21, align 4
  %273 = icmp slt i32 %271, %272
  br i1 %273, label %274, label %333

274:                                              ; preds = %270
  %275 = load i32, i32* %19, align 4
  %276 = load i32, i32* %23, align 4
  %277 = mul nsw i32 %276, 2
  %278 = icmp slt i32 %275, %277
  br i1 %278, label %279, label %284

279:                                              ; preds = %274
  %280 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %281 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = getelementptr inbounds %struct.amixer_desc.18, %struct.amixer_desc.18* %14, i32 0, i32 0
  store i32 %282, i32* %283, align 4
  br label %306

284:                                              ; preds = %274
  %285 = load i32, i32* %19, align 4
  %286 = load i32, i32* %23, align 4
  %287 = mul nsw i32 %286, 2
  %288 = load i32, i32* %22, align 4
  %289 = add nsw i32 %287, %288
  %290 = icmp slt i32 %285, %289
  br i1 %290, label %291, label %303

291:                                              ; preds = %284
  %292 = load i32, i32* %19, align 4
  %293 = load i32, i32* %23, align 4
  %294 = mul nsw i32 %293, 2
  %295 = sub nsw i32 %292, %294
  %296 = load i32, i32* %17, align 4
  %297 = sdiv i32 %295, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [2 x %struct.src_node_conf_t], [2 x %struct.src_node_conf_t]* %24, i64 0, i64 %298
  %300 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  %302 = getelementptr inbounds %struct.amixer_desc.18, %struct.amixer_desc.18* %14, i32 0, i32 0
  store i32 %301, i32* %302, align 4
  br label %305

303:                                              ; preds = %284
  %304 = getelementptr inbounds %struct.amixer_desc.18, %struct.amixer_desc.18* %14, i32 0, i32 0
  store i32 1, i32* %304, align 4
  br label %305

305:                                              ; preds = %303, %291
  br label %306

306:                                              ; preds = %305, %279
  %307 = load %struct.amixer_mgr*, %struct.amixer_mgr** %8, align 8
  %308 = getelementptr inbounds %struct.amixer_mgr, %struct.amixer_mgr* %307, i32 0, i32 1
  %309 = load i32 (%struct.sum_mgr*, %struct.amixer_desc.16*, %struct.amixer.17**)*, i32 (%struct.sum_mgr*, %struct.amixer_desc.16*, %struct.amixer.17**)** %308, align 8
  %310 = load %struct.amixer_mgr*, %struct.amixer_mgr** %8, align 8
  %311 = bitcast %struct.amixer_mgr* %310 to %struct.sum_mgr*
  %312 = bitcast %struct.amixer_desc.18* %14 to %struct.amixer_desc.16*
  %313 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %314 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %313, i32 0, i32 6
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %19, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = bitcast i32* %318 to %struct.amixer.19**
  %320 = bitcast %struct.amixer.19** %319 to %struct.amixer.17**
  %321 = call i32 %309(%struct.sum_mgr* %311, %struct.amixer_desc.16* %312, %struct.amixer.17** %320)
  store i32 %321, i32* %18, align 4
  %322 = load i32, i32* %18, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %306
  br label %474

325:                                              ; preds = %306
  %326 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %327 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %326, i32 0, i32 5
  %328 = load i64, i64* %327, align 8
  %329 = add nsw i64 %328, 1
  store i64 %329, i64* %327, align 8
  br label %330

330:                                              ; preds = %325
  %331 = load i32, i32* %19, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %19, align 4
  br label %270

333:                                              ; preds = %270
  %334 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %335 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = getelementptr inbounds %struct.sum_desc.6, %struct.sum_desc.6* %15, i32 0, i32 0
  store i32 %336, i32* %337, align 4
  %338 = load %struct.sum_mgr*, %struct.sum_mgr** %9, align 8
  %339 = getelementptr inbounds %struct.sum_mgr, %struct.sum_mgr* %338, i32 0, i32 2
  %340 = load i32 (%struct.sum_mgr*, %struct.sum_desc*, %struct.sum**)*, i32 (%struct.sum_mgr*, %struct.sum_desc*, %struct.sum**)** %339, align 8
  %341 = load %struct.sum_mgr*, %struct.sum_mgr** %9, align 8
  %342 = bitcast %struct.sum_desc.6* %15 to %struct.sum_desc*
  %343 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %344 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %343, i32 0, i32 4
  %345 = bitcast i32* %344 to %struct.sum.7**
  %346 = bitcast %struct.sum.7** %345 to %struct.sum**
  %347 = call i32 %340(%struct.sum_mgr* %341, %struct.sum_desc* %342, %struct.sum** %346)
  store i32 %347, i32* %18, align 4
  %348 = load i32, i32* %18, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %333
  br label %474

351:                                              ; preds = %333
  %352 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %353 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %356 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 4
  %358 = mul nsw i32 %354, %357
  %359 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %360 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %359, i32 0, i32 1
  %361 = load %struct.TYPE_5__*, %struct.TYPE_5__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 0
  %363 = load %struct.TYPE_4__*, %struct.TYPE_4__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @atc_get_pitch(i32 %358, i32 %365)
  store i32 %366, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %367 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %368 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %367, i32 0, i32 2
  store i64 0, i64* %368, align 8
  br label %369

369:                                              ; preds = %427, %351
  %370 = load i32, i32* %19, align 4
  %371 = load i32, i32* %20, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %373, label %430

373:                                              ; preds = %369
  %374 = load i32, i32* %19, align 4
  %375 = load i32, i32* %22, align 4
  %376 = icmp slt i32 %374, %375
  br i1 %376, label %377, label %386

377:                                              ; preds = %373
  %378 = load i32, i32* %19, align 4
  %379 = load i32, i32* %17, align 4
  %380 = sdiv i32 %378, %379
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds [2 x %struct.src_node_conf_t], [2 x %struct.src_node_conf_t]* %24, i64 0, i64 %381
  %383 = getelementptr inbounds %struct.src_node_conf_t, %struct.src_node_conf_t* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 4
  %385 = getelementptr inbounds %struct.srcimp_desc.8, %struct.srcimp_desc.8* %12, i32 0, i32 0
  store i32 %384, i32* %385, align 4
  br label %403

386:                                              ; preds = %373
  %387 = load i32, i32* %17, align 4
  %388 = icmp eq i32 1, %387
  br i1 %388, label %389, label %400

389:                                              ; preds = %386
  %390 = load i32, i32* %16, align 4
  %391 = icmp ule i32 %390, 134217728
  br i1 %391, label %392, label %396

392:                                              ; preds = %389
  %393 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %394 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  br label %397

396:                                              ; preds = %389
  br label %397

397:                                              ; preds = %396, %392
  %398 = phi i32 [ %395, %392 ], [ 1, %396 ]
  %399 = getelementptr inbounds %struct.srcimp_desc.8, %struct.srcimp_desc.8* %12, i32 0, i32 0
  store i32 %398, i32* %399, align 4
  br label %402

400:                                              ; preds = %386
  %401 = getelementptr inbounds %struct.srcimp_desc.8, %struct.srcimp_desc.8* %12, i32 0, i32 0
  store i32 1, i32* %401, align 4
  br label %402

402:                                              ; preds = %400, %397
  br label %403

403:                                              ; preds = %402, %377
  %404 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %405 = getelementptr inbounds %struct.srcimp_mgr, %struct.srcimp_mgr* %404, i32 0, i32 3
  %406 = load i32 (%struct.sum_mgr*, %struct.srcimp_desc.13*, %struct.srcimp.14**)*, i32 (%struct.sum_mgr*, %struct.srcimp_desc.13*, %struct.srcimp.14**)** %405, align 8
  %407 = load %struct.srcimp_mgr*, %struct.srcimp_mgr** %7, align 8
  %408 = bitcast %struct.srcimp_mgr* %407 to %struct.sum_mgr*
  %409 = bitcast %struct.srcimp_desc.8* %12 to %struct.srcimp_desc.13*
  %410 = bitcast %struct.srcimp.1** %13 to %struct.srcimp.14**
  %411 = call i32 %406(%struct.sum_mgr* %408, %struct.srcimp_desc.13* %409, %struct.srcimp.14** %410)
  store i32 %411, i32* %18, align 4
  %412 = load i32, i32* %18, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %403
  br label %474

415:                                              ; preds = %403
  %416 = load %struct.srcimp.1*, %struct.srcimp.1** %13, align 8
  %417 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %418 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %417, i32 0, i32 3
  %419 = load %struct.srcimp.1**, %struct.srcimp.1*** %418, align 8
  %420 = load i32, i32* %19, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds %struct.srcimp.1*, %struct.srcimp.1** %419, i64 %421
  store %struct.srcimp.1* %416, %struct.srcimp.1** %422, align 8
  %423 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %424 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %423, i32 0, i32 2
  %425 = load i64, i64* %424, align 8
  %426 = add nsw i64 %425, 1
  store i64 %426, i64* %424, align 8
  br label %427

427:                                              ; preds = %415
  %428 = load i32, i32* %19, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %19, align 4
  br label %369

430:                                              ; preds = %369
  %431 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %432 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %431, i32 0, i32 1
  %433 = load %struct.TYPE_5__*, %struct.TYPE_5__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 0
  %435 = load %struct.TYPE_4__*, %struct.TYPE_4__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = getelementptr inbounds %struct.src_desc.15, %struct.src_desc.15* %10, i32 0, i32 0
  store i32 %437, i32* %438, align 4
  %439 = getelementptr inbounds %struct.src_desc.15, %struct.src_desc.15* %10, i32 0, i32 1
  store i32 1, i32* %439, align 4
  %440 = load i32, i32* @MEMWR, align 4
  %441 = getelementptr inbounds %struct.src_desc.15, %struct.src_desc.15* %10, i32 0, i32 2
  store i32 %440, i32* %441, align 4
  %442 = load %struct.src_mgr*, %struct.src_mgr** %6, align 8
  %443 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %442, i32 0, i32 0
  %444 = load i32 (%struct.sum_mgr*, %struct.src_desc.2*, %struct.src.3**)*, i32 (%struct.sum_mgr*, %struct.src_desc.2*, %struct.src.3**)** %443, align 8
  %445 = load %struct.src_mgr*, %struct.src_mgr** %6, align 8
  %446 = bitcast %struct.src_mgr* %445 to %struct.sum_mgr*
  %447 = bitcast %struct.src_desc.15* %10 to %struct.src_desc.2*
  %448 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %449 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %448, i32 0, i32 0
  %450 = bitcast %struct.src.0** %449 to %struct.src.3**
  %451 = call i32 %444(%struct.sum_mgr* %446, %struct.src_desc.2* %447, %struct.src.3** %450)
  store i32 %451, i32* %18, align 4
  %452 = load i32, i32* %18, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %430
  br label %474

455:                                              ; preds = %430
  %456 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %457 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %456, i32 0, i32 0
  %458 = load %struct.src.0*, %struct.src.0** %457, align 8
  store %struct.src.0* %458, %struct.src.0** %11, align 8
  %459 = load %struct.src.0*, %struct.src.0** %11, align 8
  %460 = getelementptr inbounds %struct.src.0, %struct.src.0* %459, i32 0, i32 0
  %461 = load %struct.TYPE_6__*, %struct.TYPE_6__** %460, align 8
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i32 0, i32 0
  %463 = load i32 (%struct.src.0*, i32)*, i32 (%struct.src.0*, i32)** %462, align 8
  %464 = load %struct.src.0*, %struct.src.0** %11, align 8
  %465 = load i32, i32* %16, align 4
  %466 = call i32 %463(%struct.src.0* %464, i32 %465)
  %467 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %468 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %469 = call i32 @ct_map_audio_buffer(%struct.ct_atc* %467, %struct.ct_atc_pcm* %468)
  store i32 %469, i32* %18, align 4
  %470 = load i32, i32* %18, align 4
  %471 = icmp slt i32 %470, 0
  br i1 %471, label %472, label %473

472:                                              ; preds = %455
  br label %474

473:                                              ; preds = %455
  store i32 0, i32* %3, align 4
  br label %479

474:                                              ; preds = %472, %454, %414, %350, %324, %213, %175, %157
  %475 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %476 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %477 = call i32 @atc_pcm_release_resources(%struct.ct_atc* %475, %struct.ct_atc_pcm* %476)
  %478 = load i32, i32* %18, align 4
  store i32 %478, i32* %3, align 4
  br label %479

479:                                              ; preds = %474, %473, %136
  %480 = load i32, i32* %3, align 4
  ret i32 %480
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @atc_pcm_release_resources(%struct.ct_atc*, %struct.ct_atc_pcm*) #2

declare dso_local i32 @atc_get_pitch(i32, i32) #2

declare dso_local i32 @setup_src_node_conf(%struct.ct_atc*, %struct.ct_atc_pcm*, %struct.src_node_conf_t*, i32*) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @select_rom(i32) #2

declare dso_local i32 @ct_map_audio_buffer(%struct.ct_atc*, %struct.ct_atc_pcm*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

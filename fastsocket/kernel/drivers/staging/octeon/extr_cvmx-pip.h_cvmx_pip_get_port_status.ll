; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pip.h_cvmx_pip_get_port_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-pip.h_cvmx_pip_get_port_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.cvmx_pip_stat_ctl = type { i64 }
%union.cvmx_pip_stat0_prtx = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32, i64 }
%union.cvmx_pip_stat1_prtx = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }
%union.cvmx_pip_stat2_prtx = type { i8* }
%union.cvmx_pip_stat3_prtx = type { i8* }
%union.cvmx_pip_stat4_prtx = type { i8* }
%union.cvmx_pip_stat5_prtx = type { i8* }
%union.cvmx_pip_stat6_prtx = type { i8* }
%union.cvmx_pip_stat7_prtx = type { i8* }
%union.cvmx_pip_stat8_prtx = type { i8* }
%union.cvmx_pip_stat9_prtx = type { i8* }
%union.cvmx_pip_stat_inb_pktsx = type { i8* }
%union.cvmx_pip_stat_inb_octsx = type { i8* }
%union.cvmx_pip_stat_inb_errsx = type { i8* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { i32 }

@CVMX_PIP_STAT_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.TYPE_22__*)* @cvmx_pip_get_port_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_pip_get_port_status(i32 %0, i32 %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %union.cvmx_pip_stat_ctl, align 8
  %8 = alloca %union.cvmx_pip_stat0_prtx, align 8
  %9 = alloca %union.cvmx_pip_stat1_prtx, align 8
  %10 = alloca %union.cvmx_pip_stat2_prtx, align 8
  %11 = alloca %union.cvmx_pip_stat3_prtx, align 8
  %12 = alloca %union.cvmx_pip_stat4_prtx, align 8
  %13 = alloca %union.cvmx_pip_stat5_prtx, align 8
  %14 = alloca %union.cvmx_pip_stat6_prtx, align 8
  %15 = alloca %union.cvmx_pip_stat7_prtx, align 8
  %16 = alloca %union.cvmx_pip_stat8_prtx, align 8
  %17 = alloca %union.cvmx_pip_stat9_prtx, align 8
  %18 = alloca %union.cvmx_pip_stat_inb_pktsx, align 8
  %19 = alloca %union.cvmx_pip_stat_inb_octsx, align 8
  %20 = alloca %union.cvmx_pip_stat_inb_errsx, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %6, align 8
  %21 = bitcast %union.cvmx_pip_stat_ctl* %7 to i64*
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* %5, align 4
  %23 = bitcast %union.cvmx_pip_stat_ctl* %7 to %struct.TYPE_23__*
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @CVMX_PIP_STAT_CTL, align 4
  %26 = bitcast %union.cvmx_pip_stat_ctl* %7 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @cvmx_write_csr(i32 %25, i64 %27)
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @CVMX_PIP_STAT0_PRTX(i32 %29)
  %31 = call i8* @cvmx_read_csr(i32 %30)
  %32 = bitcast %union.cvmx_pip_stat0_prtx* %8 to i8**
  store i8* %31, i8** %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @CVMX_PIP_STAT1_PRTX(i32 %33)
  %35 = call i8* @cvmx_read_csr(i32 %34)
  %36 = bitcast %union.cvmx_pip_stat1_prtx* %9 to i8**
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @CVMX_PIP_STAT2_PRTX(i32 %37)
  %39 = call i8* @cvmx_read_csr(i32 %38)
  %40 = bitcast %union.cvmx_pip_stat2_prtx* %10 to i8**
  store i8* %39, i8** %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @CVMX_PIP_STAT3_PRTX(i32 %41)
  %43 = call i8* @cvmx_read_csr(i32 %42)
  %44 = bitcast %union.cvmx_pip_stat3_prtx* %11 to i8**
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @CVMX_PIP_STAT4_PRTX(i32 %45)
  %47 = call i8* @cvmx_read_csr(i32 %46)
  %48 = bitcast %union.cvmx_pip_stat4_prtx* %12 to i8**
  store i8* %47, i8** %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @CVMX_PIP_STAT5_PRTX(i32 %49)
  %51 = call i8* @cvmx_read_csr(i32 %50)
  %52 = bitcast %union.cvmx_pip_stat5_prtx* %13 to i8**
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @CVMX_PIP_STAT6_PRTX(i32 %53)
  %55 = call i8* @cvmx_read_csr(i32 %54)
  %56 = bitcast %union.cvmx_pip_stat6_prtx* %14 to i8**
  store i8* %55, i8** %56, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @CVMX_PIP_STAT7_PRTX(i32 %57)
  %59 = call i8* @cvmx_read_csr(i32 %58)
  %60 = bitcast %union.cvmx_pip_stat7_prtx* %15 to i8**
  store i8* %59, i8** %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @CVMX_PIP_STAT8_PRTX(i32 %61)
  %63 = call i8* @cvmx_read_csr(i32 %62)
  %64 = bitcast %union.cvmx_pip_stat8_prtx* %16 to i8**
  store i8* %63, i8** %64, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @CVMX_PIP_STAT9_PRTX(i32 %65)
  %67 = call i8* @cvmx_read_csr(i32 %66)
  %68 = bitcast %union.cvmx_pip_stat9_prtx* %17 to i8**
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @CVMX_PIP_STAT_INB_PKTSX(i32 %69)
  %71 = call i8* @cvmx_read_csr(i32 %70)
  %72 = bitcast %union.cvmx_pip_stat_inb_pktsx* %18 to i8**
  store i8* %71, i8** %72, align 8
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @CVMX_PIP_STAT_INB_OCTSX(i32 %73)
  %75 = call i8* @cvmx_read_csr(i32 %74)
  %76 = bitcast %union.cvmx_pip_stat_inb_octsx* %19 to i8**
  store i8* %75, i8** %76, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @CVMX_PIP_STAT_INB_ERRSX(i32 %77)
  %79 = call i8* @cvmx_read_csr(i32 %78)
  %80 = bitcast %union.cvmx_pip_stat_inb_errsx* %20 to i8**
  store i8* %79, i8** %80, align 8
  %81 = bitcast %union.cvmx_pip_stat0_prtx* %8 to %struct.TYPE_24__*
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 3
  store i64 %83, i64* %85, align 8
  %86 = bitcast %union.cvmx_pip_stat0_prtx* %8 to %struct.TYPE_24__*
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = bitcast %union.cvmx_pip_stat1_prtx* %9 to %struct.TYPE_25__*
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 4
  store i64 %93, i64* %95, align 8
  %96 = bitcast %union.cvmx_pip_stat2_prtx* %10 to %struct.TYPE_26__*
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 21
  store i32 %98, i32* %100, align 8
  %101 = bitcast %union.cvmx_pip_stat2_prtx* %10 to %struct.TYPE_26__*
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = bitcast %union.cvmx_pip_stat3_prtx* %11 to %struct.TYPE_27__*
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 20
  store i32 %108, i32* %110, align 4
  %111 = bitcast %union.cvmx_pip_stat3_prtx* %11 to %struct.TYPE_27__*
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 19
  store i32 %113, i32* %115, align 8
  %116 = bitcast %union.cvmx_pip_stat4_prtx* %12 to %struct.TYPE_28__*
  %117 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 18
  store i32 %118, i32* %120, align 4
  %121 = bitcast %union.cvmx_pip_stat4_prtx* %12 to %struct.TYPE_28__*
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 17
  store i32 %123, i32* %125, align 8
  %126 = bitcast %union.cvmx_pip_stat5_prtx* %13 to %struct.TYPE_29__*
  %127 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 16
  store i32 %128, i32* %130, align 4
  %131 = bitcast %union.cvmx_pip_stat5_prtx* %13 to %struct.TYPE_29__*
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 15
  store i32 %133, i32* %135, align 8
  %136 = bitcast %union.cvmx_pip_stat6_prtx* %14 to %struct.TYPE_30__*
  %137 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 14
  store i32 %138, i32* %140, align 4
  %141 = bitcast %union.cvmx_pip_stat6_prtx* %14 to %struct.TYPE_30__*
  %142 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 13
  store i32 %143, i32* %145, align 8
  %146 = bitcast %union.cvmx_pip_stat7_prtx* %15 to %struct.TYPE_31__*
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 12
  store i32 %148, i32* %150, align 4
  %151 = bitcast %union.cvmx_pip_stat7_prtx* %15 to %struct.TYPE_31__*
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %154, i32 0, i32 11
  store i32 %153, i32* %155, align 8
  %156 = bitcast %union.cvmx_pip_stat8_prtx* %16 to %struct.TYPE_17__*
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 10
  store i32 %158, i32* %160, align 4
  %161 = bitcast %union.cvmx_pip_stat8_prtx* %16 to %struct.TYPE_17__*
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 9
  store i32 %163, i32* %165, align 8
  %166 = bitcast %union.cvmx_pip_stat9_prtx* %17 to %struct.TYPE_18__*
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 8
  store i32 %168, i32* %170, align 4
  %171 = bitcast %union.cvmx_pip_stat9_prtx* %17 to %struct.TYPE_18__*
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 7
  store i32 %173, i32* %175, align 8
  %176 = bitcast %union.cvmx_pip_stat_inb_pktsx* %18 to %struct.TYPE_19__*
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = bitcast %union.cvmx_pip_stat_inb_octsx* %19 to %struct.TYPE_20__*
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 5
  store i32 %183, i32* %185, align 8
  %186 = bitcast %union.cvmx_pip_stat_inb_errsx* %20 to %struct.TYPE_21__*
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 6
  store i32 %188, i32* %190, align 4
  %191 = call i64 (...) @cvmx_octeon_is_pass1()
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %248

193:                                              ; preds = %3
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp sgt i32 %196, %199
  br i1 %200, label %201, label %211

201:                                              ; preds = %193
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = sub nsw i32 %204, %207
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  br label %214

211:                                              ; preds = %193
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 0
  store i32 0, i32* %213, align 8
  br label %214

214:                                              ; preds = %211, %201
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = mul nsw i32 %220, 4
  %222 = sub nsw i32 %217, %221
  %223 = sext i32 %222 to i64
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 4
  %226 = load i64, i64* %225, align 8
  %227 = icmp sgt i64 %223, %226
  br i1 %227, label %228, label %244

228:                                              ; preds = %214
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = mul nsw i32 %234, 4
  %236 = sub nsw i32 %231, %235
  %237 = sext i32 %236 to i64
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = sub nsw i64 %237, %240
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 3
  store i64 %241, i64* %243, align 8
  br label %247

244:                                              ; preds = %214
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 3
  store i64 0, i64* %246, align 8
  br label %247

247:                                              ; preds = %244, %228
  br label %248

248:                                              ; preds = %247, %3
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_PIP_STAT0_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT1_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT2_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT3_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT4_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT5_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT6_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT7_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT8_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT9_PRTX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT_INB_PKTSX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT_INB_OCTSX(i32) #1

declare dso_local i32 @CVMX_PIP_STAT_INB_ERRSX(i32) #1

declare dso_local i64 @cvmx_octeon_is_pass1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

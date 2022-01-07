; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-board.c___cvmx_helper_board_link_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-board.c___cvmx_helper_board_link_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%union.cvmx_gmxx_rxx_rx_inbnd = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }

@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN58XX = common dso_local global i32 0, align 4
@OCTEON_CN50XX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cvmx_helper_board_link_get(%struct.TYPE_9__* noalias sret %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.cvmx_gmxx_rxx_rx_inbnd, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %1, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br i1 true, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  call void @cvmx_override_board_link_get(%struct.TYPE_9__* sret %0, i32 %14)
  br label %252

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = call %struct.TYPE_10__* (...) @cvmx_sysinfo_get()
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %72 [
    i32 128, label %20
    i32 129, label %29
    i32 132, label %29
    i32 133, label %29
    i32 131, label %29
    i32 130, label %42
    i32 134, label %56
  ]

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 2
  store i32 1000, i32* %26, align 8
  %27 = bitcast %struct.TYPE_9__* %0 to i8*
  %28 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false)
  br label %252

29:                                               ; preds = %15, %15, %15, %15
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  store i32 1000, i32* %38, align 8
  %39 = bitcast %struct.TYPE_9__* %0 to i8*
  %40 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 24, i1 false)
  br label %252

41:                                               ; preds = %29
  br label %72

42:                                               ; preds = %15
  %43 = load i32, i32* %3, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store i32 1000, i32* %51, align 8
  %52 = bitcast %struct.TYPE_9__* %0 to i8*
  %53 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 24, i1 false)
  br label %252

54:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %55

55:                                               ; preds = %54
  br label %72

56:                                               ; preds = %15
  %57 = load i32, i32* %3, align 4
  %58 = icmp eq i32 %57, 2
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = bitcast %struct.TYPE_9__* %0 to i8*
  %62 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %61, i8* align 8 %62, i64 24, i1 false)
  br label %252

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 2
  store i32 1000, i32* %69, align 8
  %70 = bitcast %struct.TYPE_9__* %0 to i8*
  %71 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 24, i1 false)
  br label %252

72:                                               ; preds = %15, %55, %41
  %73 = load i32, i32* %3, align 4
  %74 = call i32 @cvmx_helper_board_get_mii_address(i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, -1
  br i1 %76, label %77, label %192

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %141

80:                                               ; preds = %77
  %81 = load i32, i32* %5, align 4
  %82 = ashr i32 %81, 8
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, 255
  %85 = call i32 @cvmx_mdio_read(i32 %82, i32 %84, i32 25)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = ashr i32 %86, 8
  %88 = and i32 %87, 7
  switch i32 %88, label %140 [
    i32 0, label %89
    i32 1, label %91
    i32 2, label %98
    i32 3, label %105
    i32 4, label %112
    i32 5, label %119
    i32 6, label %126
    i32 7, label %133
  ]

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i64 0, i64* %90, align 8
  br label %140

91:                                               ; preds = %80
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 2
  store i32 10, i32* %97, align 8
  br label %140

98:                                               ; preds = %80
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store i32 1, i32* %102, align 4
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store i32 10, i32* %104, align 8
  br label %140

105:                                              ; preds = %80
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  store i32 0, i32* %109, align 4
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  store i32 100, i32* %111, align 8
  br label %140

112:                                              ; preds = %80
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 1
  store i32 1, i32* %116, align 4
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store i32 100, i32* %118, align 8
  br label %140

119:                                              ; preds = %80
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  store i32 1, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  store i32 100, i32* %125, align 8
  br label %140

126:                                              ; preds = %80
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  store i32 1, i32* %128, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 2
  store i32 1000, i32* %132, align 8
  br label %140

133:                                              ; preds = %80
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  store i32 1000, i32* %139, align 8
  br label %140

140:                                              ; preds = %80, %133, %126, %119, %112, %105, %98, %91, %89
  br label %191

141:                                              ; preds = %77
  %142 = load i32, i32* %5, align 4
  %143 = ashr i32 %142, 8
  %144 = load i32, i32* %5, align 4
  %145 = and i32 %144, 255
  %146 = call i32 @cvmx_mdio_read(i32 %143, i32 %145, i32 17)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = and i32 %147, 2048
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %141
  %151 = load i32, i32* %5, align 4
  %152 = ashr i32 %151, 8
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %153, 255
  %155 = call i32 @cvmx_mdio_read(i32 %152, i32 %154, i32 0)
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  %157 = and i32 %156, 4096
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %150
  %160 = load i32, i32* %8, align 4
  %161 = or i32 %160, 2048
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %159, %150
  br label %163

163:                                              ; preds = %162, %141
  %164 = load i32, i32* %8, align 4
  %165 = and i32 %164, 2048
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  store i32 1, i32* %169, align 8
  %170 = load i32, i32* %8, align 4
  %171 = ashr i32 %170, 13
  %172 = and i32 %171, 1
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 1
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* %8, align 4
  %176 = ashr i32 %175, 14
  %177 = and i32 %176, 3
  switch i32 %177, label %189 [
    i32 0, label %178
    i32 1, label %181
    i32 2, label %184
    i32 3, label %187
  ]

178:                                              ; preds = %167
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 2
  store i32 10, i32* %180, align 8
  br label %189

181:                                              ; preds = %167
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 2
  store i32 100, i32* %183, align 8
  br label %189

184:                                              ; preds = %167
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 2
  store i32 1000, i32* %186, align 8
  br label %189

187:                                              ; preds = %167
  %188 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i64 0, i64* %188, align 8
  br label %189

189:                                              ; preds = %167, %187, %184, %181, %178
  br label %190

190:                                              ; preds = %189, %163
  br label %191

191:                                              ; preds = %190, %140
  br label %242

192:                                              ; preds = %72
  %193 = load i32, i32* @OCTEON_CN3XXX, align 4
  %194 = call i64 @OCTEON_IS_MODEL(i32 %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %204, label %196

196:                                              ; preds = %192
  %197 = load i32, i32* @OCTEON_CN58XX, align 4
  %198 = call i64 @OCTEON_IS_MODEL(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* @OCTEON_CN50XX, align 4
  %202 = call i64 @OCTEON_IS_MODEL(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %239

204:                                              ; preds = %200, %196, %192
  %205 = load i32, i32* %3, align 4
  %206 = call i32 @cvmx_helper_get_interface_num(i32 %205)
  store i32 %206, i32* %11, align 4
  %207 = load i32, i32* %3, align 4
  %208 = call i32 @cvmx_helper_get_interface_index_num(i32 %207)
  store i32 %208, i32* %12, align 4
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* %11, align 4
  %211 = call i32 @CVMX_GMXX_RXX_RX_INBND(i32 %209, i32 %210)
  %212 = call i32 @cvmx_read_csr(i32 %211)
  %213 = bitcast %union.cvmx_gmxx_rxx_rx_inbnd* %10 to i32*
  store i32 %212, i32* %213, align 4
  %214 = bitcast %union.cvmx_gmxx_rxx_rx_inbnd* %10 to %struct.TYPE_7__*
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  store i32 %216, i32* %218, align 8
  %219 = bitcast %union.cvmx_gmxx_rxx_rx_inbnd* %10 to %struct.TYPE_7__*
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 1
  store i32 %221, i32* %223, align 4
  %224 = bitcast %union.cvmx_gmxx_rxx_rx_inbnd* %10 to %struct.TYPE_7__*
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  switch i32 %226, label %238 [
    i32 0, label %227
    i32 1, label %230
    i32 2, label %233
    i32 3, label %236
  ]

227:                                              ; preds = %204
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 2
  store i32 10, i32* %229, align 8
  br label %238

230:                                              ; preds = %204
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 2
  store i32 100, i32* %232, align 8
  br label %238

233:                                              ; preds = %204
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 2
  store i32 1000, i32* %235, align 8
  br label %238

236:                                              ; preds = %204
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i64 0, i64* %237, align 8
  br label %238

238:                                              ; preds = %204, %236, %233, %230, %227
  br label %241

239:                                              ; preds = %200
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i64 0, i64* %240, align 8
  br label %241

241:                                              ; preds = %239, %238
  br label %242

242:                                              ; preds = %241, %191
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %249, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i64 0, i64* %248, align 8
  br label %249

249:                                              ; preds = %247, %242
  %250 = bitcast %struct.TYPE_9__* %0 to i8*
  %251 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %250, i8* align 8 %251, i64 24, i1 false)
  br label %252

252:                                              ; preds = %249, %63, %59, %45, %32, %20, %13
  ret void
}

declare dso_local void @cvmx_override_board_link_get(%struct.TYPE_9__* sret, i32) #1

declare dso_local %struct.TYPE_10__* @cvmx_sysinfo_get(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cvmx_helper_board_get_mii_address(i32) #1

declare dso_local i32 @cvmx_mdio_read(i32, i32, i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_num(i32) #1

declare dso_local i32 @cvmx_helper_get_interface_index_num(i32) #1

declare dso_local i32 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_GMXX_RXX_RX_INBND(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

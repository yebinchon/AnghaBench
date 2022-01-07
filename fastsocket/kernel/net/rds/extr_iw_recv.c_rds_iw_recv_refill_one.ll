; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_recv_refill_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_iw_recv.c_rds_iw_recv_refill_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_connection = type { i32, %struct.rds_iw_connection* }
%struct.rds_iw_connection = type { %struct.TYPE_8__, %struct.rds_iw_recv_work*, i8*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.rds_iw_recv_work = type { %struct.TYPE_7__*, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64, i32*, i8*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ib_sge = type { i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@rds_iw_allocation = common dso_local global i32 0, align 4
@rds_iw_sysctl_max_recv_allocation = common dso_local global i32 0, align 4
@s_iw_rx_alloc_limit = common dso_local global i32 0, align 4
@rds_iw_incoming_slab = common dso_local global i32 0, align 4
@rds_iw_frag_slab = common dso_local global i32 0, align 4
@RDS_FRAG_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@RDS_PAGE_LAST_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_connection*, %struct.rds_iw_recv_work*, i32, i32)* @rds_iw_recv_refill_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_iw_recv_refill_one(%struct.rds_connection* %0, %struct.rds_iw_recv_work* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rds_connection*, align 8
  %6 = alloca %struct.rds_iw_recv_work*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rds_iw_connection*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.ib_sge*, align 8
  %12 = alloca i32, align 4
  store %struct.rds_connection* %0, %struct.rds_connection** %5, align 8
  store %struct.rds_iw_recv_work* %1, %struct.rds_iw_recv_work** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %14 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %13, i32 0, i32 1
  %15 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %14, align 8
  store %struct.rds_iw_connection* %15, %struct.rds_iw_connection** %9, align 8
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %12, align 4
  %18 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %19 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %57, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @rds_iw_sysctl_max_recv_allocation, align 4
  %24 = call i32 @atomic_add_unless(i32* @rds_iw_allocation, i32 1, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @s_iw_rx_alloc_limit, align 4
  %28 = call i32 @rds_iw_stats_inc(i32 %27)
  br label %220

29:                                               ; preds = %22
  %30 = load i32, i32* @rds_iw_incoming_slab, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i8* @kmem_cache_alloc(i32 %30, i32 %31)
  %33 = bitcast i8* %32 to %struct.TYPE_5__*
  %34 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %35 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %34, i32 0, i32 2
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %35, align 8
  %36 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %37 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %29
  %41 = call i32 @atomic_dec(i32* @rds_iw_allocation)
  br label %220

42:                                               ; preds = %29
  %43 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %44 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %43, i32 0, i32 2
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = call i32 @INIT_LIST_HEAD(i32* %46)
  %48 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %49 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %53 = load %struct.rds_connection*, %struct.rds_connection** %5, align 8
  %54 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @rds_inc_init(i32* %51, %struct.rds_connection* %52, i32 %55)
  br label %57

57:                                               ; preds = %42, %4
  %58 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %59 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = icmp ne %struct.TYPE_7__* %60, null
  br i1 %61, label %84, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @rds_iw_frag_slab, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i8* @kmem_cache_alloc(i32 %63, i32 %64)
  %66 = bitcast i8* %65 to %struct.TYPE_7__*
  %67 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %68 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %67, i32 0, i32 0
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %68, align 8
  %69 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %70 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = icmp ne %struct.TYPE_7__* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %62
  br label %220

74:                                               ; preds = %62
  %75 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %76 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  %80 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %81 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  store i32* null, i32** %83, align 8
  br label %84

84:                                               ; preds = %74, %57
  %85 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %86 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %106, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %8, align 4
  %92 = call i32* @alloc_page(i32 %91)
  %93 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %94 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  store i32* %92, i32** %95, align 8
  %96 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %97 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %90
  br label %220

102:                                              ; preds = %90
  %103 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %104 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %102, %84
  %107 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %108 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %107, i32 0, i32 3
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %113 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %117 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i32, i32* @RDS_FRAG_SIZE, align 4
  %121 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %122 = call i8* @ib_dma_map_page(i32 %111, i32* %115, i64 %119, i32 %120, i32 %121)
  store i8* %122, i8** %10, align 8
  %123 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %124 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %123, i32 0, i32 3
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i8*, i8** %10, align 8
  %129 = call i64 @ib_dma_mapping_error(i32 %127, i8* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %106
  br label %220

132:                                              ; preds = %106
  %133 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %134 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %138 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store i32* %136, i32** %140, align 8
  %141 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %142 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %146 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  store i64 %144, i64* %148, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %151 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 2
  store i8* %149, i8** %153, align 8
  %154 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %155 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %156 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call %struct.ib_sge* @rds_iw_data_sge(%struct.rds_iw_connection* %154, i32 %157)
  store %struct.ib_sge* %158, %struct.ib_sge** %11, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = load %struct.ib_sge*, %struct.ib_sge** %11, align 8
  %161 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* @RDS_FRAG_SIZE, align 4
  %163 = load %struct.ib_sge*, %struct.ib_sge** %11, align 8
  %164 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 8
  %165 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %166 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %167 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = call %struct.ib_sge* @rds_iw_header_sge(%struct.rds_iw_connection* %165, i32 %168)
  store %struct.ib_sge* %169, %struct.ib_sge** %11, align 8
  %170 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %171 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %170, i32 0, i32 2
  %172 = load i8*, i8** %171, align 8
  %173 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %174 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %175 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %174, i32 0, i32 1
  %176 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %175, align 8
  %177 = ptrtoint %struct.rds_iw_recv_work* %173 to i64
  %178 = ptrtoint %struct.rds_iw_recv_work* %176 to i64
  %179 = sub i64 %177, %178
  %180 = sdiv exact i64 %179, 24
  %181 = mul i64 %180, 4
  %182 = getelementptr i8, i8* %172, i64 %181
  %183 = load %struct.ib_sge*, %struct.ib_sge** %11, align 8
  %184 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %183, i32 0, i32 1
  store i8* %182, i8** %184, align 8
  %185 = load %struct.ib_sge*, %struct.ib_sge** %11, align 8
  %186 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %185, i32 0, i32 0
  store i32 4, i32* %186, align 8
  %187 = load %struct.rds_iw_recv_work*, %struct.rds_iw_recv_work** %6, align 8
  %188 = getelementptr inbounds %struct.rds_iw_recv_work, %struct.rds_iw_recv_work* %187, i32 0, i32 0
  %189 = load %struct.TYPE_7__*, %struct.TYPE_7__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 1
  %191 = load i32*, i32** %190, align 8
  %192 = call i32 @get_page(i32* %191)
  %193 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %194 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @RDS_PAGE_LAST_OFF, align 8
  %198 = icmp slt i64 %196, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %132
  %200 = load i32, i32* @RDS_FRAG_SIZE, align 4
  %201 = sext i32 %200 to i64
  %202 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %203 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, %201
  store i64 %206, i64* %204, align 8
  br label %219

207:                                              ; preds = %132
  %208 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %209 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = call i32 @put_page(i32* %211)
  %213 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %214 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  store i32* null, i32** %215, align 8
  %216 = load %struct.rds_iw_connection*, %struct.rds_iw_connection** %9, align 8
  %217 = getelementptr inbounds %struct.rds_iw_connection, %struct.rds_iw_connection* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  store i64 0, i64* %218, align 8
  br label %219

219:                                              ; preds = %207, %199
  store i32 0, i32* %12, align 4
  br label %220

220:                                              ; preds = %219, %131, %101, %73, %40, %26
  %221 = load i32, i32* %12, align 4
  ret i32 %221
}

declare dso_local i32 @atomic_add_unless(i32*, i32, i32) #1

declare dso_local i32 @rds_iw_stats_inc(i32) #1

declare dso_local i8* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rds_inc_init(i32*, %struct.rds_connection*, i32) #1

declare dso_local i32* @alloc_page(i32) #1

declare dso_local i8* @ib_dma_map_page(i32, i32*, i64, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i8*) #1

declare dso_local %struct.ib_sge* @rds_iw_data_sge(%struct.rds_iw_connection*, i32) #1

declare dso_local %struct.ib_sge* @rds_iw_header_sge(%struct.rds_iw_connection*, i32) #1

declare dso_local i32 @get_page(i32*) #1

declare dso_local i32 @put_page(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

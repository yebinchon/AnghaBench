; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_rdma.c_rds_cmsg_atomic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_rdma.c_rds_cmsg_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_sock = type { i64 }
%struct.rds_message = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_17__*, i64, i32, i64, i32, %struct.TYPE_14__, i8*, %struct.TYPE_11__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.cmsghdr = type { i64, i32 }
%struct.page = type { i32 }
%struct.rds_atomic_args = type { i32, i32, i32, i64, i32, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RDS_ATOMIC_TYPE_FADD = common dso_local global i8* null, align 8
@RDS_ATOMIC_TYPE_CSWP = common dso_local global i8* null, align 8
@RDS_RDMA_NOTIFY_ME = common dso_local global i32 0, align 4
@RDS_RDMA_SILENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RDS_RDMA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_cmsg_atomic(%struct.rds_sock* %0, %struct.rds_message* %1, %struct.cmsghdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_sock*, align 8
  %6 = alloca %struct.rds_message*, align 8
  %7 = alloca %struct.cmsghdr*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.rds_atomic_args*, align 8
  %10 = alloca i32, align 4
  store %struct.rds_sock* %0, %struct.rds_sock** %5, align 8
  store %struct.rds_message* %1, %struct.rds_message** %6, align 8
  store %struct.cmsghdr* %2, %struct.cmsghdr** %7, align 8
  store %struct.page* null, %struct.page** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %12 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @CMSG_LEN(i32 64)
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %3
  %17 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %18 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %285

25:                                               ; preds = %16
  %26 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %27 = call %struct.rds_atomic_args* @CMSG_DATA(%struct.cmsghdr* %26)
  store %struct.rds_atomic_args* %27, %struct.rds_atomic_args** %9, align 8
  %28 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %29 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %135 [
    i32 130, label %31
    i32 128, label %48
    i32 131, label %69
    i32 129, label %98
  ]

31:                                               ; preds = %25
  %32 = load i8*, i8** @RDS_ATOMIC_TYPE_FADD, align 8
  %33 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %34 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 9
  store i8* %32, i8** %35, align 8
  %36 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %37 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %36, i32 0, i32 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %41 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 10
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %45 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 10
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %137

48:                                               ; preds = %25
  %49 = load i8*, i8** @RDS_ATOMIC_TYPE_FADD, align 8
  %50 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %51 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 9
  store i8* %49, i8** %52, align 8
  %53 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %54 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %53, i32 0, i32 7
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %58 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 10
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  store i32 %56, i32* %60, align 4
  %61 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %62 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %66 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 10
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  br label %137

69:                                               ; preds = %25
  %70 = load i8*, i8** @RDS_ATOMIC_TYPE_CSWP, align 8
  %71 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %72 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 9
  store i8* %70, i8** %73, align 8
  %74 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %75 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %74, i32 0, i32 6
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %79 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 3
  store i32 %77, i32* %81, align 4
  %82 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %83 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %87 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  store i32 %85, i32* %89, align 4
  %90 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %91 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  store i32 -1, i32* %93, align 4
  %94 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %95 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 0
  store i32 -1, i32* %97, align 4
  br label %137

98:                                               ; preds = %25
  %99 = load i8*, i8** @RDS_ATOMIC_TYPE_CSWP, align 8
  %100 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %101 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 9
  store i8* %99, i8** %102, align 8
  %103 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %104 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %108 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 3
  store i32 %106, i32* %110, align 4
  %111 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %112 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %116 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  store i32 %114, i32* %118, align 4
  %119 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %120 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %124 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  store i32 %122, i32* %126, align 4
  %127 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %128 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %132 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  store i32 %130, i32* %134, align 4
  br label %137

135:                                              ; preds = %25
  %136 = call i32 (...) @BUG()
  br label %137

137:                                              ; preds = %135, %98, %69, %48, %31
  %138 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %139 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @RDS_RDMA_NOTIFY_ME, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  %144 = xor i1 %143, true
  %145 = xor i1 %144, true
  %146 = zext i1 %145 to i32
  %147 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %148 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 4
  %150 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %151 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @RDS_RDMA_SILENT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  %156 = xor i1 %155, true
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %160 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 2
  store i32 %158, i32* %161, align 8
  %162 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %163 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  %165 = load %struct.rds_sock*, %struct.rds_sock** %5, align 8
  %166 = getelementptr inbounds %struct.rds_sock, %struct.rds_sock* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %169 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 6
  store i64 %167, i64* %170, align 8
  %171 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %172 = call i32 @rds_message_alloc_sgs(%struct.rds_message* %171, i32 1)
  %173 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %174 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 7
  store i32 %172, i32* %175, align 8
  %176 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %177 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %137
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %10, align 4
  br label %272

184:                                              ; preds = %137
  %185 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %186 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 7
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %184
  %191 = load i32, i32* @EFAULT, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %10, align 4
  br label %272

193:                                              ; preds = %184
  %194 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %195 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @rds_pin_pages(i32 %196, i32 1, %struct.page** %8, i32 1)
  store i32 %197, i32* %10, align 4
  %198 = load i32, i32* %10, align 4
  %199 = icmp ne i32 %198, 1
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %272

201:                                              ; preds = %193
  store i32 0, i32* %10, align 4
  %202 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %203 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.page*, %struct.page** %8, align 8
  %207 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %208 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @offset_in_page(i32 %209)
  %211 = call i32 @sg_set_page(i32 %205, %struct.page* %206, i32 8, i32 %210)
  %212 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %213 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %223, label %217

217:                                              ; preds = %201
  %218 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %219 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %219, i32 0, i32 6
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %252

223:                                              ; preds = %217, %201
  %224 = load i32, i32* @GFP_KERNEL, align 4
  %225 = call %struct.TYPE_17__* @kmalloc(i32 8, i32 %224)
  %226 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %227 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 3
  store %struct.TYPE_17__* %225, %struct.TYPE_17__** %228, align 8
  %229 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %230 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 3
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %231, align 8
  %233 = icmp ne %struct.TYPE_17__* %232, null
  br i1 %233, label %237, label %234

234:                                              ; preds = %223
  %235 = load i32, i32* @ENOMEM, align 4
  %236 = sub nsw i32 0, %235
  store i32 %236, i32* %10, align 4
  br label %272

237:                                              ; preds = %223
  %238 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %239 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %238, i32 0, i32 4
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %242 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 3
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 1
  store i32 %240, i32* %245, align 4
  %246 = load i32, i32* @RDS_RDMA_SUCCESS, align 4
  %247 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %248 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 3
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  store i32 %246, i32* %251, align 4
  br label %252

252:                                              ; preds = %237, %217
  %253 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %254 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @rds_rdma_cookie_key(i32 %255)
  %257 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %258 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 5
  store i32 %256, i32* %259, align 8
  %260 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %261 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = load %struct.rds_atomic_args*, %struct.rds_atomic_args** %9, align 8
  %264 = getelementptr inbounds %struct.rds_atomic_args, %struct.rds_atomic_args* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = call i64 @rds_rdma_cookie_offset(i32 %265)
  %267 = add nsw i64 %262, %266
  %268 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %269 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 4
  store i64 %267, i64* %270, align 8
  %271 = load i32, i32* %10, align 4
  store i32 %271, i32* %4, align 4
  br label %285

272:                                              ; preds = %234, %200, %190, %181
  %273 = load %struct.page*, %struct.page** %8, align 8
  %274 = icmp ne %struct.page* %273, null
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = load %struct.page*, %struct.page** %8, align 8
  %277 = call i32 @put_page(%struct.page* %276)
  br label %278

278:                                              ; preds = %275, %272
  %279 = load %struct.rds_message*, %struct.rds_message** %6, align 8
  %280 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %280, i32 0, i32 3
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %281, align 8
  %283 = call i32 @kfree(%struct.TYPE_17__* %282)
  %284 = load i32, i32* %10, align 4
  store i32 %284, i32* %4, align 4
  br label %285

285:                                              ; preds = %278, %252, %22
  %286 = load i32, i32* %4, align 4
  ret i32 %286
}

declare dso_local i64 @CMSG_LEN(i32) #1

declare dso_local %struct.rds_atomic_args* @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @rds_message_alloc_sgs(%struct.rds_message*, i32) #1

declare dso_local i32 @rds_pin_pages(i32, i32, %struct.page**, i32) #1

declare dso_local i32 @sg_set_page(i32, %struct.page*, i32, i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local %struct.TYPE_17__* @kmalloc(i32, i32) #1

declare dso_local i32 @rds_rdma_cookie_key(i32) #1

declare dso_local i64 @rds_rdma_cookie_offset(i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @kfree(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

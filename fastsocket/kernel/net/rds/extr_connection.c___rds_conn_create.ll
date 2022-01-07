; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_connection.c___rds_conn_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rds/extr_connection.c___rds_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_transport = type { i32 (%struct.rds_connection.0*, i32)*, i8*, i32 (i32)*, i64 }
%struct.rds_connection.0 = type opaque
%struct.rds_connection = type { i32, i32, i32, i32, %struct.rds_connection*, i64, i32, i32, i32, i32, i32, i64, i32, %struct.rds_transport*, i32, i32, i32, i32, i8*, i8* }
%struct.hlist_head = type { i32 }

@rds_loop_transport = common dso_local global %struct.rds_transport zeroinitializer, align 8
@rds_conn_slab = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RDS_CONN_DOWN = common dso_local global i32 0, align 4
@rds_send_worker = common dso_local global i32 0, align 4
@rds_recv_worker = common dso_local global i32 0, align 4
@rds_connect_worker = common dso_local global i32 0, align 4
@rds_shutdown_worker = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"allocated conn %p for %pI4 -> %pI4 over %s %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"[unknown]\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"(outgoing)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@rds_conn_lock = common dso_local global i32 0, align 4
@rds_conn_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rds_connection* (i8*, i8*, %struct.rds_transport*, i32, i32)* @__rds_conn_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rds_connection* @__rds_conn_create(i8* %0, i8* %1, %struct.rds_transport* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rds_transport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.rds_connection*, align 8
  %12 = alloca %struct.rds_connection*, align 8
  %13 = alloca %struct.hlist_head*, align 8
  %14 = alloca %struct.rds_transport*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.rds_connection*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.rds_transport* %2, %struct.rds_transport** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store %struct.rds_connection* null, %struct.rds_connection** %12, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call %struct.hlist_head* @rds_conn_bucket(i8* %18, i8* %19)
  store %struct.hlist_head* %20, %struct.hlist_head** %13, align 8
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.hlist_head*, %struct.hlist_head** %13, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.rds_transport*, %struct.rds_transport** %8, align 8
  %26 = call %struct.rds_connection* @rds_conn_lookup(%struct.hlist_head* %22, i8* %23, i8* %24, %struct.rds_transport* %25)
  store %struct.rds_connection* %26, %struct.rds_connection** %11, align 8
  %27 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %28 = icmp ne %struct.rds_connection* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %5
  %30 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %31 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %36 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %35, i32 0, i32 13
  %37 = load %struct.rds_transport*, %struct.rds_transport** %36, align 8
  %38 = icmp ne %struct.rds_transport* %37, @rds_loop_transport
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  store %struct.rds_connection* %43, %struct.rds_connection** %12, align 8
  %44 = load %struct.rds_connection*, %struct.rds_connection** %12, align 8
  %45 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %44, i32 0, i32 4
  %46 = load %struct.rds_connection*, %struct.rds_connection** %45, align 8
  store %struct.rds_connection* %46, %struct.rds_connection** %11, align 8
  br label %47

47:                                               ; preds = %42, %39, %34, %29, %5
  %48 = call i32 (...) @rcu_read_unlock()
  %49 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %50 = icmp ne %struct.rds_connection* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %244

52:                                               ; preds = %47
  %53 = load i32, i32* @rds_conn_slab, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call %struct.rds_connection* @kmem_cache_zalloc(i32 %53, i32 %54)
  store %struct.rds_connection* %55, %struct.rds_connection** %11, align 8
  %56 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %57 = icmp ne %struct.rds_connection* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.rds_connection* @ERR_PTR(i32 %60)
  store %struct.rds_connection* %61, %struct.rds_connection** %11, align 8
  br label %244

62:                                               ; preds = %52
  %63 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %64 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %63, i32 0, i32 2
  %65 = call i32 @INIT_HLIST_NODE(i32* %64)
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %68 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %67, i32 0, i32 19
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %71 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %70, i32 0, i32 18
  store i8* %69, i8** %71, align 8
  %72 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %73 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %72, i32 0, i32 17
  %74 = call i32 @spin_lock_init(i32* %73)
  %75 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %76 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %75, i32 0, i32 1
  store i32 1, i32* %76, align 4
  %77 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %78 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %77, i32 0, i32 16
  %79 = call i32 @init_waitqueue_head(i32* %78)
  %80 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %81 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %80, i32 0, i32 15
  %82 = call i32 @INIT_LIST_HEAD(i32* %81)
  %83 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %84 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %83, i32 0, i32 14
  %85 = call i32 @INIT_LIST_HEAD(i32* %84)
  %86 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %87 = call i32 @rds_cong_get_maps(%struct.rds_connection* %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %62
  %91 = load i32, i32* @rds_conn_slab, align 4
  %92 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %93 = call i32 @kmem_cache_free(i32 %91, %struct.rds_connection* %92)
  %94 = load i32, i32* %16, align 4
  %95 = call %struct.rds_connection* @ERR_PTR(i32 %94)
  store %struct.rds_connection* %95, %struct.rds_connection** %11, align 8
  br label %244

96:                                               ; preds = %62
  %97 = load i8*, i8** %7, align 8
  %98 = call %struct.rds_transport* @rds_trans_get_preferred(i8* %97)
  store %struct.rds_transport* %98, %struct.rds_transport** %14, align 8
  %99 = load %struct.rds_transport*, %struct.rds_transport** %14, align 8
  %100 = icmp ne %struct.rds_transport* %99, null
  br i1 %100, label %101, label %115

101:                                              ; preds = %96
  %102 = load %struct.rds_transport*, %struct.rds_transport** %14, align 8
  %103 = call i32 @rds_trans_put(%struct.rds_transport* %102)
  %104 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %105 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %101
  %109 = load %struct.rds_transport*, %struct.rds_transport** %8, align 8
  %110 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  store %struct.rds_transport* @rds_loop_transport, %struct.rds_transport** %8, align 8
  br label %114

114:                                              ; preds = %113, %108, %101
  br label %115

115:                                              ; preds = %114, %96
  %116 = load %struct.rds_transport*, %struct.rds_transport** %8, align 8
  %117 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %118 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %117, i32 0, i32 13
  store %struct.rds_transport* %116, %struct.rds_transport** %118, align 8
  %119 = load %struct.rds_transport*, %struct.rds_transport** %8, align 8
  %120 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %119, i32 0, i32 0
  %121 = load i32 (%struct.rds_connection.0*, i32)*, i32 (%struct.rds_connection.0*, i32)** %120, align 8
  %122 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %123 = bitcast %struct.rds_connection* %122 to %struct.rds_connection.0*
  %124 = load i32, i32* %9, align 4
  %125 = call i32 %121(%struct.rds_connection.0* %123, i32 %124)
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %16, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %115
  %129 = load i32, i32* @rds_conn_slab, align 4
  %130 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %131 = call i32 @kmem_cache_free(i32 %129, %struct.rds_connection* %130)
  %132 = load i32, i32* %16, align 4
  %133 = call %struct.rds_connection* @ERR_PTR(i32 %132)
  store %struct.rds_connection* %133, %struct.rds_connection** %11, align 8
  br label %244

134:                                              ; preds = %115
  %135 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %136 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %135, i32 0, i32 12
  %137 = load i32, i32* @RDS_CONN_DOWN, align 4
  %138 = call i32 @atomic_set(i32* %136, i32 %137)
  %139 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %140 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %139, i32 0, i32 11
  store i64 0, i64* %140, align 8
  %141 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %142 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %141, i32 0, i32 10
  %143 = load i32, i32* @rds_send_worker, align 4
  %144 = call i32 @INIT_DELAYED_WORK(i32* %142, i32 %143)
  %145 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %146 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %145, i32 0, i32 9
  %147 = load i32, i32* @rds_recv_worker, align 4
  %148 = call i32 @INIT_DELAYED_WORK(i32* %146, i32 %147)
  %149 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %150 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %149, i32 0, i32 8
  %151 = load i32, i32* @rds_connect_worker, align 4
  %152 = call i32 @INIT_DELAYED_WORK(i32* %150, i32 %151)
  %153 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %154 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %153, i32 0, i32 7
  %155 = load i32, i32* @rds_shutdown_worker, align 4
  %156 = call i32 @INIT_WORK(i32* %154, i32 %155)
  %157 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %158 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %157, i32 0, i32 6
  %159 = call i32 @mutex_init(i32* %158)
  %160 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %161 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %160, i32 0, i32 5
  store i64 0, i64* %161, align 8
  %162 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %163 = load %struct.rds_transport*, %struct.rds_transport** %8, align 8
  %164 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %171

167:                                              ; preds = %134
  %168 = load %struct.rds_transport*, %struct.rds_transport** %8, align 8
  %169 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %168, i32 0, i32 1
  %170 = load i8*, i8** %169, align 8
  br label %172

171:                                              ; preds = %134
  br label %172

172:                                              ; preds = %171, %167
  %173 = phi i8* [ %170, %167 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %171 ]
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %178 = call i32 @rdsdebug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), %struct.rds_connection* %162, i8** %6, i8** %7, i8* %173, i8* %177)
  %179 = load i64, i64* %15, align 8
  %180 = call i32 @spin_lock_irqsave(i32* @rds_conn_lock, i64 %179)
  %181 = load %struct.rds_connection*, %struct.rds_connection** %12, align 8
  %182 = icmp ne %struct.rds_connection* %181, null
  br i1 %182, label %183, label %211

183:                                              ; preds = %172
  %184 = load %struct.rds_connection*, %struct.rds_connection** %12, align 8
  %185 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %184, i32 0, i32 4
  %186 = load %struct.rds_connection*, %struct.rds_connection** %185, align 8
  %187 = icmp ne %struct.rds_connection* %186, null
  br i1 %187, label %188, label %202

188:                                              ; preds = %183
  %189 = load %struct.rds_transport*, %struct.rds_transport** %8, align 8
  %190 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %189, i32 0, i32 2
  %191 = load i32 (i32)*, i32 (i32)** %190, align 8
  %192 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %193 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i32 %191(i32 %194)
  %196 = load i32, i32* @rds_conn_slab, align 4
  %197 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %198 = call i32 @kmem_cache_free(i32 %196, %struct.rds_connection* %197)
  %199 = load %struct.rds_connection*, %struct.rds_connection** %12, align 8
  %200 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %199, i32 0, i32 4
  %201 = load %struct.rds_connection*, %struct.rds_connection** %200, align 8
  store %struct.rds_connection* %201, %struct.rds_connection** %11, align 8
  br label %210

202:                                              ; preds = %183
  %203 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %204 = load %struct.rds_connection*, %struct.rds_connection** %12, align 8
  %205 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %204, i32 0, i32 4
  store %struct.rds_connection* %203, %struct.rds_connection** %205, align 8
  %206 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %207 = call i32 @rds_cong_add_conn(%struct.rds_connection* %206)
  %208 = load i32, i32* @rds_conn_count, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* @rds_conn_count, align 4
  br label %210

210:                                              ; preds = %202, %188
  br label %241

211:                                              ; preds = %172
  %212 = load %struct.hlist_head*, %struct.hlist_head** %13, align 8
  %213 = load i8*, i8** %6, align 8
  %214 = load i8*, i8** %7, align 8
  %215 = load %struct.rds_transport*, %struct.rds_transport** %8, align 8
  %216 = call %struct.rds_connection* @rds_conn_lookup(%struct.hlist_head* %212, i8* %213, i8* %214, %struct.rds_transport* %215)
  store %struct.rds_connection* %216, %struct.rds_connection** %17, align 8
  %217 = load %struct.rds_connection*, %struct.rds_connection** %17, align 8
  %218 = icmp ne %struct.rds_connection* %217, null
  br i1 %218, label %219, label %231

219:                                              ; preds = %211
  %220 = load %struct.rds_transport*, %struct.rds_transport** %8, align 8
  %221 = getelementptr inbounds %struct.rds_transport, %struct.rds_transport* %220, i32 0, i32 2
  %222 = load i32 (i32)*, i32 (i32)** %221, align 8
  %223 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %224 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call i32 %222(i32 %225)
  %227 = load i32, i32* @rds_conn_slab, align 4
  %228 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %229 = call i32 @kmem_cache_free(i32 %227, %struct.rds_connection* %228)
  %230 = load %struct.rds_connection*, %struct.rds_connection** %17, align 8
  store %struct.rds_connection* %230, %struct.rds_connection** %11, align 8
  br label %240

231:                                              ; preds = %211
  %232 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %233 = getelementptr inbounds %struct.rds_connection, %struct.rds_connection* %232, i32 0, i32 2
  %234 = load %struct.hlist_head*, %struct.hlist_head** %13, align 8
  %235 = call i32 @hlist_add_head_rcu(i32* %233, %struct.hlist_head* %234)
  %236 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  %237 = call i32 @rds_cong_add_conn(%struct.rds_connection* %236)
  %238 = load i32, i32* @rds_conn_count, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* @rds_conn_count, align 4
  br label %240

240:                                              ; preds = %231, %219
  br label %241

241:                                              ; preds = %240, %210
  %242 = load i64, i64* %15, align 8
  %243 = call i32 @spin_unlock_irqrestore(i32* @rds_conn_lock, i64 %242)
  br label %244

244:                                              ; preds = %241, %128, %90, %58, %51
  %245 = load %struct.rds_connection*, %struct.rds_connection** %11, align 8
  ret %struct.rds_connection* %245
}

declare dso_local %struct.hlist_head* @rds_conn_bucket(i8*, i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.rds_connection* @rds_conn_lookup(%struct.hlist_head*, i8*, i8*, %struct.rds_transport*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local %struct.rds_connection* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.rds_connection* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @rds_cong_get_maps(%struct.rds_connection*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.rds_connection*) #1

declare dso_local %struct.rds_transport* @rds_trans_get_preferred(i8*) #1

declare dso_local i32 @rds_trans_put(%struct.rds_transport*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @rdsdebug(i8*, %struct.rds_connection*, i8**, i8**, i8*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rds_cong_add_conn(%struct.rds_connection*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, %struct.hlist_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

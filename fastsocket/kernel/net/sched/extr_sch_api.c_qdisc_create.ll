; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_api.c_qdisc_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.netdev_queue = type { i32 }
%struct.Qdisc = type { i64, i32, i32, %struct.Qdisc*, i32, i32, i8* }
%struct.nlattr = type { i32 }
%struct.Qdisc_ops = type { i32 (%struct.qdisc_size_table*, %struct.nlattr*)*, i32 (%struct.qdisc_size_table*)*, i32 }
%struct.qdisc_size_table = type { i64, i32, i32, %struct.qdisc_size_table*, i32, i32, i8* }

@TCA_KIND = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@TC_H_INGRESS = common dso_local global i8* null, align 8
@TCQ_F_INGRESS = common dso_local global i32 0, align 4
@qdisc_rx_lock = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qdisc_tx_lock = common dso_local global i32 0, align 4
@TCA_OPTIONS = common dso_local global i64 0, align 8
@TCA_STAB = common dso_local global i64 0, align 8
@TCA_RATE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@TCQ_F_MQROOT = common dso_local global i32 0, align 4
@TC_H_ROOT = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Qdisc* (%struct.net_device*, %struct.netdev_queue*, %struct.Qdisc*, i8*, i8*, %struct.nlattr**, i32*)* @qdisc_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Qdisc* @qdisc_create(%struct.net_device* %0, %struct.netdev_queue* %1, %struct.Qdisc* %2, i8* %3, i8* %4, %struct.nlattr** %5, i32* %6) #0 {
  %8 = alloca %struct.Qdisc*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.netdev_queue*, align 8
  %11 = alloca %struct.Qdisc*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.nlattr**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nlattr*, align 8
  %18 = alloca %struct.Qdisc*, align 8
  %19 = alloca %struct.Qdisc_ops*, align 8
  %20 = alloca %struct.qdisc_size_table*, align 8
  %21 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %9, align 8
  store %struct.netdev_queue* %1, %struct.netdev_queue** %10, align 8
  store %struct.Qdisc* %2, %struct.Qdisc** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store %struct.nlattr** %5, %struct.nlattr*** %14, align 8
  store i32* %6, i32** %15, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %23 = load i64, i64* @TCA_KIND, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  store %struct.nlattr* %25, %struct.nlattr** %17, align 8
  %26 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %27 = call %struct.Qdisc_ops* @qdisc_lookup_ops(%struct.nlattr* %26)
  store %struct.Qdisc_ops* %27, %struct.Qdisc_ops** %19, align 8
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %16, align 4
  %30 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %19, align 8
  %31 = icmp eq %struct.Qdisc_ops* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %7
  br label %211

33:                                               ; preds = %7
  %34 = load %struct.netdev_queue*, %struct.netdev_queue** %10, align 8
  %35 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %19, align 8
  %36 = call %struct.qdisc_size_table* @qdisc_alloc(%struct.netdev_queue* %34, %struct.Qdisc_ops* %35)
  %37 = bitcast %struct.qdisc_size_table* %36 to %struct.Qdisc*
  store %struct.Qdisc* %37, %struct.Qdisc** %18, align 8
  %38 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %39 = bitcast %struct.Qdisc* %38 to %struct.qdisc_size_table*
  %40 = call i64 @IS_ERR(%struct.qdisc_size_table* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %44 = bitcast %struct.Qdisc* %43 to %struct.qdisc_size_table*
  %45 = call i32 @PTR_ERR(%struct.qdisc_size_table* %44)
  store i32 %45, i32* %16, align 4
  br label %206

46:                                               ; preds = %33
  %47 = load i8*, i8** %12, align 8
  %48 = ptrtoint i8* %47 to i64
  %49 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %50 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i8*, i8** @TC_H_INGRESS, align 8
  %53 = icmp eq i8* %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %46
  %55 = load i32, i32* @TCQ_F_INGRESS, align 4
  %56 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %57 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load i8*, i8** @TC_H_INGRESS, align 8
  %61 = call i8* @TC_H_MAKE(i8* %60, i32 0)
  store i8* %61, i8** %13, align 8
  %62 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %63 = bitcast %struct.Qdisc* %62 to %struct.qdisc_size_table*
  %64 = call i32* @qdisc_lock(%struct.qdisc_size_table* %63)
  %65 = call i32 @lockdep_set_class(i32* %64, i32* @qdisc_rx_lock)
  br label %83

66:                                               ; preds = %46
  %67 = load i8*, i8** %13, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load %struct.net_device*, %struct.net_device** %9, align 8
  %71 = call i8* @qdisc_alloc_handle(%struct.net_device* %70)
  store i8* %71, i8** %13, align 8
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %16, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %194

77:                                               ; preds = %69
  br label %78

78:                                               ; preds = %77, %66
  %79 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %80 = bitcast %struct.Qdisc* %79 to %struct.qdisc_size_table*
  %81 = call i32* @qdisc_lock(%struct.qdisc_size_table* %80)
  %82 = call i32 @lockdep_set_class(i32* %81, i32* @qdisc_tx_lock)
  br label %83

83:                                               ; preds = %78, %54
  %84 = load i8*, i8** %13, align 8
  %85 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %86 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %85, i32 0, i32 6
  store i8* %84, i8** %86, align 8
  %87 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %19, align 8
  %88 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %87, i32 0, i32 0
  %89 = load i32 (%struct.qdisc_size_table*, %struct.nlattr*)*, i32 (%struct.qdisc_size_table*, %struct.nlattr*)** %88, align 8
  %90 = icmp ne i32 (%struct.qdisc_size_table*, %struct.nlattr*)* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %83
  %92 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %19, align 8
  %93 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %92, i32 0, i32 0
  %94 = load i32 (%struct.qdisc_size_table*, %struct.nlattr*)*, i32 (%struct.qdisc_size_table*, %struct.nlattr*)** %93, align 8
  %95 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %96 = bitcast %struct.Qdisc* %95 to %struct.qdisc_size_table*
  %97 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %98 = load i64, i64* @TCA_OPTIONS, align 8
  %99 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %97, i64 %98
  %100 = load %struct.nlattr*, %struct.nlattr** %99, align 8
  %101 = call i32 %94(%struct.qdisc_size_table* %96, %struct.nlattr* %100)
  store i32 %101, i32* %16, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %193

103:                                              ; preds = %91, %83
  %104 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %105 = load i64, i64* @TCA_STAB, align 8
  %106 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %104, i64 %105
  %107 = load %struct.nlattr*, %struct.nlattr** %106, align 8
  %108 = icmp ne %struct.nlattr* %107, null
  br i1 %108, label %109, label %126

109:                                              ; preds = %103
  %110 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %111 = load i64, i64* @TCA_STAB, align 8
  %112 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %110, i64 %111
  %113 = load %struct.nlattr*, %struct.nlattr** %112, align 8
  %114 = call %struct.qdisc_size_table* @qdisc_get_stab(%struct.nlattr* %113)
  store %struct.qdisc_size_table* %114, %struct.qdisc_size_table** %20, align 8
  %115 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %20, align 8
  %116 = call i64 @IS_ERR(%struct.qdisc_size_table* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %109
  %119 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %20, align 8
  %120 = call i32 @PTR_ERR(%struct.qdisc_size_table* %119)
  store i32 %120, i32* %16, align 4
  br label %214

121:                                              ; preds = %109
  %122 = load %struct.qdisc_size_table*, %struct.qdisc_size_table** %20, align 8
  %123 = bitcast %struct.qdisc_size_table* %122 to %struct.Qdisc*
  %124 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %125 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %124, i32 0, i32 3
  store %struct.Qdisc* %123, %struct.Qdisc** %125, align 8
  br label %126

126:                                              ; preds = %121, %103
  %127 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %128 = load i64, i64* @TCA_RATE, align 8
  %129 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %127, i64 %128
  %130 = load %struct.nlattr*, %struct.nlattr** %129, align 8
  %131 = icmp ne %struct.nlattr* %130, null
  br i1 %131, label %132, label %188

132:                                              ; preds = %126
  %133 = load i32, i32* @EOPNOTSUPP, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %16, align 4
  %135 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %136 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @TCQ_F_MQROOT, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %214

142:                                              ; preds = %132
  %143 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %144 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @TC_H_ROOT, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %169

148:                                              ; preds = %142
  %149 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %150 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @TCQ_F_INGRESS, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %169, label %155

155:                                              ; preds = %148
  %156 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %157 = icmp ne %struct.Qdisc* %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load %struct.Qdisc*, %struct.Qdisc** %11, align 8
  %160 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @TCQ_F_MQROOT, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %169, label %165

165:                                              ; preds = %158, %155
  %166 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %167 = bitcast %struct.Qdisc* %166 to %struct.qdisc_size_table*
  %168 = call i32* @qdisc_root_sleeping_lock(%struct.qdisc_size_table* %167)
  store i32* %168, i32** %21, align 8
  br label %173

169:                                              ; preds = %158, %148, %142
  %170 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %171 = bitcast %struct.Qdisc* %170 to %struct.qdisc_size_table*
  %172 = call i32* @qdisc_lock(%struct.qdisc_size_table* %171)
  store i32* %172, i32** %21, align 8
  br label %173

173:                                              ; preds = %169, %165
  %174 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %175 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %174, i32 0, i32 5
  %176 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %177 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %176, i32 0, i32 4
  %178 = load i32*, i32** %21, align 8
  %179 = load %struct.nlattr**, %struct.nlattr*** %14, align 8
  %180 = load i64, i64* @TCA_RATE, align 8
  %181 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %179, i64 %180
  %182 = load %struct.nlattr*, %struct.nlattr** %181, align 8
  %183 = call i32 @gen_new_estimator(i32* %175, i32* %177, i32* %178, %struct.nlattr* %182)
  store i32 %183, i32* %16, align 4
  %184 = load i32, i32* %16, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %173
  br label %214

187:                                              ; preds = %173
  br label %188

188:                                              ; preds = %187, %126
  %189 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %190 = bitcast %struct.Qdisc* %189 to %struct.qdisc_size_table*
  %191 = call i32 @qdisc_list_add(%struct.qdisc_size_table* %190)
  %192 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  store %struct.Qdisc* %192, %struct.Qdisc** %8, align 8
  br label %232

193:                                              ; preds = %91
  br label %194

194:                                              ; preds = %231, %193, %76
  %195 = load %struct.net_device*, %struct.net_device** %9, align 8
  %196 = call i32 @dev_put(%struct.net_device* %195)
  %197 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %198 = bitcast %struct.Qdisc* %197 to i8*
  %199 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %200 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = sext i32 %201 to i64
  %203 = sub i64 0, %202
  %204 = getelementptr inbounds i8, i8* %198, i64 %203
  %205 = call i32 @kfree(i8* %204)
  br label %206

206:                                              ; preds = %194, %42
  %207 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %19, align 8
  %208 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @module_put(i32 %209)
  br label %211

211:                                              ; preds = %206, %32
  %212 = load i32, i32* %16, align 4
  %213 = load i32*, i32** %15, align 8
  store i32 %212, i32* %213, align 4
  store %struct.Qdisc* null, %struct.Qdisc** %8, align 8
  br label %232

214:                                              ; preds = %186, %141, %118
  %215 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %216 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %215, i32 0, i32 3
  %217 = load %struct.Qdisc*, %struct.Qdisc** %216, align 8
  %218 = bitcast %struct.Qdisc* %217 to %struct.qdisc_size_table*
  %219 = call i32 @qdisc_put_stab(%struct.qdisc_size_table* %218)
  %220 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %19, align 8
  %221 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %220, i32 0, i32 1
  %222 = load i32 (%struct.qdisc_size_table*)*, i32 (%struct.qdisc_size_table*)** %221, align 8
  %223 = icmp ne i32 (%struct.qdisc_size_table*)* %222, null
  br i1 %223, label %224, label %231

224:                                              ; preds = %214
  %225 = load %struct.Qdisc_ops*, %struct.Qdisc_ops** %19, align 8
  %226 = getelementptr inbounds %struct.Qdisc_ops, %struct.Qdisc_ops* %225, i32 0, i32 1
  %227 = load i32 (%struct.qdisc_size_table*)*, i32 (%struct.qdisc_size_table*)** %226, align 8
  %228 = load %struct.Qdisc*, %struct.Qdisc** %18, align 8
  %229 = bitcast %struct.Qdisc* %228 to %struct.qdisc_size_table*
  %230 = call i32 %227(%struct.qdisc_size_table* %229)
  br label %231

231:                                              ; preds = %224, %214
  br label %194

232:                                              ; preds = %211, %188
  %233 = load %struct.Qdisc*, %struct.Qdisc** %8, align 8
  ret %struct.Qdisc* %233
}

declare dso_local %struct.Qdisc_ops* @qdisc_lookup_ops(%struct.nlattr*) #1

declare dso_local %struct.qdisc_size_table* @qdisc_alloc(%struct.netdev_queue*, %struct.Qdisc_ops*) #1

declare dso_local i64 @IS_ERR(%struct.qdisc_size_table*) #1

declare dso_local i32 @PTR_ERR(%struct.qdisc_size_table*) #1

declare dso_local i8* @TC_H_MAKE(i8*, i32) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32* @qdisc_lock(%struct.qdisc_size_table*) #1

declare dso_local i8* @qdisc_alloc_handle(%struct.net_device*) #1

declare dso_local %struct.qdisc_size_table* @qdisc_get_stab(%struct.nlattr*) #1

declare dso_local i32* @qdisc_root_sleeping_lock(%struct.qdisc_size_table*) #1

declare dso_local i32 @gen_new_estimator(i32*, i32*, i32*, %struct.nlattr*) #1

declare dso_local i32 @qdisc_list_add(%struct.qdisc_size_table*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @qdisc_put_stab(%struct.qdisc_size_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

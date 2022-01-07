; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_tbf.c_tbf_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_tbf.c_tbf_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Qdisc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nlattr = type { i32 }
%struct.tbf_sched_data = type { i64, i64, i32, i64, i64, i64, i32, i32, %struct.Qdisc* }
%struct.tc_tbf_qopt = type { i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.qdisc_rate_table = type { i64* }

@TCA_TBF_PTAB = common dso_local global i32 0, align 4
@tbf_policy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TCA_TBF_PARMS = common dso_local global i64 0, align 8
@TCA_TBF_RTAB = common dso_local global i64 0, align 8
@bfifo_qdisc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Qdisc*, %struct.nlattr*)* @tbf_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbf_change(%struct.Qdisc* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Qdisc*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tbf_sched_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tc_tbf_qopt*, align 8
  %11 = alloca %struct.qdisc_rate_table*, align 8
  %12 = alloca %struct.qdisc_rate_table*, align 8
  %13 = alloca %struct.Qdisc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.Qdisc* %0, %struct.Qdisc** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %18 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %19 = call %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc* %18)
  store %struct.tbf_sched_data* %19, %struct.tbf_sched_data** %7, align 8
  %20 = load i32, i32* @TCA_TBF_PTAB, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  store %struct.qdisc_rate_table* null, %struct.qdisc_rate_table** %11, align 8
  store %struct.qdisc_rate_table* null, %struct.qdisc_rate_table** %12, align 8
  store %struct.Qdisc* null, %struct.Qdisc** %13, align 8
  %25 = load i32, i32* @TCA_TBF_PTAB, align 4
  %26 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %27 = load i32, i32* @tbf_policy, align 4
  %28 = call i32 @nla_parse_nested(%struct.nlattr** %24, i32 %25, %struct.nlattr* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %250

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  %36 = load i64, i64* @TCA_TBF_PARMS, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp eq %struct.nlattr* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %236

41:                                               ; preds = %33
  %42 = load i64, i64* @TCA_TBF_PARMS, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call %struct.tc_tbf_qopt* @nla_data(%struct.nlattr* %44)
  store %struct.tc_tbf_qopt* %45, %struct.tc_tbf_qopt** %10, align 8
  %46 = load %struct.tc_tbf_qopt*, %struct.tc_tbf_qopt** %10, align 8
  %47 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %46, i32 0, i32 4
  %48 = load i64, i64* @TCA_TBF_RTAB, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call %struct.qdisc_rate_table* @qdisc_get_rtab(%struct.TYPE_4__* %47, %struct.nlattr* %50)
  store %struct.qdisc_rate_table* %51, %struct.qdisc_rate_table** %11, align 8
  %52 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %11, align 8
  %53 = icmp eq %struct.qdisc_rate_table* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %236

55:                                               ; preds = %41
  %56 = load %struct.tc_tbf_qopt*, %struct.tc_tbf_qopt** %10, align 8
  %57 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %84

61:                                               ; preds = %55
  %62 = load %struct.tc_tbf_qopt*, %struct.tc_tbf_qopt** %10, align 8
  %63 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.tc_tbf_qopt*, %struct.tc_tbf_qopt** %10, align 8
  %67 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %65, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = load %struct.tc_tbf_qopt*, %struct.tc_tbf_qopt** %10, align 8
  %73 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %72, i32 0, i32 3
  %74 = load i32, i32* @TCA_TBF_PTAB, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = call %struct.qdisc_rate_table* @qdisc_get_rtab(%struct.TYPE_4__* %73, %struct.nlattr* %77)
  store %struct.qdisc_rate_table* %78, %struct.qdisc_rate_table** %12, align 8
  br label %79

79:                                               ; preds = %71, %61
  %80 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %12, align 8
  %81 = icmp eq %struct.qdisc_rate_table* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  br label %236

83:                                               ; preds = %79
  br label %84

84:                                               ; preds = %83, %55
  store i32 0, i32* %15, align 4
  br label %85

85:                                               ; preds = %102, %84
  %86 = load i32, i32* %15, align 4
  %87 = icmp slt i32 %86, 256
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %11, align 8
  %90 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.tc_tbf_qopt*, %struct.tc_tbf_qopt** %10, align 8
  %97 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp sgt i64 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %88
  br label %105

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %15, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %15, align 4
  br label %85

105:                                              ; preds = %100, %85
  %106 = load i32, i32* %15, align 4
  %107 = load %struct.tc_tbf_qopt*, %struct.tc_tbf_qopt** %10, align 8
  %108 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 %106, %110
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %14, align 4
  %113 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %12, align 8
  %114 = icmp ne %struct.qdisc_rate_table* %113, null
  br i1 %114, label %115, label %150

115:                                              ; preds = %105
  store i32 0, i32* %15, align 4
  br label %116

116:                                              ; preds = %133, %115
  %117 = load i32, i32* %15, align 4
  %118 = icmp slt i32 %117, 256
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %12, align 8
  %121 = getelementptr inbounds %struct.qdisc_rate_table, %struct.qdisc_rate_table* %120, i32 0, i32 0
  %122 = load i64*, i64** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64, i64* %122, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.tc_tbf_qopt*, %struct.tc_tbf_qopt** %10, align 8
  %128 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %126, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %119
  br label %136

132:                                              ; preds = %119
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %15, align 4
  br label %116

136:                                              ; preds = %131, %116
  %137 = load i32, i32* %15, align 4
  %138 = load %struct.tc_tbf_qopt*, %struct.tc_tbf_qopt** %10, align 8
  %139 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = shl i32 %137, %141
  %143 = sub nsw i32 %142, 1
  store i32 %143, i32* %17, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp slt i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %136
  %148 = load i32, i32* %17, align 4
  store i32 %148, i32* %14, align 4
  br label %149

149:                                              ; preds = %147, %136
  br label %150

150:                                              ; preds = %149, %105
  %151 = load i32, i32* %14, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  br label %236

154:                                              ; preds = %150
  %155 = load %struct.tc_tbf_qopt*, %struct.tc_tbf_qopt** %10, align 8
  %156 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp sgt i64 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %154
  %160 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %161 = load %struct.tc_tbf_qopt*, %struct.tc_tbf_qopt** %10, align 8
  %162 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = call %struct.Qdisc* @fifo_create_dflt(%struct.Qdisc* %160, i32* @bfifo_qdisc_ops, i64 %163)
  store %struct.Qdisc* %164, %struct.Qdisc** %13, align 8
  %165 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %166 = call i64 @IS_ERR(%struct.Qdisc* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %159
  %169 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %170 = call i32 @PTR_ERR(%struct.Qdisc* %169)
  store i32 %170, i32* %6, align 4
  br label %236

171:                                              ; preds = %159
  br label %172

172:                                              ; preds = %171, %154
  %173 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %174 = call i32 @sch_tree_lock(%struct.Qdisc* %173)
  %175 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %176 = icmp ne %struct.Qdisc* %175, null
  br i1 %176, label %177, label %195

177:                                              ; preds = %172
  %178 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %7, align 8
  %179 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %178, i32 0, i32 8
  %180 = load %struct.Qdisc*, %struct.Qdisc** %179, align 8
  %181 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %7, align 8
  %182 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %181, i32 0, i32 8
  %183 = load %struct.Qdisc*, %struct.Qdisc** %182, align 8
  %184 = getelementptr inbounds %struct.Qdisc, %struct.Qdisc* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @qdisc_tree_decrease_qlen(%struct.Qdisc* %180, i32 %186)
  %188 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %7, align 8
  %189 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %188, i32 0, i32 8
  %190 = load %struct.Qdisc*, %struct.Qdisc** %189, align 8
  %191 = call i32 @qdisc_destroy(%struct.Qdisc* %190)
  %192 = load %struct.Qdisc*, %struct.Qdisc** %13, align 8
  %193 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %7, align 8
  %194 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %193, i32 0, i32 8
  store %struct.Qdisc* %192, %struct.Qdisc** %194, align 8
  br label %195

195:                                              ; preds = %177, %172
  %196 = load %struct.tc_tbf_qopt*, %struct.tc_tbf_qopt** %10, align 8
  %197 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %7, align 8
  %200 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  %201 = load %struct.tc_tbf_qopt*, %struct.tc_tbf_qopt** %10, align 8
  %202 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %7, align 8
  %205 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %204, i32 0, i32 1
  store i64 %203, i64* %205, align 8
  %206 = load i32, i32* %14, align 4
  %207 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %7, align 8
  %208 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  %209 = load %struct.tc_tbf_qopt*, %struct.tc_tbf_qopt** %10, align 8
  %210 = getelementptr inbounds %struct.tc_tbf_qopt, %struct.tc_tbf_qopt* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %7, align 8
  %213 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %212, i32 0, i32 3
  store i64 %211, i64* %213, align 8
  %214 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %7, align 8
  %215 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %7, align 8
  %218 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %217, i32 0, i32 4
  store i64 %216, i64* %218, align 8
  %219 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %7, align 8
  %220 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %7, align 8
  %223 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %222, i32 0, i32 5
  store i64 %221, i64* %223, align 8
  %224 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %7, align 8
  %225 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %224, i32 0, i32 7
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %11, align 8
  %228 = call i32 @swap(i32 %226, %struct.qdisc_rate_table* %227)
  %229 = load %struct.tbf_sched_data*, %struct.tbf_sched_data** %7, align 8
  %230 = getelementptr inbounds %struct.tbf_sched_data, %struct.tbf_sched_data* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %12, align 8
  %233 = call i32 @swap(i32 %231, %struct.qdisc_rate_table* %232)
  %234 = load %struct.Qdisc*, %struct.Qdisc** %4, align 8
  %235 = call i32 @sch_tree_unlock(%struct.Qdisc* %234)
  store i32 0, i32* %6, align 4
  br label %236

236:                                              ; preds = %195, %168, %153, %82, %54, %40
  %237 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %11, align 8
  %238 = icmp ne %struct.qdisc_rate_table* %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %11, align 8
  %241 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %240)
  br label %242

242:                                              ; preds = %239, %236
  %243 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %12, align 8
  %244 = icmp ne %struct.qdisc_rate_table* %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load %struct.qdisc_rate_table*, %struct.qdisc_rate_table** %12, align 8
  %247 = call i32 @qdisc_put_rtab(%struct.qdisc_rate_table* %246)
  br label %248

248:                                              ; preds = %245, %242
  %249 = load i32, i32* %6, align 4
  store i32 %249, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %250

250:                                              ; preds = %248, %31
  %251 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %251)
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local %struct.tbf_sched_data* @qdisc_priv(%struct.Qdisc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32) #1

declare dso_local %struct.tc_tbf_qopt* @nla_data(%struct.nlattr*) #1

declare dso_local %struct.qdisc_rate_table* @qdisc_get_rtab(%struct.TYPE_4__*, %struct.nlattr*) #1

declare dso_local %struct.Qdisc* @fifo_create_dflt(%struct.Qdisc*, i32*, i64) #1

declare dso_local i64 @IS_ERR(%struct.Qdisc*) #1

declare dso_local i32 @PTR_ERR(%struct.Qdisc*) #1

declare dso_local i32 @sch_tree_lock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_tree_decrease_qlen(%struct.Qdisc*, i32) #1

declare dso_local i32 @qdisc_destroy(%struct.Qdisc*) #1

declare dso_local i32 @swap(i32, %struct.qdisc_rate_table*) #1

declare dso_local i32 @sch_tree_unlock(%struct.Qdisc*) #1

declare dso_local i32 @qdisc_put_rtab(%struct.qdisc_rate_table*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

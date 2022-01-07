; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_fabric_tf_ops_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_fabric_tf_ops_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_fabric_configfs = type { %struct.target_core_fabric_ops }
%struct.target_core_fabric_ops = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Missing tfo->get_fabric_name()\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Missing tfo->get_fabric_proto_ident()\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Missing tfo->tpg_get_wwn()\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Missing tfo->tpg_get_tag()\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Missing tfo->tpg_get_default_depth()\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Missing tfo->tpg_get_pr_transport_id()\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Missing tfo->tpg_get_pr_transport_id_len()\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Missing tfo->tpg_check_demo_mode()\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Missing tfo->tpg_check_demo_mode_cache()\0A\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"Missing tfo->tpg_check_demo_mode_write_protect()\0A\00", align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"Missing tfo->tpg_check_prod_mode_write_protect()\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Missing tfo->tpg_alloc_fabric_acl()\0A\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"Missing tfo->tpg_release_fabric_acl()\0A\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Missing tfo->tpg_get_inst_index()\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"Missing tfo->release_cmd()\0A\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Missing tfo->shutdown_session()\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"Missing tfo->close_session()\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Missing tfo->sess_get_index()\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"Missing tfo->write_pending()\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Missing tfo->write_pending_status()\0A\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Missing tfo->set_default_node_attributes()\0A\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"Missing tfo->get_task_tag()\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"Missing tfo->get_cmd_state()\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"Missing tfo->queue_data_in()\0A\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Missing tfo->queue_status()\0A\00", align 1
@.str.25 = private unnamed_addr constant [29 x i8] c"Missing tfo->queue_tm_rsp()\0A\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"Missing tfo->fabric_make_wwn()\0A\00", align 1
@.str.27 = private unnamed_addr constant [32 x i8] c"Missing tfo->fabric_drop_wwn()\0A\00", align 1
@.str.28 = private unnamed_addr constant [32 x i8] c"Missing tfo->fabric_make_tpg()\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"Missing tfo->fabric_drop_tpg()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.target_fabric_configfs*)* @target_fabric_tf_ops_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @target_fabric_tf_ops_check(%struct.target_fabric_configfs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.target_fabric_configfs*, align 8
  %4 = alloca %struct.target_core_fabric_ops*, align 8
  store %struct.target_fabric_configfs* %0, %struct.target_fabric_configfs** %3, align 8
  %5 = load %struct.target_fabric_configfs*, %struct.target_fabric_configfs** %3, align 8
  %6 = getelementptr inbounds %struct.target_fabric_configfs, %struct.target_fabric_configfs* %5, i32 0, i32 0
  store %struct.target_core_fabric_ops* %6, %struct.target_core_fabric_ops** %4, align 8
  %7 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %8 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %7, i32 0, i32 29
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %277

15:                                               ; preds = %1
  %16 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %17 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %16, i32 0, i32 28
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %277

24:                                               ; preds = %15
  %25 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %26 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %25, i32 0, i32 27
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %277

33:                                               ; preds = %24
  %34 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %35 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %34, i32 0, i32 26
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %277

42:                                               ; preds = %33
  %43 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %44 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %43, i32 0, i32 25
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %277

51:                                               ; preds = %42
  %52 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %53 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %52, i32 0, i32 24
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %51
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %277

60:                                               ; preds = %51
  %61 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %62 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %61, i32 0, i32 23
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %277

69:                                               ; preds = %60
  %70 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %71 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %70, i32 0, i32 22
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %277

78:                                               ; preds = %69
  %79 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %80 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %79, i32 0, i32 21
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %78
  %84 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %277

87:                                               ; preds = %78
  %88 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %89 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %88, i32 0, i32 20
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %87
  %93 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %277

96:                                               ; preds = %87
  %97 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %98 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %97, i32 0, i32 19
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %96
  %102 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %277

105:                                              ; preds = %96
  %106 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %107 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %106, i32 0, i32 18
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %277

114:                                              ; preds = %105
  %115 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %116 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %115, i32 0, i32 17
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %121 = load i32, i32* @EINVAL, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %277

123:                                              ; preds = %114
  %124 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %125 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %124, i32 0, i32 16
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.13, i64 0, i64 0))
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %277

132:                                              ; preds = %123
  %133 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %134 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %133, i32 0, i32 15
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %132
  %138 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0))
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %2, align 4
  br label %277

141:                                              ; preds = %132
  %142 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %143 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %142, i32 0, i32 14
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %2, align 4
  br label %277

150:                                              ; preds = %141
  %151 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %152 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %151, i32 0, i32 13
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %150
  %156 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %277

159:                                              ; preds = %150
  %160 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %161 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %160, i32 0, i32 12
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %159
  %165 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0))
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %277

168:                                              ; preds = %159
  %169 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %170 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %169, i32 0, i32 11
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %168
  %174 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %2, align 4
  br label %277

177:                                              ; preds = %168
  %178 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %179 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %178, i32 0, i32 10
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %186, label %182

182:                                              ; preds = %177
  %183 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0))
  %184 = load i32, i32* @EINVAL, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %2, align 4
  br label %277

186:                                              ; preds = %177
  %187 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %188 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %186
  %192 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.20, i64 0, i64 0))
  %193 = load i32, i32* @EINVAL, align 4
  %194 = sub nsw i32 0, %193
  store i32 %194, i32* %2, align 4
  br label %277

195:                                              ; preds = %186
  %196 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %197 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %196, i32 0, i32 8
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %204, label %200

200:                                              ; preds = %195
  %201 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %2, align 4
  br label %277

204:                                              ; preds = %195
  %205 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %206 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %204
  %210 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.22, i64 0, i64 0))
  %211 = load i32, i32* @EINVAL, align 4
  %212 = sub nsw i32 0, %211
  store i32 %212, i32* %2, align 4
  br label %277

213:                                              ; preds = %204
  %214 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %215 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %213
  %219 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0))
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %2, align 4
  br label %277

222:                                              ; preds = %213
  %223 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %224 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %222
  %228 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.24, i64 0, i64 0))
  %229 = load i32, i32* @EINVAL, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %2, align 4
  br label %277

231:                                              ; preds = %222
  %232 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %233 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %231
  %237 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.25, i64 0, i64 0))
  %238 = load i32, i32* @EINVAL, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %2, align 4
  br label %277

240:                                              ; preds = %231
  %241 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %242 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %240
  %246 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0))
  %247 = load i32, i32* @EINVAL, align 4
  %248 = sub nsw i32 0, %247
  store i32 %248, i32* %2, align 4
  br label %277

249:                                              ; preds = %240
  %250 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %251 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %258, label %254

254:                                              ; preds = %249
  %255 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i64 0, i64 0))
  %256 = load i32, i32* @EINVAL, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %2, align 4
  br label %277

258:                                              ; preds = %249
  %259 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %260 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %267, label %263

263:                                              ; preds = %258
  %264 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.28, i64 0, i64 0))
  %265 = load i32, i32* @EINVAL, align 4
  %266 = sub nsw i32 0, %265
  store i32 %266, i32* %2, align 4
  br label %277

267:                                              ; preds = %258
  %268 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %4, align 8
  %269 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %276, label %272

272:                                              ; preds = %267
  %273 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0))
  %274 = load i32, i32* @EINVAL, align 4
  %275 = sub nsw i32 0, %274
  store i32 %275, i32* %2, align 4
  br label %277

276:                                              ; preds = %267
  store i32 0, i32* %2, align 4
  br label %277

277:                                              ; preds = %276, %272, %263, %254, %245, %236, %227, %218, %209, %200, %191, %182, %173, %164, %155, %146, %137, %128, %119, %110, %101, %92, %83, %74, %65, %56, %47, %38, %29, %20, %11
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

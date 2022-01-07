; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_make_subdev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_configfs.c_target_core_make_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.config_group**, %struct.config_item }
%struct.config_item = type { i32 }
%struct.t10_alua_tg_pt_gp = type { %struct.config_group }
%struct.se_subsystem_api = type { i32 }
%struct.se_hba = type { i32, %struct.se_subsystem_api* }
%struct.se_device = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.config_group, %struct.TYPE_5__, %struct.config_group }
%struct.TYPE_8__ = type { %struct.config_group }
%struct.TYPE_7__ = type { %struct.config_group, %struct.t10_alua_tg_pt_gp* }
%struct.TYPE_6__ = type { %struct.config_group }
%struct.TYPE_5__ = type { %struct.config_group }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@target_core_dev_cit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"attrib\00", align 1
@target_core_dev_attrib_cit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"pr\00", align 1
@target_core_dev_pr_cit = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"wwn\00", align 1
@target_core_dev_wwn_cit = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"alua\00", align 1
@target_core_alua_tg_pt_gps_cit = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"statistics\00", align 1
@target_core_stat_cit = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"default_tg_pt_gp\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Unable to allocate tg_pt_gp_cg->default_groups\0A\00", align 1
@target_core_alua_tg_pt_gp_cit = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"Unable to allocate dev_stat_grp->default_groups\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @target_core_make_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @target_core_make_subdev(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %7 = alloca %struct.se_subsystem_api*, align 8
  %8 = alloca %struct.config_item*, align 8
  %9 = alloca %struct.se_hba*, align 8
  %10 = alloca %struct.se_device*, align 8
  %11 = alloca %struct.config_group*, align 8
  %12 = alloca %struct.config_group*, align 8
  %13 = alloca %struct.config_group*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load %struct.config_group*, %struct.config_group** %4, align 8
  %17 = getelementptr inbounds %struct.config_group, %struct.config_group* %16, i32 0, i32 1
  store %struct.config_item* %17, %struct.config_item** %8, align 8
  %18 = load %struct.config_item*, %struct.config_item** %8, align 8
  %19 = call %struct.se_hba* @item_to_hba(%struct.config_item* %18)
  store %struct.se_hba* %19, %struct.se_hba** %9, align 8
  store %struct.config_group* null, %struct.config_group** %11, align 8
  store %struct.config_group* null, %struct.config_group** %12, align 8
  store %struct.config_group* null, %struct.config_group** %13, align 8
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %14, align 4
  %22 = load %struct.se_hba*, %struct.se_hba** %9, align 8
  %23 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock_interruptible(i32* %23)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* %15, align 4
  %29 = call %struct.config_group* @ERR_PTR(i32 %28)
  store %struct.config_group* %29, %struct.config_group** %3, align 8
  br label %195

30:                                               ; preds = %2
  %31 = load %struct.se_hba*, %struct.se_hba** %9, align 8
  %32 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %31, i32 0, i32 1
  %33 = load %struct.se_subsystem_api*, %struct.se_subsystem_api** %32, align 8
  store %struct.se_subsystem_api* %33, %struct.se_subsystem_api** %7, align 8
  %34 = load %struct.se_hba*, %struct.se_hba** %9, align 8
  %35 = load i8*, i8** %5, align 8
  %36 = call %struct.se_device* @target_alloc_device(%struct.se_hba* %34, i8* %35)
  store %struct.se_device* %36, %struct.se_device** %10, align 8
  %37 = load %struct.se_device*, %struct.se_device** %10, align 8
  %38 = icmp ne %struct.se_device* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %189

40:                                               ; preds = %30
  %41 = load %struct.se_device*, %struct.se_device** %10, align 8
  %42 = getelementptr inbounds %struct.se_device, %struct.se_device* %41, i32 0, i32 5
  store %struct.config_group* %42, %struct.config_group** %11, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kmalloc(i32 48, i32 %43)
  %45 = bitcast i8* %44 to %struct.config_group**
  %46 = load %struct.config_group*, %struct.config_group** %11, align 8
  %47 = getelementptr inbounds %struct.config_group, %struct.config_group* %46, i32 0, i32 0
  store %struct.config_group** %45, %struct.config_group*** %47, align 8
  %48 = load %struct.config_group*, %struct.config_group** %11, align 8
  %49 = getelementptr inbounds %struct.config_group, %struct.config_group* %48, i32 0, i32 0
  %50 = load %struct.config_group**, %struct.config_group*** %49, align 8
  %51 = icmp ne %struct.config_group** %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %40
  br label %186

53:                                               ; preds = %40
  %54 = load %struct.config_group*, %struct.config_group** %11, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 @config_group_init_type_name(%struct.config_group* %54, i8* %55, i32* @target_core_dev_cit)
  %57 = load %struct.se_device*, %struct.se_device** %10, align 8
  %58 = getelementptr inbounds %struct.se_device, %struct.se_device* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = call i32 @config_group_init_type_name(%struct.config_group* %59, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* @target_core_dev_attrib_cit)
  %61 = load %struct.se_device*, %struct.se_device** %10, align 8
  %62 = getelementptr inbounds %struct.se_device, %struct.se_device* %61, i32 0, i32 3
  %63 = call i32 @config_group_init_type_name(%struct.config_group* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* @target_core_dev_pr_cit)
  %64 = load %struct.se_device*, %struct.se_device** %10, align 8
  %65 = getelementptr inbounds %struct.se_device, %struct.se_device* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = call i32 @config_group_init_type_name(%struct.config_group* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* @target_core_dev_wwn_cit)
  %68 = load %struct.se_device*, %struct.se_device** %10, align 8
  %69 = getelementptr inbounds %struct.se_device, %struct.se_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = call i32 @config_group_init_type_name(%struct.config_group* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* @target_core_alua_tg_pt_gps_cit)
  %72 = load %struct.se_device*, %struct.se_device** %10, align 8
  %73 = getelementptr inbounds %struct.se_device, %struct.se_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = call i32 @config_group_init_type_name(%struct.config_group* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32* @target_core_stat_cit)
  %76 = load %struct.se_device*, %struct.se_device** %10, align 8
  %77 = getelementptr inbounds %struct.se_device, %struct.se_device* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load %struct.config_group*, %struct.config_group** %11, align 8
  %80 = getelementptr inbounds %struct.config_group, %struct.config_group* %79, i32 0, i32 0
  %81 = load %struct.config_group**, %struct.config_group*** %80, align 8
  %82 = getelementptr inbounds %struct.config_group*, %struct.config_group** %81, i64 0
  store %struct.config_group* %78, %struct.config_group** %82, align 8
  %83 = load %struct.se_device*, %struct.se_device** %10, align 8
  %84 = getelementptr inbounds %struct.se_device, %struct.se_device* %83, i32 0, i32 3
  %85 = load %struct.config_group*, %struct.config_group** %11, align 8
  %86 = getelementptr inbounds %struct.config_group, %struct.config_group* %85, i32 0, i32 0
  %87 = load %struct.config_group**, %struct.config_group*** %86, align 8
  %88 = getelementptr inbounds %struct.config_group*, %struct.config_group** %87, i64 1
  store %struct.config_group* %84, %struct.config_group** %88, align 8
  %89 = load %struct.se_device*, %struct.se_device** %10, align 8
  %90 = getelementptr inbounds %struct.se_device, %struct.se_device* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.config_group*, %struct.config_group** %11, align 8
  %93 = getelementptr inbounds %struct.config_group, %struct.config_group* %92, i32 0, i32 0
  %94 = load %struct.config_group**, %struct.config_group*** %93, align 8
  %95 = getelementptr inbounds %struct.config_group*, %struct.config_group** %94, i64 2
  store %struct.config_group* %91, %struct.config_group** %95, align 8
  %96 = load %struct.se_device*, %struct.se_device** %10, align 8
  %97 = getelementptr inbounds %struct.se_device, %struct.se_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load %struct.config_group*, %struct.config_group** %11, align 8
  %100 = getelementptr inbounds %struct.config_group, %struct.config_group* %99, i32 0, i32 0
  %101 = load %struct.config_group**, %struct.config_group*** %100, align 8
  %102 = getelementptr inbounds %struct.config_group*, %struct.config_group** %101, i64 3
  store %struct.config_group* %98, %struct.config_group** %102, align 8
  %103 = load %struct.se_device*, %struct.se_device** %10, align 8
  %104 = getelementptr inbounds %struct.se_device, %struct.se_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load %struct.config_group*, %struct.config_group** %11, align 8
  %107 = getelementptr inbounds %struct.config_group, %struct.config_group* %106, i32 0, i32 0
  %108 = load %struct.config_group**, %struct.config_group*** %107, align 8
  %109 = getelementptr inbounds %struct.config_group*, %struct.config_group** %108, i64 4
  store %struct.config_group* %105, %struct.config_group** %109, align 8
  %110 = load %struct.config_group*, %struct.config_group** %11, align 8
  %111 = getelementptr inbounds %struct.config_group, %struct.config_group* %110, i32 0, i32 0
  %112 = load %struct.config_group**, %struct.config_group*** %111, align 8
  %113 = getelementptr inbounds %struct.config_group*, %struct.config_group** %112, i64 5
  store %struct.config_group* null, %struct.config_group** %113, align 8
  %114 = load %struct.se_device*, %struct.se_device** %10, align 8
  %115 = call %struct.t10_alua_tg_pt_gp* @core_alua_allocate_tg_pt_gp(%struct.se_device* %114, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store %struct.t10_alua_tg_pt_gp* %115, %struct.t10_alua_tg_pt_gp** %6, align 8
  %116 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %6, align 8
  %117 = icmp ne %struct.t10_alua_tg_pt_gp* %116, null
  br i1 %117, label %119, label %118

118:                                              ; preds = %53
  br label %181

119:                                              ; preds = %53
  %120 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %6, align 8
  %121 = load %struct.se_device*, %struct.se_device** %10, align 8
  %122 = getelementptr inbounds %struct.se_device, %struct.se_device* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  store %struct.t10_alua_tg_pt_gp* %120, %struct.t10_alua_tg_pt_gp** %123, align 8
  %124 = load %struct.se_device*, %struct.se_device** %10, align 8
  %125 = getelementptr inbounds %struct.se_device, %struct.se_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store %struct.config_group* %126, %struct.config_group** %12, align 8
  %127 = load i32, i32* @GFP_KERNEL, align 4
  %128 = call i8* @kmalloc(i32 16, i32 %127)
  %129 = bitcast i8* %128 to %struct.config_group**
  %130 = load %struct.config_group*, %struct.config_group** %12, align 8
  %131 = getelementptr inbounds %struct.config_group, %struct.config_group* %130, i32 0, i32 0
  store %struct.config_group** %129, %struct.config_group*** %131, align 8
  %132 = load %struct.config_group*, %struct.config_group** %12, align 8
  %133 = getelementptr inbounds %struct.config_group, %struct.config_group* %132, i32 0, i32 0
  %134 = load %struct.config_group**, %struct.config_group*** %133, align 8
  %135 = icmp ne %struct.config_group** %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %119
  %137 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0))
  br label %178

138:                                              ; preds = %119
  %139 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %6, align 8
  %140 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %139, i32 0, i32 0
  %141 = call i32 @config_group_init_type_name(%struct.config_group* %140, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* @target_core_alua_tg_pt_gp_cit)
  %142 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %6, align 8
  %143 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %142, i32 0, i32 0
  %144 = load %struct.config_group*, %struct.config_group** %12, align 8
  %145 = getelementptr inbounds %struct.config_group, %struct.config_group* %144, i32 0, i32 0
  %146 = load %struct.config_group**, %struct.config_group*** %145, align 8
  %147 = getelementptr inbounds %struct.config_group*, %struct.config_group** %146, i64 0
  store %struct.config_group* %143, %struct.config_group** %147, align 8
  %148 = load %struct.config_group*, %struct.config_group** %12, align 8
  %149 = getelementptr inbounds %struct.config_group, %struct.config_group* %148, i32 0, i32 0
  %150 = load %struct.config_group**, %struct.config_group*** %149, align 8
  %151 = getelementptr inbounds %struct.config_group*, %struct.config_group** %150, i64 1
  store %struct.config_group* null, %struct.config_group** %151, align 8
  %152 = load %struct.se_device*, %struct.se_device** %10, align 8
  %153 = getelementptr inbounds %struct.se_device, %struct.se_device* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  store %struct.config_group* %154, %struct.config_group** %13, align 8
  %155 = load i32, i32* @GFP_KERNEL, align 4
  %156 = call i8* @kmalloc(i32 32, i32 %155)
  %157 = bitcast i8* %156 to %struct.config_group**
  %158 = load %struct.config_group*, %struct.config_group** %13, align 8
  %159 = getelementptr inbounds %struct.config_group, %struct.config_group* %158, i32 0, i32 0
  store %struct.config_group** %157, %struct.config_group*** %159, align 8
  %160 = load %struct.config_group*, %struct.config_group** %13, align 8
  %161 = getelementptr inbounds %struct.config_group, %struct.config_group* %160, i32 0, i32 0
  %162 = load %struct.config_group**, %struct.config_group*** %161, align 8
  %163 = icmp ne %struct.config_group** %162, null
  br i1 %163, label %166, label %164

164:                                              ; preds = %138
  %165 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  br label %173

166:                                              ; preds = %138
  %167 = load %struct.se_device*, %struct.se_device** %10, align 8
  %168 = call i32 @target_stat_setup_dev_default_groups(%struct.se_device* %167)
  %169 = load %struct.se_hba*, %struct.se_hba** %9, align 8
  %170 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %169, i32 0, i32 0
  %171 = call i32 @mutex_unlock(i32* %170)
  %172 = load %struct.config_group*, %struct.config_group** %11, align 8
  store %struct.config_group* %172, %struct.config_group** %3, align 8
  br label %195

173:                                              ; preds = %164
  %174 = load %struct.config_group*, %struct.config_group** %12, align 8
  %175 = getelementptr inbounds %struct.config_group, %struct.config_group* %174, i32 0, i32 0
  %176 = load %struct.config_group**, %struct.config_group*** %175, align 8
  %177 = call i32 @kfree(%struct.config_group** %176)
  br label %178

178:                                              ; preds = %173, %136
  %179 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %6, align 8
  %180 = call i32 @core_alua_free_tg_pt_gp(%struct.t10_alua_tg_pt_gp* %179)
  br label %181

181:                                              ; preds = %178, %118
  %182 = load %struct.config_group*, %struct.config_group** %11, align 8
  %183 = getelementptr inbounds %struct.config_group, %struct.config_group* %182, i32 0, i32 0
  %184 = load %struct.config_group**, %struct.config_group*** %183, align 8
  %185 = call i32 @kfree(%struct.config_group** %184)
  br label %186

186:                                              ; preds = %181, %52
  %187 = load %struct.se_device*, %struct.se_device** %10, align 8
  %188 = call i32 @target_free_device(%struct.se_device* %187)
  br label %189

189:                                              ; preds = %186, %39
  %190 = load %struct.se_hba*, %struct.se_hba** %9, align 8
  %191 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %190, i32 0, i32 0
  %192 = call i32 @mutex_unlock(i32* %191)
  %193 = load i32, i32* %14, align 4
  %194 = call %struct.config_group* @ERR_PTR(i32 %193)
  store %struct.config_group* %194, %struct.config_group** %3, align 8
  br label %195

195:                                              ; preds = %189, %166, %27
  %196 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %196
}

declare dso_local %struct.se_hba* @item_to_hba(%struct.config_item*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

declare dso_local %struct.se_device* @target_alloc_device(%struct.se_hba*, i8*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local %struct.t10_alua_tg_pt_gp* @core_alua_allocate_tg_pt_gp(%struct.se_device*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @target_stat_setup_dev_default_groups(%struct.se_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.config_group**) #1

declare dso_local i32 @core_alua_free_tg_pt_gp(%struct.t10_alua_tg_pt_gp*) #1

declare dso_local i32 @target_free_device(%struct.se_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

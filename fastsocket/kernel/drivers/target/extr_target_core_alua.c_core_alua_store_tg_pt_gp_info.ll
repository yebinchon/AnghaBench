; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_store_tg_pt_gp_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_alua.c_core_alua_store_tg_pt_gp_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_port = type { %struct.t10_alua_tg_pt_gp_member*, %struct.se_lun*, %struct.se_portal_group* }
%struct.t10_alua_tg_pt_gp_member = type { i32, %struct.t10_alua_tg_pt_gp* }
%struct.t10_alua_tg_pt_gp = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.se_lun = type { %struct.TYPE_7__, %struct.se_device* }
%struct.TYPE_7__ = type { i32 }
%struct.se_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.t10_alua_tg_pt_gp* }
%struct.se_portal_group = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)* }

@TG_PT_GROUP_NAME_BUF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ALUA Target Port Group alias too large!\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@ENODEV = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [116 x i8] c"Target_Core_ConfigFS: Moving %s/tpgt_%hu/%s from ALUA Target Port Group: alua/%s, ID: %hu back to default_tg_pt_gp\0A\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"Target_Core_ConfigFS: %s %s/tpgt_%hu/%s to ALUA Target Port Group: alua/%s, ID: %hu\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Moving\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Adding\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @core_alua_store_tg_pt_gp_info(%struct.se_port* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.se_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_portal_group*, align 8
  %9 = alloca %struct.se_lun*, align 8
  %10 = alloca %struct.se_device*, align 8
  %11 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %12 = alloca %struct.t10_alua_tg_pt_gp*, align 8
  %13 = alloca %struct.t10_alua_tg_pt_gp_member*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.se_port* %0, %struct.se_port** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.se_port*, %struct.se_port** %5, align 8
  %19 = getelementptr inbounds %struct.se_port, %struct.se_port* %18, i32 0, i32 1
  %20 = load %struct.se_lun*, %struct.se_lun** %19, align 8
  %21 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %20, i32 0, i32 1
  %22 = load %struct.se_device*, %struct.se_device** %21, align 8
  store %struct.se_device* %22, %struct.se_device** %10, align 8
  store %struct.t10_alua_tg_pt_gp* null, %struct.t10_alua_tg_pt_gp** %11, align 8
  store %struct.t10_alua_tg_pt_gp* null, %struct.t10_alua_tg_pt_gp** %12, align 8
  %23 = load i32, i32* @TG_PT_GROUP_NAME_BUF, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %14, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %27 = load %struct.se_port*, %struct.se_port** %5, align 8
  %28 = getelementptr inbounds %struct.se_port, %struct.se_port* %27, i32 0, i32 2
  %29 = load %struct.se_portal_group*, %struct.se_portal_group** %28, align 8
  store %struct.se_portal_group* %29, %struct.se_portal_group** %8, align 8
  %30 = load %struct.se_port*, %struct.se_port** %5, align 8
  %31 = getelementptr inbounds %struct.se_port, %struct.se_port* %30, i32 0, i32 1
  %32 = load %struct.se_lun*, %struct.se_lun** %31, align 8
  store %struct.se_lun* %32, %struct.se_lun** %9, align 8
  %33 = load %struct.se_port*, %struct.se_port** %5, align 8
  %34 = getelementptr inbounds %struct.se_port, %struct.se_port* %33, i32 0, i32 0
  %35 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %34, align 8
  store %struct.t10_alua_tg_pt_gp_member* %35, %struct.t10_alua_tg_pt_gp_member** %13, align 8
  %36 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %13, align 8
  %37 = icmp ne %struct.t10_alua_tg_pt_gp_member* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %165

39:                                               ; preds = %3
  %40 = load i64, i64* %7, align 8
  %41 = load i32, i32* @TG_PT_GROUP_NAME_BUF, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ugt i64 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %46 = load i64, i64* @EINVAL, align 8
  %47 = sub i64 0, %46
  store i64 %47, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %165

48:                                               ; preds = %39
  %49 = load i32, i32* @TG_PT_GROUP_NAME_BUF, align 4
  %50 = call i32 @memset(i8* %26, i32 0, i32 %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @memcpy(i8* %26, i8* %51, i64 %52)
  %54 = call i32 @strstrip(i8* %26)
  %55 = call i64 @strcmp(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %48
  %58 = load %struct.se_device*, %struct.se_device** %10, align 8
  %59 = call i32 @strstrip(i8* %26)
  %60 = call %struct.t10_alua_tg_pt_gp* @core_alua_get_tg_pt_gp_by_name(%struct.se_device* %58, i32 %59)
  store %struct.t10_alua_tg_pt_gp* %60, %struct.t10_alua_tg_pt_gp** %12, align 8
  %61 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %12, align 8
  %62 = icmp ne %struct.t10_alua_tg_pt_gp* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i64, i64* @ENODEV, align 8
  %65 = sub i64 0, %64
  store i64 %65, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %165

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %48
  %68 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %13, align 8
  %69 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %68, i32 0, i32 0
  %70 = call i32 @spin_lock(i32* %69)
  %71 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %13, align 8
  %72 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %71, i32 0, i32 1
  %73 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %72, align 8
  store %struct.t10_alua_tg_pt_gp* %73, %struct.t10_alua_tg_pt_gp** %11, align 8
  %74 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %11, align 8
  %75 = icmp ne %struct.t10_alua_tg_pt_gp* %74, null
  br i1 %75, label %76, label %125

76:                                               ; preds = %67
  %77 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %12, align 8
  %78 = icmp ne %struct.t10_alua_tg_pt_gp* %77, null
  br i1 %78, label %121, label %79

79:                                               ; preds = %76
  %80 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %81 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %80, i32 0, i32 0
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %83, align 8
  %85 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %86 = call i32 %84(%struct.se_portal_group* %85)
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %90 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %92, align 8
  %94 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %95 = call i32 %93(%struct.se_portal_group* %94)
  %96 = load %struct.se_lun*, %struct.se_lun** %9, align 8
  %97 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = call i32 @config_item_name(i32* %98)
  %100 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %11, align 8
  %101 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = call i32 @config_item_name(i32* %102)
  %104 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %11, align 8
  %105 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i8*, i8*, i32, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.2, i64 0, i64 0), i8* %88, i32 %95, i32 %99, i32 %103, i32 %106)
  %108 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %13, align 8
  %109 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %11, align 8
  %110 = call i32 @__core_alua_drop_tg_pt_gp_mem(%struct.t10_alua_tg_pt_gp_member* %108, %struct.t10_alua_tg_pt_gp* %109)
  %111 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %13, align 8
  %112 = load %struct.se_device*, %struct.se_device** %10, align 8
  %113 = getelementptr inbounds %struct.se_device, %struct.se_device* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %114, align 8
  %116 = call i32 @__core_alua_attach_tg_pt_gp_mem(%struct.t10_alua_tg_pt_gp_member* %111, %struct.t10_alua_tg_pt_gp* %115)
  %117 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %13, align 8
  %118 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %117, i32 0, i32 0
  %119 = call i32 @spin_unlock(i32* %118)
  %120 = load i64, i64* %7, align 8
  store i64 %120, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %165

121:                                              ; preds = %76
  %122 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %13, align 8
  %123 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %11, align 8
  %124 = call i32 @__core_alua_drop_tg_pt_gp_mem(%struct.t10_alua_tg_pt_gp_member* %122, %struct.t10_alua_tg_pt_gp* %123)
  store i32 1, i32* %16, align 4
  br label %125

125:                                              ; preds = %121, %67
  %126 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %13, align 8
  %127 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %12, align 8
  %128 = call i32 @__core_alua_attach_tg_pt_gp_mem(%struct.t10_alua_tg_pt_gp_member* %126, %struct.t10_alua_tg_pt_gp* %127)
  %129 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %13, align 8
  %130 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %129, i32 0, i32 0
  %131 = call i32 @spin_unlock(i32* %130)
  %132 = load i32, i32* %16, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %136 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %137 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %139, align 8
  %141 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %142 = call i32 %140(%struct.se_portal_group* %141)
  %143 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %144 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %143, i32 0, i32 0
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %146, align 8
  %148 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %149 = call i32 %147(%struct.se_portal_group* %148)
  %150 = load %struct.se_lun*, %struct.se_lun** %9, align 8
  %151 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = call i32 @config_item_name(i32* %152)
  %154 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %12, align 8
  %155 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = call i32 @config_item_name(i32* %156)
  %158 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %12, align 8
  %159 = getelementptr inbounds %struct.t10_alua_tg_pt_gp, %struct.t10_alua_tg_pt_gp* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i8*, i8*, i32, i32, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i8* %135, i32 %142, i32 %149, i32 %153, i32 %157, i32 %160)
  %162 = load %struct.t10_alua_tg_pt_gp*, %struct.t10_alua_tg_pt_gp** %12, align 8
  %163 = call i32 @core_alua_put_tg_pt_gp_from_name(%struct.t10_alua_tg_pt_gp* %162)
  %164 = load i64, i64* %7, align 8
  store i64 %164, i64* %4, align 8
  store i32 1, i32* %17, align 4
  br label %165

165:                                              ; preds = %125, %79, %63, %44, %38
  %166 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %166)
  %167 = load i64, i64* %4, align 8
  ret i64 %167
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i64 @strcmp(i32, i8*) #2

declare dso_local i32 @strstrip(i8*) #2

declare dso_local %struct.t10_alua_tg_pt_gp* @core_alua_get_tg_pt_gp_by_name(%struct.se_device*, i32) #2

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32, i32, i32, ...) #2

declare dso_local i32 @config_item_name(i32*) #2

declare dso_local i32 @__core_alua_drop_tg_pt_gp_mem(%struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp*) #2

declare dso_local i32 @__core_alua_attach_tg_pt_gp_mem(%struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp*) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @core_alua_put_tg_pt_gp_from_name(%struct.t10_alua_tg_pt_gp*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

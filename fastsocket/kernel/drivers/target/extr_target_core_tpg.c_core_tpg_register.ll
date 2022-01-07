; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.target_core_fabric_ops = type { i8* (%struct.se_portal_group*)*, i32 (%struct.se_portal_group.0*)*, i32 (...)* }
%struct.se_portal_group = type opaque
%struct.se_portal_group.0 = type opaque
%struct.se_wwn = type { i32 }
%struct.se_portal_group.1 = type { i32, i32, %struct.se_lun**, i32, i32, i32, i32, i32, i32, %struct.se_wwn*, %struct.target_core_fabric_ops*, i8* }
%struct.se_lun = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TRANSPORT_MAX_LUNS_PER_TPG = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Unable to allocate struct se_portal_group->tpg_lun_list\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SE_LUN_LINK_MAGIC = common dso_local global i32 0, align 4
@TRANSPORT_LUN_STATUS_FREE = common dso_local global i32 0, align 4
@TRANSPORT_TPG_TYPE_NORMAL = common dso_local global i32 0, align 4
@tpg_lock = common dso_local global i32 0, align 4
@tpg_list = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [87 x i8] c"TARGET_CORE[%s]: Allocated %s struct se_portal_group for endpoint: %s, Portal Tag: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Normal\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Discovery\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"None\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_tpg_register(%struct.target_core_fabric_ops* %0, %struct.se_wwn* %1, %struct.se_portal_group.1* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.target_core_fabric_ops*, align 8
  %8 = alloca %struct.se_wwn*, align 8
  %9 = alloca %struct.se_portal_group.1*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.se_lun*, align 8
  %13 = alloca i64, align 8
  store %struct.target_core_fabric_ops* %0, %struct.target_core_fabric_ops** %7, align 8
  store %struct.se_wwn* %1, %struct.se_wwn** %8, align 8
  store %struct.se_portal_group.1* %2, %struct.se_portal_group.1** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i64, i64* @TRANSPORT_MAX_LUNS_PER_TPG, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.se_lun** @array_zalloc(i64 %14, i32 48, i32 %15)
  %17 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %18 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %17, i32 0, i32 2
  store %struct.se_lun** %16, %struct.se_lun*** %18, align 8
  %19 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %20 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %19, i32 0, i32 2
  %21 = load %struct.se_lun**, %struct.se_lun*** %20, align 8
  %22 = icmp ne %struct.se_lun** %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %5
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %165

27:                                               ; preds = %5
  store i64 0, i64* %13, align 8
  br label %28

28:                                               ; preds = %69, %27
  %29 = load i64, i64* %13, align 8
  %30 = load i64, i64* @TRANSPORT_MAX_LUNS_PER_TPG, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %72

32:                                               ; preds = %28
  %33 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %34 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %33, i32 0, i32 2
  %35 = load %struct.se_lun**, %struct.se_lun*** %34, align 8
  %36 = load i64, i64* %13, align 8
  %37 = getelementptr inbounds %struct.se_lun*, %struct.se_lun** %35, i64 %36
  %38 = load %struct.se_lun*, %struct.se_lun** %37, align 8
  store %struct.se_lun* %38, %struct.se_lun** %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load %struct.se_lun*, %struct.se_lun** %12, align 8
  %41 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @SE_LUN_LINK_MAGIC, align 4
  %43 = load %struct.se_lun*, %struct.se_lun** %12, align 8
  %44 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @TRANSPORT_LUN_STATUS_FREE, align 4
  %46 = load %struct.se_lun*, %struct.se_lun** %12, align 8
  %47 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load %struct.se_lun*, %struct.se_lun** %12, align 8
  %49 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %48, i32 0, i32 7
  %50 = call i32 @atomic_set(i32* %49, i32 0)
  %51 = load %struct.se_lun*, %struct.se_lun** %12, align 8
  %52 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %51, i32 0, i32 6
  %53 = call i32 @init_completion(i32* %52)
  %54 = load %struct.se_lun*, %struct.se_lun** %12, align 8
  %55 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %54, i32 0, i32 5
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.se_lun*, %struct.se_lun** %12, align 8
  %58 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %57, i32 0, i32 4
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  %60 = load %struct.se_lun*, %struct.se_lun** %12, align 8
  %61 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %60, i32 0, i32 3
  %62 = call i32 @spin_lock_init(i32* %61)
  %63 = load %struct.se_lun*, %struct.se_lun** %12, align 8
  %64 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %63, i32 0, i32 2
  %65 = call i32 @spin_lock_init(i32* %64)
  %66 = load %struct.se_lun*, %struct.se_lun** %12, align 8
  %67 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %66, i32 0, i32 1
  %68 = call i32 @spin_lock_init(i32* %67)
  br label %69

69:                                               ; preds = %32
  %70 = load i64, i64* %13, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %13, align 8
  br label %28

72:                                               ; preds = %28
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %75 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %78 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %77, i32 0, i32 11
  store i8* %76, i8** %78, align 8
  %79 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %7, align 8
  %80 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %81 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %80, i32 0, i32 10
  store %struct.target_core_fabric_ops* %79, %struct.target_core_fabric_ops** %81, align 8
  %82 = load %struct.se_wwn*, %struct.se_wwn** %8, align 8
  %83 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %84 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %83, i32 0, i32 9
  store %struct.se_wwn* %82, %struct.se_wwn** %84, align 8
  %85 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %86 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %85, i32 0, i32 8
  %87 = call i32 @atomic_set(i32* %86, i32 0)
  %88 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %89 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %88, i32 0, i32 7
  %90 = call i32 @INIT_LIST_HEAD(i32* %89)
  %91 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %92 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %91, i32 0, i32 1
  %93 = call i32 @INIT_LIST_HEAD(i32* %92)
  %94 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %95 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %94, i32 0, i32 6
  %96 = call i32 @INIT_LIST_HEAD(i32* %95)
  %97 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %98 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %97, i32 0, i32 5
  %99 = call i32 @spin_lock_init(i32* %98)
  %100 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %101 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %100, i32 0, i32 4
  %102 = call i32 @spin_lock_init(i32* %101)
  %103 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %104 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %103, i32 0, i32 3
  %105 = call i32 @spin_lock_init(i32* %104)
  %106 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %107 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @TRANSPORT_TPG_TYPE_NORMAL, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %72
  %112 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %113 = call i64 @core_tpg_setup_virtual_lun0(%struct.se_portal_group.1* %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %117 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %116, i32 0, i32 2
  %118 = load %struct.se_lun**, %struct.se_lun*** %117, align 8
  %119 = load i64, i64* @TRANSPORT_MAX_LUNS_PER_TPG, align 8
  %120 = call i32 @array_free(%struct.se_lun** %118, i64 %119)
  %121 = load i32, i32* @ENOMEM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %165

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %123, %72
  %125 = call i32 @spin_lock_bh(i32* @tpg_lock)
  %126 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %127 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %126, i32 0, i32 1
  %128 = call i32 @list_add_tail(i32* %127, i32* @tpg_list)
  %129 = call i32 @spin_unlock_bh(i32* @tpg_lock)
  %130 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %7, align 8
  %131 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %130, i32 0, i32 2
  %132 = load i32 (...)*, i32 (...)** %131, align 8
  %133 = call i32 (...) %132()
  %134 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %135 = getelementptr inbounds %struct.se_portal_group.1, %struct.se_portal_group.1* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @TRANSPORT_TPG_TYPE_NORMAL, align 4
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %141 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %7, align 8
  %142 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %141, i32 0, i32 0
  %143 = load i8* (%struct.se_portal_group*)*, i8* (%struct.se_portal_group*)** %142, align 8
  %144 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %145 = bitcast %struct.se_portal_group.1* %144 to %struct.se_portal_group*
  %146 = call i8* %143(%struct.se_portal_group* %145)
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %149

148:                                              ; preds = %124
  br label %156

149:                                              ; preds = %124
  %150 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %7, align 8
  %151 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %150, i32 0, i32 0
  %152 = load i8* (%struct.se_portal_group*)*, i8* (%struct.se_portal_group*)** %151, align 8
  %153 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %154 = bitcast %struct.se_portal_group.1* %153 to %struct.se_portal_group*
  %155 = call i8* %152(%struct.se_portal_group* %154)
  br label %156

156:                                              ; preds = %149, %148
  %157 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %148 ], [ %155, %149 ]
  %158 = load %struct.target_core_fabric_ops*, %struct.target_core_fabric_ops** %7, align 8
  %159 = getelementptr inbounds %struct.target_core_fabric_ops, %struct.target_core_fabric_ops* %158, i32 0, i32 1
  %160 = load i32 (%struct.se_portal_group.0*)*, i32 (%struct.se_portal_group.0*)** %159, align 8
  %161 = load %struct.se_portal_group.1*, %struct.se_portal_group.1** %9, align 8
  %162 = bitcast %struct.se_portal_group.1* %161 to %struct.se_portal_group.0*
  %163 = call i32 %160(%struct.se_portal_group.0* %162)
  %164 = call i32 @pr_debug(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0), i32 %133, i8* %140, i8* %157, i32 %163)
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %156, %115, %23
  %166 = load i32, i32* %6, align 4
  ret i32 %166
}

declare dso_local %struct.se_lun** @array_zalloc(i64, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @core_tpg_setup_virtual_lun0(%struct.se_portal_group.1*) #1

declare dso_local i32 @array_free(%struct.se_lun**, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

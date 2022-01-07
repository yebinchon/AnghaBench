; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_core_export_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_core_export_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.se_portal_group = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (...)* }
%struct.se_port = type { i32, i32, i32, %struct.se_lun*, %struct.se_portal_group* }
%struct.se_lun = type { i32, %struct.se_port* }
%struct.t10_alua_tg_pt_gp_member = type { i32 }

@TRANSPORT_PLUGIN_PHBA_PDEV = common dso_local global i64 0, align 8
@HBA_FLAGS_INTERNAL_USE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unable to allocate t10_alua_tg_pt_gp_member_t\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"%s/%s: Adding to default ALUA Target Port Group: alua/default_tg_pt_gp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_device*, %struct.se_portal_group*, %struct.se_port*, %struct.se_lun*)* @core_export_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @core_export_port(%struct.se_device* %0, %struct.se_portal_group* %1, %struct.se_port* %2, %struct.se_lun* %3) #0 {
  %5 = alloca %struct.se_device*, align 8
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca %struct.se_port*, align 8
  %8 = alloca %struct.se_lun*, align 8
  %9 = alloca %struct.t10_alua_tg_pt_gp_member*, align 8
  store %struct.se_device* %0, %struct.se_device** %5, align 8
  store %struct.se_portal_group* %1, %struct.se_portal_group** %6, align 8
  store %struct.se_port* %2, %struct.se_port** %7, align 8
  store %struct.se_lun* %3, %struct.se_lun** %8, align 8
  store %struct.t10_alua_tg_pt_gp_member* null, %struct.t10_alua_tg_pt_gp_member** %9, align 8
  %10 = load %struct.se_device*, %struct.se_device** %5, align 8
  %11 = getelementptr inbounds %struct.se_device, %struct.se_device* %10, i32 0, i32 4
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %14 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %17 = load %struct.se_port*, %struct.se_port** %7, align 8
  %18 = getelementptr inbounds %struct.se_port, %struct.se_port* %17, i32 0, i32 4
  store %struct.se_portal_group* %16, %struct.se_portal_group** %18, align 8
  %19 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %20 = load %struct.se_port*, %struct.se_port** %7, align 8
  %21 = getelementptr inbounds %struct.se_port, %struct.se_port* %20, i32 0, i32 3
  store %struct.se_lun* %19, %struct.se_lun** %21, align 8
  %22 = load %struct.se_port*, %struct.se_port** %7, align 8
  %23 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %24 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %23, i32 0, i32 1
  store %struct.se_port* %22, %struct.se_port** %24, align 8
  %25 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %26 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.se_port*, %struct.se_port** %7, align 8
  %29 = getelementptr inbounds %struct.se_port, %struct.se_port* %28, i32 0, i32 2
  %30 = load %struct.se_device*, %struct.se_device** %5, align 8
  %31 = getelementptr inbounds %struct.se_device, %struct.se_device* %30, i32 0, i32 5
  %32 = call i32 @list_add_tail(i32* %29, i32* %31)
  %33 = load %struct.se_device*, %struct.se_device** %5, align 8
  %34 = getelementptr inbounds %struct.se_device, %struct.se_device* %33, i32 0, i32 4
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.se_device*, %struct.se_device** %5, align 8
  %37 = getelementptr inbounds %struct.se_device, %struct.se_device* %36, i32 0, i32 1
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TRANSPORT_PLUGIN_PHBA_PDEV, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %4
  %44 = load %struct.se_device*, %struct.se_device** %5, align 8
  %45 = getelementptr inbounds %struct.se_device, %struct.se_device* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @HBA_FLAGS_INTERNAL_USE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %88, label %52

52:                                               ; preds = %43
  %53 = load %struct.se_port*, %struct.se_port** %7, align 8
  %54 = call %struct.t10_alua_tg_pt_gp_member* @core_alua_allocate_tg_pt_gp_mem(%struct.se_port* %53)
  store %struct.t10_alua_tg_pt_gp_member* %54, %struct.t10_alua_tg_pt_gp_member** %9, align 8
  %55 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %9, align 8
  %56 = call i64 @IS_ERR(%struct.t10_alua_tg_pt_gp_member* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %9, align 8
  %60 = icmp ne %struct.t10_alua_tg_pt_gp_member* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58, %52
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %98

63:                                               ; preds = %58
  %64 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %9, align 8
  %65 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %64, i32 0, i32 0
  %66 = call i32 @spin_lock(i32* %65)
  %67 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %9, align 8
  %68 = load %struct.se_device*, %struct.se_device** %5, align 8
  %69 = getelementptr inbounds %struct.se_device, %struct.se_device* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @__core_alua_attach_tg_pt_gp_mem(%struct.t10_alua_tg_pt_gp_member* %67, i32 %71)
  %73 = load %struct.t10_alua_tg_pt_gp_member*, %struct.t10_alua_tg_pt_gp_member** %9, align 8
  %74 = getelementptr inbounds %struct.t10_alua_tg_pt_gp_member, %struct.t10_alua_tg_pt_gp_member* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.se_device*, %struct.se_device** %5, align 8
  %77 = getelementptr inbounds %struct.se_device, %struct.se_device* %76, i32 0, i32 1
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %82 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32 (...)*, i32 (...)** %84, align 8
  %86 = call i32 (...) %85()
  %87 = call i32 @pr_debug(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %80, i32 %86)
  br label %88

88:                                               ; preds = %63, %43, %4
  %89 = load %struct.se_device*, %struct.se_device** %5, align 8
  %90 = getelementptr inbounds %struct.se_device, %struct.se_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load %struct.se_port*, %struct.se_port** %7, align 8
  %94 = getelementptr inbounds %struct.se_port, %struct.se_port* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.se_port*, %struct.se_port** %7, align 8
  %97 = getelementptr inbounds %struct.se_port, %struct.se_port* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %88, %61
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.t10_alua_tg_pt_gp_member* @core_alua_allocate_tg_pt_gp_mem(%struct.se_port*) #1

declare dso_local i64 @IS_ERR(%struct.t10_alua_tg_pt_gp_member*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @__core_alua_attach_tg_pt_gp_mem(%struct.t10_alua_tg_pt_gp_member*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

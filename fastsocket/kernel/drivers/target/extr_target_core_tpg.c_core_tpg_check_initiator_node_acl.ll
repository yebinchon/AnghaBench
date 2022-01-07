; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_check_initiator_node_acl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_tpg.c_core_tpg_check_initiator_node_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_node_acl = type { i32, i32, i32, i32, i32, %struct.se_portal_group*, i32, i32, i32, i32, i32, i32, i32 }
%struct.se_portal_group = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.se_portal_group*)*, i32 (...)*, i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*, %struct.se_node_acl*)*, i32 (%struct.se_node_acl*)*, i32 (%struct.se_portal_group*)*, %struct.se_node_acl* (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)* }

@TRANSPORT_IQN_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SCSI_AUTH_INTR_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"%s_TPG[%u] - Added DYNAMIC ACL with TCQ Depth: %d for %s Initiator Node: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_node_acl* @core_tpg_check_initiator_node_acl(%struct.se_portal_group* %0, i8* %1) #0 {
  %3 = alloca %struct.se_node_acl*, align 8
  %4 = alloca %struct.se_portal_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_node_acl*, align 8
  store %struct.se_portal_group* %0, %struct.se_portal_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.se_node_acl* @core_tpg_get_initiator_node_acl(%struct.se_portal_group* %7, i8* %8)
  store %struct.se_node_acl* %9, %struct.se_node_acl** %6, align 8
  %10 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %11 = icmp ne %struct.se_node_acl* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  store %struct.se_node_acl* %13, %struct.se_node_acl** %3, align 8
  br label %181

14:                                               ; preds = %2
  %15 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %16 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 7
  %19 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %18, align 8
  %20 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %21 = call i32 %19(%struct.se_portal_group* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store %struct.se_node_acl* null, %struct.se_node_acl** %3, align 8
  br label %181

24:                                               ; preds = %14
  %25 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %26 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 6
  %29 = load %struct.se_node_acl* (%struct.se_portal_group*)*, %struct.se_node_acl* (%struct.se_portal_group*)** %28, align 8
  %30 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %31 = call %struct.se_node_acl* %29(%struct.se_portal_group* %30)
  store %struct.se_node_acl* %31, %struct.se_node_acl** %6, align 8
  %32 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %33 = icmp ne %struct.se_node_acl* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  store %struct.se_node_acl* null, %struct.se_node_acl** %3, align 8
  br label %181

35:                                               ; preds = %24
  %36 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %37 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %36, i32 0, i32 2
  %38 = call i32 @INIT_LIST_HEAD(i32* %37)
  %39 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %40 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %39, i32 0, i32 12
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %43 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %42, i32 0, i32 11
  %44 = call i32 @kref_init(i32* %43)
  %45 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %46 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %45, i32 0, i32 10
  %47 = call i32 @init_completion(i32* %46)
  %48 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %49 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %48, i32 0, i32 9
  %50 = call i32 @spin_lock_init(i32* %49)
  %51 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %52 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %51, i32 0, i32 8
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %55 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %54, i32 0, i32 7
  %56 = call i32 @atomic_set(i32* %55, i32 0)
  %57 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %58 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 5
  %61 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %60, align 8
  %62 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %63 = call i32 %61(%struct.se_portal_group* %62)
  %64 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %65 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %67 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @TRANSPORT_IQN_LEN, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = call i32 @snprintf(i32 %68, i32 %69, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %70)
  %72 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %73 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %74 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %73, i32 0, i32 5
  store %struct.se_portal_group* %72, %struct.se_portal_group** %74, align 8
  %75 = load i32, i32* @SCSI_AUTH_INTR_INDEX, align 4
  %76 = call i32 @scsi_get_new_index(i32 %75)
  %77 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %78 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %80 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %79, i32 0, i32 3
  %81 = call i32 @spin_lock_init(i32* %80)
  %82 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %83 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %85 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 4
  %88 = load i32 (%struct.se_node_acl*)*, i32 (%struct.se_node_acl*)** %87, align 8
  %89 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %90 = call i32 %88(%struct.se_node_acl* %89)
  %91 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %92 = call i64 @core_create_device_list_for_node(%struct.se_node_acl* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %35
  %95 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %96 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  %99 = load i32 (%struct.se_portal_group*, %struct.se_node_acl*)*, i32 (%struct.se_portal_group*, %struct.se_node_acl*)** %98, align 8
  %100 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %101 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %102 = call i32 %99(%struct.se_portal_group* %100, %struct.se_node_acl* %101)
  store %struct.se_node_acl* null, %struct.se_node_acl** %3, align 8
  br label %181

103:                                              ; preds = %35
  %104 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %105 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %106 = call i64 @core_set_queue_depth_for_node(%struct.se_portal_group* %104, %struct.se_node_acl* %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %103
  %109 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %110 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %111 = call i32 @core_free_device_list_for_node(%struct.se_node_acl* %109, %struct.se_portal_group* %110)
  %112 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %113 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i32 (%struct.se_portal_group*, %struct.se_node_acl*)*, i32 (%struct.se_portal_group*, %struct.se_node_acl*)** %115, align 8
  %117 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %118 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %119 = call i32 %116(%struct.se_portal_group* %117, %struct.se_node_acl* %118)
  store %struct.se_node_acl* null, %struct.se_node_acl** %3, align 8
  br label %181

120:                                              ; preds = %103
  %121 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %122 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %124, align 8
  %126 = icmp eq i32 (%struct.se_portal_group*)* %125, null
  br i1 %126, label %136, label %127

127:                                              ; preds = %120
  %128 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %129 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %131, align 8
  %133 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %134 = call i32 %132(%struct.se_portal_group* %133)
  %135 = icmp ne i32 %134, 1
  br i1 %135, label %136, label %140

136:                                              ; preds = %127, %120
  %137 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %138 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %139 = call i32 @core_tpg_add_node_to_devs(%struct.se_node_acl* %137, %struct.se_portal_group* %138)
  br label %140

140:                                              ; preds = %136, %127
  %141 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %142 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %141, i32 0, i32 1
  %143 = call i32 @spin_lock_irq(i32* %142)
  %144 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %145 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %144, i32 0, i32 2
  %146 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %147 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %146, i32 0, i32 3
  %148 = call i32 @list_add_tail(i32* %145, i32* %147)
  %149 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %150 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 4
  %153 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %154 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %153, i32 0, i32 1
  %155 = call i32 @spin_unlock_irq(i32* %154)
  %156 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %157 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %156, i32 0, i32 0
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32 (...)*, i32 (...)** %159, align 8
  %161 = call i32 (...) %160()
  %162 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %163 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %162, i32 0, i32 0
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 2
  %166 = load i32 (%struct.se_portal_group*)*, i32 (%struct.se_portal_group*)** %165, align 8
  %167 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %168 = call i32 %166(%struct.se_portal_group* %167)
  %169 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  %170 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.se_portal_group*, %struct.se_portal_group** %4, align 8
  %173 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %172, i32 0, i32 0
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 1
  %176 = load i32 (...)*, i32 (...)** %175, align 8
  %177 = call i32 (...) %176()
  %178 = load i8*, i8** %5, align 8
  %179 = call i32 @pr_debug(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %161, i32 %168, i32 %171, i32 %177, i8* %178)
  %180 = load %struct.se_node_acl*, %struct.se_node_acl** %6, align 8
  store %struct.se_node_acl* %180, %struct.se_node_acl** %3, align 8
  br label %181

181:                                              ; preds = %140, %108, %94, %34, %23, %12
  %182 = load %struct.se_node_acl*, %struct.se_node_acl** %3, align 8
  ret %struct.se_node_acl* %182
}

declare dso_local %struct.se_node_acl* @core_tpg_get_initiator_node_acl(%struct.se_portal_group*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @scsi_get_new_index(i32) #1

declare dso_local i64 @core_create_device_list_for_node(%struct.se_node_acl*) #1

declare dso_local i64 @core_set_queue_depth_for_node(%struct.se_portal_group*, %struct.se_node_acl*) #1

declare dso_local i32 @core_free_device_list_for_node(%struct.se_node_acl*, %struct.se_portal_group*) #1

declare dso_local i32 @core_tpg_add_node_to_devs(%struct.se_node_acl*, %struct.se_portal_group*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

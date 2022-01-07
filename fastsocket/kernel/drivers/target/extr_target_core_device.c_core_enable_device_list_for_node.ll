; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_core_enable_device_list_for_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_device.c_core_enable_device_list_for_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_lun = type { %struct.se_port* }
%struct.se_port = type { i32, i32 }
%struct.se_lun_acl = type { i32 }
%struct.se_node_acl = type { i32, %struct.se_dev_entry** }
%struct.se_dev_entry = type { i32, i64, i32, i32, i32, %struct.se_lun_acl*, %struct.se_lun* }
%struct.se_portal_group = type { i32 }

@TRANSPORT_LUNFLAGS_INITIATOR_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"struct se_dev_entry->se_lun_acl already set for demo mode -> explict LUN ACL transition\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [105 x i8] c"struct se_dev_entry->se_lun does match passed struct se_lun for demo mode -> explict LUN ACL transition\0A\00", align 1
@TRANSPORT_LUNFLAGS_READ_WRITE = common dso_local global i64 0, align 8
@TRANSPORT_LUNFLAGS_READ_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @core_enable_device_list_for_node(%struct.se_lun* %0, %struct.se_lun_acl* %1, i64 %2, i64 %3, %struct.se_node_acl* %4, %struct.se_portal_group* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.se_lun*, align 8
  %9 = alloca %struct.se_lun_acl*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.se_node_acl*, align 8
  %13 = alloca %struct.se_portal_group*, align 8
  %14 = alloca %struct.se_port*, align 8
  %15 = alloca %struct.se_dev_entry*, align 8
  store %struct.se_lun* %0, %struct.se_lun** %8, align 8
  store %struct.se_lun_acl* %1, %struct.se_lun_acl** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.se_node_acl* %4, %struct.se_node_acl** %12, align 8
  store %struct.se_portal_group* %5, %struct.se_portal_group** %13, align 8
  %16 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %17 = getelementptr inbounds %struct.se_lun, %struct.se_lun* %16, i32 0, i32 0
  %18 = load %struct.se_port*, %struct.se_port** %17, align 8
  store %struct.se_port* %18, %struct.se_port** %14, align 8
  %19 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %20 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_irq(i32* %20)
  %22 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %23 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %22, i32 0, i32 1
  %24 = load %struct.se_dev_entry**, %struct.se_dev_entry*** %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds %struct.se_dev_entry*, %struct.se_dev_entry** %24, i64 %25
  %27 = load %struct.se_dev_entry*, %struct.se_dev_entry** %26, align 8
  store %struct.se_dev_entry* %27, %struct.se_dev_entry** %15, align 8
  %28 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %29 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TRANSPORT_LUNFLAGS_INITIATOR_ACCESS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %99

34:                                               ; preds = %6
  %35 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %36 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %35, i32 0, i32 5
  %37 = load %struct.se_lun_acl*, %struct.se_lun_acl** %36, align 8
  %38 = icmp ne %struct.se_lun_acl* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %42 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock_irq(i32* %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %168

46:                                               ; preds = %34
  %47 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %48 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %47, i32 0, i32 6
  %49 = load %struct.se_lun*, %struct.se_lun** %48, align 8
  %50 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %51 = icmp ne %struct.se_lun* %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %55 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock_irq(i32* %55)
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %7, align 4
  br label %168

59:                                               ; preds = %46
  %60 = load %struct.se_lun_acl*, %struct.se_lun_acl** %9, align 8
  %61 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %62 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %61, i32 0, i32 5
  store %struct.se_lun_acl* %60, %struct.se_lun_acl** %62, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_WRITE, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %59
  %68 = load i32, i32* @TRANSPORT_LUNFLAGS_READ_ONLY, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %71 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_WRITE, align 8
  %75 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %76 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = or i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 8
  br label %95

81:                                               ; preds = %59
  %82 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_WRITE, align 8
  %83 = xor i64 %82, -1
  %84 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %85 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = and i64 %87, %83
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 8
  %90 = load i32, i32* @TRANSPORT_LUNFLAGS_READ_ONLY, align 4
  %91 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %92 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %81, %67
  %96 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %97 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock_irq(i32* %97)
  store i32 0, i32* %7, align 4
  br label %168

99:                                               ; preds = %6
  %100 = load %struct.se_lun*, %struct.se_lun** %8, align 8
  %101 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %102 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %101, i32 0, i32 6
  store %struct.se_lun* %100, %struct.se_lun** %102, align 8
  %103 = load %struct.se_lun_acl*, %struct.se_lun_acl** %9, align 8
  %104 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %105 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %104, i32 0, i32 5
  store %struct.se_lun_acl* %103, %struct.se_lun_acl** %105, align 8
  %106 = load i64, i64* %10, align 8
  %107 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %108 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load i32, i32* @TRANSPORT_LUNFLAGS_INITIATOR_ACCESS, align 4
  %110 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %111 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_WRITE, align 8
  %116 = and i64 %114, %115
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %99
  %119 = load i32, i32* @TRANSPORT_LUNFLAGS_READ_ONLY, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %122 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_WRITE, align 8
  %126 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %127 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = or i64 %129, %125
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 8
  br label %146

132:                                              ; preds = %99
  %133 = load i64, i64* @TRANSPORT_LUNFLAGS_READ_WRITE, align 8
  %134 = xor i64 %133, -1
  %135 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %136 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = and i64 %138, %134
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 8
  %141 = load i32, i32* @TRANSPORT_LUNFLAGS_READ_ONLY, align 4
  %142 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %143 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %132, %118
  %147 = call i32 (...) @get_jiffies_64()
  %148 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %149 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %151 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = load %struct.se_node_acl*, %struct.se_node_acl** %12, align 8
  %155 = getelementptr inbounds %struct.se_node_acl, %struct.se_node_acl* %154, i32 0, i32 0
  %156 = call i32 @spin_unlock_irq(i32* %155)
  %157 = load %struct.se_port*, %struct.se_port** %14, align 8
  %158 = getelementptr inbounds %struct.se_port, %struct.se_port* %157, i32 0, i32 0
  %159 = call i32 @spin_lock_bh(i32* %158)
  %160 = load %struct.se_dev_entry*, %struct.se_dev_entry** %15, align 8
  %161 = getelementptr inbounds %struct.se_dev_entry, %struct.se_dev_entry* %160, i32 0, i32 2
  %162 = load %struct.se_port*, %struct.se_port** %14, align 8
  %163 = getelementptr inbounds %struct.se_port, %struct.se_port* %162, i32 0, i32 1
  %164 = call i32 @list_add_tail(i32* %161, i32* %163)
  %165 = load %struct.se_port*, %struct.se_port** %14, align 8
  %166 = getelementptr inbounds %struct.se_port, %struct.se_port* %165, i32 0, i32 0
  %167 = call i32 @spin_unlock_bh(i32* %166)
  store i32 0, i32* %7, align 4
  br label %168

168:                                              ; preds = %146, %95, %52, %39
  %169 = load i32, i32* %7, align 4
  ret i32 %169
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @get_jiffies_64(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

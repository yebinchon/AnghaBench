; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_receive_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_auditfilter.c_audit_receive_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.audit_netlink_list = type { i32, i32 }
%struct.audit_entry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@audit_filter_mutex = common dso_local global i32 0, align 4
@audit_send_list = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"audit_send_list\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"add rule\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"remove rule\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @audit_receive_filter(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.task_struct*, align 8
  %21 = alloca %struct.audit_netlink_list*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.audit_entry*, align 8
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %22, align 4
  %24 = load i32, i32* %11, align 4
  switch i32 %24, label %152 [
    i32 129, label %25
    i32 128, label %25
    i32 133, label %72
    i32 132, label %72
    i32 131, label %114
    i32 130, label %114
  ]

25:                                               ; preds = %9, %9
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.audit_netlink_list* @kmalloc(i32 8, i32 %26)
  store %struct.audit_netlink_list* %27, %struct.audit_netlink_list** %21, align 8
  %28 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %21, align 8
  %29 = icmp ne %struct.audit_netlink_list* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %157

33:                                               ; preds = %25
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %21, align 8
  %36 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %21, align 8
  %38 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %37, i32 0, i32 1
  %39 = call i32 @skb_queue_head_init(i32* %38)
  %40 = call i32 @mutex_lock(i32* @audit_filter_mutex)
  %41 = load i32, i32* %11, align 4
  %42 = icmp eq i32 %41, 129
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %21, align 8
  %47 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %46, i32 0, i32 1
  %48 = call i32 @audit_list(i32 %44, i32 %45, i32* %47)
  br label %55

49:                                               ; preds = %33
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %21, align 8
  %53 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %52, i32 0, i32 1
  %54 = call i32 @audit_list_rules(i32 %50, i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %49, %43
  %56 = call i32 @mutex_unlock(i32* @audit_filter_mutex)
  %57 = load i32, i32* @audit_send_list, align 4
  %58 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %21, align 8
  %59 = call %struct.task_struct* @kthread_run(i32 %57, %struct.audit_netlink_list* %58, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.task_struct* %59, %struct.task_struct** %20, align 8
  %60 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %61 = call i32 @IS_ERR(%struct.task_struct* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %21, align 8
  %65 = getelementptr inbounds %struct.audit_netlink_list, %struct.audit_netlink_list* %64, i32 0, i32 1
  %66 = call i32 @skb_queue_purge(i32* %65)
  %67 = load %struct.audit_netlink_list*, %struct.audit_netlink_list** %21, align 8
  %68 = call i32 @kfree(%struct.audit_netlink_list* %67)
  %69 = load %struct.task_struct*, %struct.task_struct** %20, align 8
  %70 = call i32 @PTR_ERR(%struct.task_struct* %69)
  store i32 %70, i32* %22, align 4
  br label %71

71:                                               ; preds = %63, %55
  br label %155

72:                                               ; preds = %9, %9
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 133
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i8*, i8** %15, align 8
  %77 = call %struct.task_struct* @audit_rule_to_entry(i8* %76)
  %78 = bitcast %struct.task_struct* %77 to %struct.audit_entry*
  store %struct.audit_entry* %78, %struct.audit_entry** %23, align 8
  br label %84

79:                                               ; preds = %72
  %80 = load i8*, i8** %15, align 8
  %81 = load i64, i64* %16, align 8
  %82 = call %struct.task_struct* @audit_data_to_entry(i8* %80, i64 %81)
  %83 = bitcast %struct.task_struct* %82 to %struct.audit_entry*
  store %struct.audit_entry* %83, %struct.audit_entry** %23, align 8
  br label %84

84:                                               ; preds = %79, %75
  %85 = load %struct.audit_entry*, %struct.audit_entry** %23, align 8
  %86 = bitcast %struct.audit_entry* %85 to %struct.task_struct*
  %87 = call i32 @IS_ERR(%struct.task_struct* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = load %struct.audit_entry*, %struct.audit_entry** %23, align 8
  %91 = bitcast %struct.audit_entry* %90 to %struct.task_struct*
  %92 = call i32 @PTR_ERR(%struct.task_struct* %91)
  store i32 %92, i32* %10, align 4
  br label %157

93:                                               ; preds = %84
  %94 = load %struct.audit_entry*, %struct.audit_entry** %23, align 8
  %95 = bitcast %struct.audit_entry* %94 to %struct.task_struct*
  %96 = call i32 @audit_add_rule(%struct.task_struct* %95)
  store i32 %96, i32* %22, align 4
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %19, align 4
  %100 = load %struct.audit_entry*, %struct.audit_entry** %23, align 8
  %101 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %100, i32 0, i32 0
  %102 = load i32, i32* %22, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i32 @audit_log_rule_change(i32 %97, i32 %98, i32 %99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %101, i32 %105)
  %107 = load i32, i32* %22, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %93
  %110 = load %struct.audit_entry*, %struct.audit_entry** %23, align 8
  %111 = bitcast %struct.audit_entry* %110 to %struct.task_struct*
  %112 = call i32 @audit_free_rule(%struct.task_struct* %111)
  br label %113

113:                                              ; preds = %109, %93
  br label %155

114:                                              ; preds = %9, %9
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 131
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i8*, i8** %15, align 8
  %119 = call %struct.task_struct* @audit_rule_to_entry(i8* %118)
  %120 = bitcast %struct.task_struct* %119 to %struct.audit_entry*
  store %struct.audit_entry* %120, %struct.audit_entry** %23, align 8
  br label %126

121:                                              ; preds = %114
  %122 = load i8*, i8** %15, align 8
  %123 = load i64, i64* %16, align 8
  %124 = call %struct.task_struct* @audit_data_to_entry(i8* %122, i64 %123)
  %125 = bitcast %struct.task_struct* %124 to %struct.audit_entry*
  store %struct.audit_entry* %125, %struct.audit_entry** %23, align 8
  br label %126

126:                                              ; preds = %121, %117
  %127 = load %struct.audit_entry*, %struct.audit_entry** %23, align 8
  %128 = bitcast %struct.audit_entry* %127 to %struct.task_struct*
  %129 = call i32 @IS_ERR(%struct.task_struct* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load %struct.audit_entry*, %struct.audit_entry** %23, align 8
  %133 = bitcast %struct.audit_entry* %132 to %struct.task_struct*
  %134 = call i32 @PTR_ERR(%struct.task_struct* %133)
  store i32 %134, i32* %10, align 4
  br label %157

135:                                              ; preds = %126
  %136 = load %struct.audit_entry*, %struct.audit_entry** %23, align 8
  %137 = bitcast %struct.audit_entry* %136 to %struct.task_struct*
  %138 = call i32 @audit_del_rule(%struct.task_struct* %137)
  store i32 %138, i32* %22, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %18, align 4
  %141 = load i32, i32* %19, align 4
  %142 = load %struct.audit_entry*, %struct.audit_entry** %23, align 8
  %143 = getelementptr inbounds %struct.audit_entry, %struct.audit_entry* %142, i32 0, i32 0
  %144 = load i32, i32* %22, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i32 @audit_log_rule_change(i32 %139, i32 %140, i32 %141, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* %143, i32 %147)
  %149 = load %struct.audit_entry*, %struct.audit_entry** %23, align 8
  %150 = bitcast %struct.audit_entry* %149 to %struct.task_struct*
  %151 = call i32 @audit_free_rule(%struct.task_struct* %150)
  br label %155

152:                                              ; preds = %9
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %10, align 4
  br label %157

155:                                              ; preds = %135, %113, %71
  %156 = load i32, i32* %22, align 4
  store i32 %156, i32* %10, align 4
  br label %157

157:                                              ; preds = %155, %152, %131, %89, %30
  %158 = load i32, i32* %10, align 4
  ret i32 %158
}

declare dso_local %struct.audit_netlink_list* @kmalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @audit_list(i32, i32, i32*) #1

declare dso_local i32 @audit_list_rules(i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.audit_netlink_list*, i8*) #1

declare dso_local i32 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @kfree(%struct.audit_netlink_list*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local %struct.task_struct* @audit_rule_to_entry(i8*) #1

declare dso_local %struct.task_struct* @audit_data_to_entry(i8*, i64) #1

declare dso_local i32 @audit_add_rule(%struct.task_struct*) #1

declare dso_local i32 @audit_log_rule_change(i32, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @audit_free_rule(%struct.task_struct*) #1

declare dso_local i32 @audit_del_rule(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

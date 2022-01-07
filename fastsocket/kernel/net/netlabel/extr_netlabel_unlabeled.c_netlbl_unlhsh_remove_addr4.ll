; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlhsh_remove_addr4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlhsh_remove_addr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.netlbl_unlhsh_iface = type { i32, i32 }
%struct.in_addr = type { i32 }
%struct.netlbl_audit = type { i32 }
%struct.netlbl_af4list = type { i32 }
%struct.netlbl_unlhsh_addr4 = type { i32, i32 }
%struct.audit_buffer = type { i32 }
%struct.net_device = type { i32* }

@netlbl_unlhsh_lock = common dso_local global i32 0, align 4
@AUDIT_MAC_UNLBL_STCDEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c" sec_obj=%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" res=%u\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@netlbl_unlhsh_free_addr4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.netlbl_unlhsh_iface*, %struct.in_addr*, %struct.in_addr*, %struct.netlbl_audit*)* @netlbl_unlhsh_remove_addr4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netlbl_unlhsh_remove_addr4(%struct.net* %0, %struct.netlbl_unlhsh_iface* %1, %struct.in_addr* %2, %struct.in_addr* %3, %struct.netlbl_audit* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.netlbl_unlhsh_iface*, align 8
  %9 = alloca %struct.in_addr*, align 8
  %10 = alloca %struct.in_addr*, align 8
  %11 = alloca %struct.netlbl_audit*, align 8
  %12 = alloca %struct.netlbl_af4list*, align 8
  %13 = alloca %struct.netlbl_unlhsh_addr4*, align 8
  %14 = alloca %struct.audit_buffer*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.netlbl_unlhsh_iface* %1, %struct.netlbl_unlhsh_iface** %8, align 8
  store %struct.in_addr* %2, %struct.in_addr** %9, align 8
  store %struct.in_addr* %3, %struct.in_addr** %10, align 8
  store %struct.netlbl_audit* %4, %struct.netlbl_audit** %11, align 8
  %18 = call i32 @spin_lock(i32* @netlbl_unlhsh_lock)
  %19 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %20 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %23 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %8, align 8
  %26 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %25, i32 0, i32 1
  %27 = call %struct.netlbl_af4list* @netlbl_af4list_remove(i32 %21, i32 %24, i32* %26)
  store %struct.netlbl_af4list* %27, %struct.netlbl_af4list** %12, align 8
  %28 = call i32 @spin_unlock(i32* @netlbl_unlhsh_lock)
  %29 = load %struct.netlbl_af4list*, %struct.netlbl_af4list** %12, align 8
  %30 = icmp ne %struct.netlbl_af4list* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load %struct.netlbl_af4list*, %struct.netlbl_af4list** %12, align 8
  %33 = call %struct.netlbl_unlhsh_addr4* @netlbl_unlhsh_addr4_entry(%struct.netlbl_af4list* %32)
  store %struct.netlbl_unlhsh_addr4* %33, %struct.netlbl_unlhsh_addr4** %13, align 8
  br label %35

34:                                               ; preds = %5
  store %struct.netlbl_unlhsh_addr4* null, %struct.netlbl_unlhsh_addr4** %13, align 8
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* @AUDIT_MAC_UNLBL_STCDEL, align 4
  %37 = load %struct.netlbl_audit*, %struct.netlbl_audit** %11, align 8
  %38 = call %struct.audit_buffer* @netlbl_audit_start_common(i32 %36, %struct.netlbl_audit* %37)
  store %struct.audit_buffer* %38, %struct.audit_buffer** %14, align 8
  %39 = load %struct.audit_buffer*, %struct.audit_buffer** %14, align 8
  %40 = icmp ne %struct.audit_buffer* %39, null
  br i1 %40, label %41, label %94

41:                                               ; preds = %35
  %42 = load %struct.net*, %struct.net** %7, align 8
  %43 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %8, align 8
  %44 = getelementptr inbounds %struct.netlbl_unlhsh_iface, %struct.netlbl_unlhsh_iface* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.net_device* @dev_get_by_index(%struct.net* %42, i32 %45)
  store %struct.net_device* %46, %struct.net_device** %15, align 8
  %47 = load %struct.audit_buffer*, %struct.audit_buffer** %14, align 8
  %48 = load %struct.net_device*, %struct.net_device** %15, align 8
  %49 = icmp ne %struct.net_device* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %41
  %51 = load %struct.net_device*, %struct.net_device** %15, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  br label %55

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32* [ %53, %50 ], [ null, %54 ]
  %57 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %58 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.in_addr*, %struct.in_addr** %10, align 8
  %61 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @netlbl_af4list_audit_addr(%struct.audit_buffer* %47, i32 1, i32* %56, i32 %59, i32 %62)
  %64 = load %struct.net_device*, %struct.net_device** %15, align 8
  %65 = icmp ne %struct.net_device* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load %struct.net_device*, %struct.net_device** %15, align 8
  %68 = call i32 @dev_put(%struct.net_device* %67)
  br label %69

69:                                               ; preds = %66, %55
  %70 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %13, align 8
  %71 = icmp ne %struct.netlbl_unlhsh_addr4* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %13, align 8
  %74 = getelementptr inbounds %struct.netlbl_unlhsh_addr4, %struct.netlbl_unlhsh_addr4* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @security_secid_to_secctx(i32 %75, i8** %16, i32* %17)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.audit_buffer*, %struct.audit_buffer** %14, align 8
  %80 = load i8*, i8** %16, align 8
  %81 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %80)
  %82 = load i8*, i8** %16, align 8
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @security_release_secctx(i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %72, %69
  %86 = load %struct.audit_buffer*, %struct.audit_buffer** %14, align 8
  %87 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %13, align 8
  %88 = icmp ne %struct.netlbl_unlhsh_addr4* %87, null
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  %91 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %86, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load %struct.audit_buffer*, %struct.audit_buffer** %14, align 8
  %93 = call i32 @audit_log_end(%struct.audit_buffer* %92)
  br label %94

94:                                               ; preds = %85, %35
  %95 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %13, align 8
  %96 = icmp eq %struct.netlbl_unlhsh_addr4* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @ENOENT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %105

100:                                              ; preds = %94
  %101 = load %struct.netlbl_unlhsh_addr4*, %struct.netlbl_unlhsh_addr4** %13, align 8
  %102 = getelementptr inbounds %struct.netlbl_unlhsh_addr4, %struct.netlbl_unlhsh_addr4* %101, i32 0, i32 0
  %103 = load i32, i32* @netlbl_unlhsh_free_addr4, align 4
  %104 = call i32 @call_rcu(i32* %102, i32 %103)
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %100, %97
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.netlbl_af4list* @netlbl_af4list_remove(i32, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.netlbl_unlhsh_addr4* @netlbl_unlhsh_addr4_entry(%struct.netlbl_af4list*) #1

declare dso_local %struct.audit_buffer* @netlbl_audit_start_common(i32, %struct.netlbl_audit*) #1

declare dso_local %struct.net_device* @dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @netlbl_af4list_audit_addr(%struct.audit_buffer*, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i64 @security_secid_to_secctx(i32, i8**, i32*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @security_release_secctx(i8*, i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

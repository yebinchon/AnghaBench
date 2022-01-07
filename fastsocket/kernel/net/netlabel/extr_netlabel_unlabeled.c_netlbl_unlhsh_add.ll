; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlhsh_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netlabel/extr_netlabel_unlabeled.c_netlbl_unlhsh_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.netlbl_audit = type { i32 }
%struct.net_device = type { i32 }
%struct.netlbl_unlhsh_iface = type { i32 }
%struct.audit_buffer = type { i32 }
%struct.in_addr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@netlbl_unlhsh_def = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AUDIT_MAC_UNLBL_STCADD = common dso_local global i32 0, align 4
@netlabel_mgmt_protocount = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c" sec_obj=%s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" res=%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netlbl_unlhsh_add(%struct.net* %0, i8* %1, i8* %2, i8* %3, i32 %4, i32 %5, %struct.netlbl_audit* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.netlbl_audit*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.net_device*, align 8
  %19 = alloca %struct.netlbl_unlhsh_iface*, align 8
  %20 = alloca %struct.audit_buffer*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.in_addr*, align 8
  %24 = alloca %struct.in_addr*, align 8
  store %struct.net* %0, %struct.net** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.netlbl_audit* %6, %struct.netlbl_audit** %15, align 8
  store %struct.audit_buffer* null, %struct.audit_buffer** %20, align 8
  store i8* null, i8** %21, align 8
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 4
  br i1 %27, label %28, label %35

28:                                               ; preds = %7
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %134

35:                                               ; preds = %28, %7
  %36 = call i32 (...) @rcu_read_lock()
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %56

39:                                               ; preds = %35
  %40 = load %struct.net*, %struct.net** %9, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = call %struct.net_device* @dev_get_by_name(%struct.net* %40, i8* %41)
  store %struct.net_device* %42, %struct.net_device** %18, align 8
  %43 = load %struct.net_device*, %struct.net_device** %18, align 8
  %44 = icmp eq %struct.net_device* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %16, align 4
  br label %108

48:                                               ; preds = %39
  %49 = load %struct.net_device*, %struct.net_device** %18, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %17, align 4
  %52 = load %struct.net_device*, %struct.net_device** %18, align 8
  %53 = call i32 @dev_put(%struct.net_device* %52)
  %54 = load i32, i32* %17, align 4
  %55 = call %struct.netlbl_unlhsh_iface* @netlbl_unlhsh_search_iface(i32 %54)
  store %struct.netlbl_unlhsh_iface* %55, %struct.netlbl_unlhsh_iface** %19, align 8
  br label %59

56:                                               ; preds = %35
  store i32 0, i32* %17, align 4
  %57 = load i32, i32* @netlbl_unlhsh_def, align 4
  %58 = call %struct.netlbl_unlhsh_iface* @rcu_dereference(i32 %57)
  store %struct.netlbl_unlhsh_iface* %58, %struct.netlbl_unlhsh_iface** %19, align 8
  br label %59

59:                                               ; preds = %56, %48
  %60 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %19, align 8
  %61 = icmp eq %struct.netlbl_unlhsh_iface* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32, i32* %17, align 4
  %64 = call %struct.netlbl_unlhsh_iface* @netlbl_unlhsh_add_iface(i32 %63)
  store %struct.netlbl_unlhsh_iface* %64, %struct.netlbl_unlhsh_iface** %19, align 8
  %65 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %19, align 8
  %66 = icmp eq %struct.netlbl_unlhsh_iface* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %16, align 4
  br label %108

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %59
  %72 = load i32, i32* @AUDIT_MAC_UNLBL_STCADD, align 4
  %73 = load %struct.netlbl_audit*, %struct.netlbl_audit** %15, align 8
  %74 = call %struct.audit_buffer* @netlbl_audit_start_common(i32 %72, %struct.netlbl_audit* %73)
  store %struct.audit_buffer* %74, %struct.audit_buffer** %20, align 8
  %75 = load i32, i32* %13, align 4
  switch i32 %75, label %99 [
    i32 4, label %76
  ]

76:                                               ; preds = %71
  %77 = load i8*, i8** %11, align 8
  %78 = bitcast i8* %77 to %struct.in_addr*
  store %struct.in_addr* %78, %struct.in_addr** %23, align 8
  %79 = load i8*, i8** %12, align 8
  %80 = bitcast i8* %79 to %struct.in_addr*
  store %struct.in_addr* %80, %struct.in_addr** %24, align 8
  %81 = load %struct.netlbl_unlhsh_iface*, %struct.netlbl_unlhsh_iface** %19, align 8
  %82 = load %struct.in_addr*, %struct.in_addr** %23, align 8
  %83 = load %struct.in_addr*, %struct.in_addr** %24, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @netlbl_unlhsh_add_addr4(%struct.netlbl_unlhsh_iface* %81, %struct.in_addr* %82, %struct.in_addr* %83, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load %struct.audit_buffer*, %struct.audit_buffer** %20, align 8
  %87 = icmp ne %struct.audit_buffer* %86, null
  br i1 %87, label %88, label %98

88:                                               ; preds = %76
  %89 = load %struct.audit_buffer*, %struct.audit_buffer** %20, align 8
  %90 = load i8*, i8** %10, align 8
  %91 = load %struct.in_addr*, %struct.in_addr** %23, align 8
  %92 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.in_addr*, %struct.in_addr** %24, align 8
  %95 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @netlbl_af4list_audit_addr(%struct.audit_buffer* %89, i32 1, i8* %90, i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %88, %76
  br label %102

99:                                               ; preds = %71
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %16, align 4
  br label %102

102:                                              ; preds = %99, %98
  %103 = load i32, i32* %16, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = call i32 @atomic_inc(i32* @netlabel_mgmt_protocount)
  br label %107

107:                                              ; preds = %105, %102
  br label %108

108:                                              ; preds = %107, %67, %45
  %109 = call i32 (...) @rcu_read_unlock()
  %110 = load %struct.audit_buffer*, %struct.audit_buffer** %20, align 8
  %111 = icmp ne %struct.audit_buffer* %110, null
  br i1 %111, label %112, label %132

112:                                              ; preds = %108
  %113 = load i32, i32* %14, align 4
  %114 = call i64 @security_secid_to_secctx(i32 %113, i8** %21, i32* %22)
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load %struct.audit_buffer*, %struct.audit_buffer** %20, align 8
  %118 = load i8*, i8** %21, align 8
  %119 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %117, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %118)
  %120 = load i8*, i8** %21, align 8
  %121 = load i32, i32* %22, align 4
  %122 = call i32 @security_release_secctx(i8* %120, i32 %121)
  br label %123

123:                                              ; preds = %116, %112
  %124 = load %struct.audit_buffer*, %struct.audit_buffer** %20, align 8
  %125 = load i32, i32* %16, align 4
  %126 = icmp eq i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 1, i32 0
  %129 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  %130 = load %struct.audit_buffer*, %struct.audit_buffer** %20, align 8
  %131 = call i32 @audit_log_end(%struct.audit_buffer* %130)
  br label %132

132:                                              ; preds = %123, %108
  %133 = load i32, i32* %16, align 4
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %132, %32
  %135 = load i32, i32* %8, align 4
  ret i32 %135
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.net_device* @dev_get_by_name(%struct.net*, i8*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local %struct.netlbl_unlhsh_iface* @netlbl_unlhsh_search_iface(i32) #1

declare dso_local %struct.netlbl_unlhsh_iface* @rcu_dereference(i32) #1

declare dso_local %struct.netlbl_unlhsh_iface* @netlbl_unlhsh_add_iface(i32) #1

declare dso_local %struct.audit_buffer* @netlbl_audit_start_common(i32, %struct.netlbl_audit*) #1

declare dso_local i32 @netlbl_unlhsh_add_addr4(%struct.netlbl_unlhsh_iface*, %struct.in_addr*, %struct.in_addr*, i32) #1

declare dso_local i32 @netlbl_af4list_audit_addr(%struct.audit_buffer*, i32, i8*, i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @security_secid_to_secctx(i32, i8**, i32*) #1

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @security_release_secctx(i8*, i32) #1

declare dso_local i32 @audit_log_end(%struct.audit_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

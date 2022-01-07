; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_update_defense_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_update_defense_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinfo = type { i32, i32 }

@update_defense_level.old_secure_tcp = internal global i32 0, align 4
@sysctl_ip_vs_amemthresh = common dso_local global i32 0, align 4
@__ip_vs_dropentry_lock = common dso_local global i32 0, align 4
@sysctl_ip_vs_drop_entry = common dso_local global i32 0, align 4
@ip_vs_dropentry = common dso_local global i32 0, align 4
@__ip_vs_droppacket_lock = common dso_local global i32 0, align 4
@sysctl_ip_vs_drop_packet = common dso_local global i32 0, align 4
@ip_vs_drop_rate = common dso_local global i32 0, align 4
@ip_vs_drop_counter = common dso_local global i32 0, align 4
@sysctl_ip_vs_am_droprate = common dso_local global i32 0, align 4
@__ip_vs_securetcp_lock = common dso_local global i32 0, align 4
@sysctl_ip_vs_secure_tcp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @update_defense_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_defense_level() #0 {
  %1 = alloca %struct.sysinfo, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 -1, i32* %4, align 4
  %5 = call i32 @si_meminfo(%struct.sysinfo* %1)
  %6 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %1, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %7, %9
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @sysctl_ip_vs_amemthresh, align 4
  %13 = icmp slt i32 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %3, align 4
  %15 = call i32 (...) @local_bh_disable()
  %16 = call i32 @spin_lock(i32* @__ip_vs_dropentry_lock)
  %17 = load i32, i32* @sysctl_ip_vs_drop_entry, align 4
  switch i32 %17, label %38 [
    i32 0, label %18
    i32 1, label %20
    i32 2, label %28
    i32 3, label %36
  ]

18:                                               ; preds = %0
  %19 = call i32 @atomic_set(i32* @ip_vs_dropentry, i32 0)
  br label %38

20:                                               ; preds = %0
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 @atomic_set(i32* @ip_vs_dropentry, i32 1)
  store i32 2, i32* @sysctl_ip_vs_drop_entry, align 4
  br label %27

25:                                               ; preds = %20
  %26 = call i32 @atomic_set(i32* @ip_vs_dropentry, i32 0)
  br label %27

27:                                               ; preds = %25, %23
  br label %38

28:                                               ; preds = %0
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @atomic_set(i32* @ip_vs_dropentry, i32 1)
  br label %35

33:                                               ; preds = %28
  %34 = call i32 @atomic_set(i32* @ip_vs_dropentry, i32 0)
  store i32 1, i32* @sysctl_ip_vs_drop_entry, align 4
  br label %35

35:                                               ; preds = %33, %31
  br label %38

36:                                               ; preds = %0
  %37 = call i32 @atomic_set(i32* @ip_vs_dropentry, i32 1)
  br label %38

38:                                               ; preds = %0, %36, %35, %27, %18
  %39 = call i32 @spin_unlock(i32* @__ip_vs_dropentry_lock)
  %40 = call i32 @spin_lock(i32* @__ip_vs_droppacket_lock)
  %41 = load i32, i32* @sysctl_ip_vs_drop_packet, align 4
  switch i32 %41, label %67 [
    i32 0, label %42
    i32 1, label %43
    i32 2, label %54
    i32 3, label %65
  ]

42:                                               ; preds = %38
  store i32 0, i32* @ip_vs_drop_rate, align 4
  br label %67

43:                                               ; preds = %38
  %44 = load i32, i32* %3, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* @sysctl_ip_vs_amemthresh, align 4
  %48 = load i32, i32* @sysctl_ip_vs_amemthresh, align 4
  %49 = load i32, i32* %2, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sdiv i32 %47, %50
  store i32 %51, i32* @ip_vs_drop_counter, align 4
  store i32 %51, i32* @ip_vs_drop_rate, align 4
  store i32 2, i32* @sysctl_ip_vs_drop_packet, align 4
  br label %53

52:                                               ; preds = %43
  store i32 0, i32* @ip_vs_drop_rate, align 4
  br label %53

53:                                               ; preds = %52, %46
  br label %67

54:                                               ; preds = %38
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i32, i32* @sysctl_ip_vs_amemthresh, align 4
  %59 = load i32, i32* @sysctl_ip_vs_amemthresh, align 4
  %60 = load i32, i32* %2, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sdiv i32 %58, %61
  store i32 %62, i32* @ip_vs_drop_counter, align 4
  store i32 %62, i32* @ip_vs_drop_rate, align 4
  br label %64

63:                                               ; preds = %54
  store i32 0, i32* @ip_vs_drop_rate, align 4
  store i32 1, i32* @sysctl_ip_vs_drop_packet, align 4
  br label %64

64:                                               ; preds = %63, %57
  br label %67

65:                                               ; preds = %38
  %66 = load i32, i32* @sysctl_ip_vs_am_droprate, align 4
  store i32 %66, i32* @ip_vs_drop_rate, align 4
  br label %67

67:                                               ; preds = %38, %65, %64, %53, %42
  %68 = call i32 @spin_unlock(i32* @__ip_vs_droppacket_lock)
  %69 = call i32 @write_lock(i32* @__ip_vs_securetcp_lock)
  %70 = load i32, i32* @sysctl_ip_vs_secure_tcp, align 4
  switch i32 %70, label %109 [
    i32 0, label %71
    i32 1, label %76
    i32 2, label %90
    i32 3, label %104
  ]

71:                                               ; preds = %67
  %72 = load i32, i32* @update_defense_level.old_secure_tcp, align 4
  %73 = icmp sge i32 %72, 2
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %71
  br label %109

76:                                               ; preds = %67
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* @update_defense_level.old_secure_tcp, align 4
  %81 = icmp slt i32 %80, 2
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 1, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %79
  store i32 2, i32* @sysctl_ip_vs_secure_tcp, align 4
  br label %89

84:                                               ; preds = %76
  %85 = load i32, i32* @update_defense_level.old_secure_tcp, align 4
  %86 = icmp sge i32 %85, 2
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %84
  br label %89

89:                                               ; preds = %88, %83
  br label %109

90:                                               ; preds = %67
  %91 = load i32, i32* %3, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load i32, i32* @update_defense_level.old_secure_tcp, align 4
  %95 = icmp slt i32 %94, 2
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  store i32 1, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %93
  br label %103

98:                                               ; preds = %90
  %99 = load i32, i32* @update_defense_level.old_secure_tcp, align 4
  %100 = icmp sge i32 %99, 2
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %98
  store i32 1, i32* @sysctl_ip_vs_secure_tcp, align 4
  br label %103

103:                                              ; preds = %102, %97
  br label %109

104:                                              ; preds = %67
  %105 = load i32, i32* @update_defense_level.old_secure_tcp, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 1, i32* %4, align 4
  br label %108

108:                                              ; preds = %107, %104
  br label %109

109:                                              ; preds = %67, %108, %103, %89, %75
  %110 = load i32, i32* @sysctl_ip_vs_secure_tcp, align 4
  store i32 %110, i32* @update_defense_level.old_secure_tcp, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp sge i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32, i32* @sysctl_ip_vs_secure_tcp, align 4
  %115 = icmp sgt i32 %114, 1
  %116 = zext i1 %115 to i32
  %117 = call i32 @ip_vs_protocol_timeout_change(i32 %116)
  br label %118

118:                                              ; preds = %113, %109
  %119 = call i32 @write_unlock(i32* @__ip_vs_securetcp_lock)
  %120 = call i32 (...) @local_bh_enable()
  ret void
}

declare dso_local i32 @si_meminfo(%struct.sysinfo*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @ip_vs_protocol_timeout_change(i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

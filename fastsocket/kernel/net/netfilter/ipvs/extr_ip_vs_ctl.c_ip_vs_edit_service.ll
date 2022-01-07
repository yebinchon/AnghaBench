; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_edit_service.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_edit_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service = type { i32, i32, i32, %struct.ip_vs_pe*, %struct.ip_vs_scheduler*, i32 }
%struct.ip_vs_pe = type { i32 }
%struct.ip_vs_scheduler = type { i32 }
%struct.ip_vs_service_user_kern = type { i64, i32, i32, i32, i64*, i64* }

@.str = private unnamed_addr constant [37 x i8] c"Scheduler module ip_vs_%s not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"persistence engine module ip_vs_pe_%s not found\0A\00", align 1
@__ip_vs_svc_lock = common dso_local global i32 0, align 4
@IP_VS_SVC_F_HASHED = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_vs_service*, %struct.ip_vs_service_user_kern*)* @ip_vs_edit_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip_vs_edit_service(%struct.ip_vs_service* %0, %struct.ip_vs_service_user_kern* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_vs_service*, align 8
  %5 = alloca %struct.ip_vs_service_user_kern*, align 8
  %6 = alloca %struct.ip_vs_scheduler*, align 8
  %7 = alloca %struct.ip_vs_scheduler*, align 8
  %8 = alloca %struct.ip_vs_pe*, align 8
  %9 = alloca %struct.ip_vs_pe*, align 8
  %10 = alloca i32, align 4
  store %struct.ip_vs_service* %0, %struct.ip_vs_service** %4, align 8
  store %struct.ip_vs_service_user_kern* %1, %struct.ip_vs_service_user_kern** %5, align 8
  store %struct.ip_vs_pe* null, %struct.ip_vs_pe** %8, align 8
  store %struct.ip_vs_pe* null, %struct.ip_vs_pe** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %12 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %11, i32 0, i32 5
  %13 = load i64*, i64** %12, align 8
  %14 = call %struct.ip_vs_scheduler* @ip_vs_scheduler_get(i64* %13)
  store %struct.ip_vs_scheduler* %14, %struct.ip_vs_scheduler** %6, align 8
  %15 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %6, align 8
  %16 = icmp eq %struct.ip_vs_scheduler* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %19 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %18, i32 0, i32 5
  %20 = load i64*, i64** %19, align 8
  %21 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64* %20)
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %124

24:                                               ; preds = %2
  %25 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %6, align 8
  store %struct.ip_vs_scheduler* %25, %struct.ip_vs_scheduler** %7, align 8
  %26 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %27 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %26, i32 0, i32 4
  %28 = load i64*, i64** %27, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %30, label %52

30:                                               ; preds = %24
  %31 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %32 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %31, i32 0, i32 4
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %30
  %37 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %38 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %37, i32 0, i32 4
  %39 = load i64*, i64** %38, align 8
  %40 = call %struct.ip_vs_pe* @ip_vs_pe_getbyname(i64* %39)
  store %struct.ip_vs_pe* %40, %struct.ip_vs_pe** %8, align 8
  %41 = load %struct.ip_vs_pe*, %struct.ip_vs_pe** %8, align 8
  %42 = icmp eq %struct.ip_vs_pe* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %45 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %44, i32 0, i32 4
  %46 = load i64*, i64** %45, align 8
  %47 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64* %46)
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %118

50:                                               ; preds = %36
  %51 = load %struct.ip_vs_pe*, %struct.ip_vs_pe** %8, align 8
  store %struct.ip_vs_pe* %51, %struct.ip_vs_pe** %9, align 8
  br label %52

52:                                               ; preds = %50, %30, %24
  %53 = call i32 @write_lock_bh(i32* @__ip_vs_svc_lock)
  %54 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %55 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %54, i32 0, i32 5
  %56 = call i32 @atomic_read(i32* %55)
  %57 = icmp sgt i32 %56, 1
  %58 = zext i1 %57 to i32
  %59 = call i32 @IP_VS_WAIT_WHILE(i32 %58)
  %60 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %61 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @IP_VS_SVC_F_HASHED, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %66 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %68 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @HZ, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %73 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ip_vs_service_user_kern*, %struct.ip_vs_service_user_kern** %5, align 8
  %75 = getelementptr inbounds %struct.ip_vs_service_user_kern, %struct.ip_vs_service_user_kern* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %78 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %80 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %79, i32 0, i32 4
  %81 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %80, align 8
  store %struct.ip_vs_scheduler* %81, %struct.ip_vs_scheduler** %7, align 8
  %82 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %6, align 8
  %83 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %7, align 8
  %84 = icmp ne %struct.ip_vs_scheduler* %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %52
  %86 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %87 = call i32 @ip_vs_unbind_scheduler(%struct.ip_vs_service* %86)
  store i32 %87, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %6, align 8
  store %struct.ip_vs_scheduler* %90, %struct.ip_vs_scheduler** %7, align 8
  br label %116

91:                                               ; preds = %85
  %92 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %93 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %6, align 8
  %94 = call i32 @ip_vs_bind_scheduler(%struct.ip_vs_service* %92, %struct.ip_vs_scheduler* %93)
  store i32 %94, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %98 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %7, align 8
  %99 = call i32 @ip_vs_bind_scheduler(%struct.ip_vs_service* %97, %struct.ip_vs_scheduler* %98)
  %100 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %6, align 8
  store %struct.ip_vs_scheduler* %100, %struct.ip_vs_scheduler** %7, align 8
  br label %116

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %52
  %103 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %104 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %103, i32 0, i32 3
  %105 = load %struct.ip_vs_pe*, %struct.ip_vs_pe** %104, align 8
  store %struct.ip_vs_pe* %105, %struct.ip_vs_pe** %9, align 8
  %106 = load %struct.ip_vs_pe*, %struct.ip_vs_pe** %8, align 8
  %107 = load %struct.ip_vs_pe*, %struct.ip_vs_pe** %9, align 8
  %108 = icmp ne %struct.ip_vs_pe* %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %111 = call i32 @ip_vs_unbind_pe(%struct.ip_vs_service* %110)
  %112 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %113 = load %struct.ip_vs_pe*, %struct.ip_vs_pe** %8, align 8
  %114 = call i32 @ip_vs_bind_pe(%struct.ip_vs_service* %112, %struct.ip_vs_pe* %113)
  br label %115

115:                                              ; preds = %109, %102
  br label %116

116:                                              ; preds = %115, %96, %89
  %117 = call i32 @write_unlock_bh(i32* @__ip_vs_svc_lock)
  br label %118

118:                                              ; preds = %116, %43
  %119 = load %struct.ip_vs_scheduler*, %struct.ip_vs_scheduler** %7, align 8
  %120 = call i32 @ip_vs_scheduler_put(%struct.ip_vs_scheduler* %119)
  %121 = load %struct.ip_vs_pe*, %struct.ip_vs_pe** %9, align 8
  %122 = call i32 @ip_vs_pe_put(%struct.ip_vs_pe* %121)
  %123 = load i32, i32* %10, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %118, %17
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.ip_vs_scheduler* @ip_vs_scheduler_get(i64*) #1

declare dso_local i32 @pr_info(i8*, i64*) #1

declare dso_local %struct.ip_vs_pe* @ip_vs_pe_getbyname(i64*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @IP_VS_WAIT_WHILE(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ip_vs_unbind_scheduler(%struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_bind_scheduler(%struct.ip_vs_service*, %struct.ip_vs_scheduler*) #1

declare dso_local i32 @ip_vs_unbind_pe(%struct.ip_vs_service*) #1

declare dso_local i32 @ip_vs_bind_pe(%struct.ip_vs_service*, %struct.ip_vs_pe*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @ip_vs_scheduler_put(%struct.ip_vs_scheduler*) #1

declare dso_local i32 @ip_vs_pe_put(%struct.ip_vs_pe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

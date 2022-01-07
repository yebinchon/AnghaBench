; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_copy_service.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/ipvs/extr_ip_vs_ctl.c_ip_vs_copy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_service_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ip_vs_service = type { i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_service_entry*, %struct.ip_vs_service*)* @ip_vs_copy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_copy_service(%struct.ip_vs_service_entry* %0, %struct.ip_vs_service* %1) #0 {
  %3 = alloca %struct.ip_vs_service_entry*, align 8
  %4 = alloca %struct.ip_vs_service*, align 8
  store %struct.ip_vs_service_entry* %0, %struct.ip_vs_service_entry** %3, align 8
  store %struct.ip_vs_service* %1, %struct.ip_vs_service** %4, align 8
  %5 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %6 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %5, i32 0, i32 9
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %9 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %8, i32 0, i32 9
  store i32 %7, i32* %9, align 4
  %10 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %11 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %15 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %14, i32 0, i32 8
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %17 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %20 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %19, i32 0, i32 7
  store i32 %18, i32* %20, align 4
  %21 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %22 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %25 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %27 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %30 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %29, i32 0, i32 5
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strlcpy(i32 %28, i32 %33, i32 4)
  %35 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %36 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %39 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %41 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @HZ, align 4
  %44 = sdiv i32 %42, %43
  %45 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %46 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %48 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %51 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %53 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %56 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ip_vs_service_entry*, %struct.ip_vs_service_entry** %3, align 8
  %58 = getelementptr inbounds %struct.ip_vs_service_entry, %struct.ip_vs_service_entry* %57, i32 0, i32 1
  %59 = load %struct.ip_vs_service*, %struct.ip_vs_service** %4, align 8
  %60 = getelementptr inbounds %struct.ip_vs_service, %struct.ip_vs_service* %59, i32 0, i32 1
  %61 = call i32 @ip_vs_copy_stats(i32* %58, i32* %60)
  ret void
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @ip_vs_copy_stats(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

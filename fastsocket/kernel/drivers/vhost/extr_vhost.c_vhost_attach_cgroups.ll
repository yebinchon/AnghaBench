; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_attach_cgroups.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/vhost/extr_vhost.c_vhost_attach_cgroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32 }
%struct.vhost_attach_cgroups_struct = type { i32, i32, i32 }

@current = common dso_local global i32 0, align 4
@vhost_attach_cgroups_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_dev*)* @vhost_attach_cgroups to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_attach_cgroups(%struct.vhost_dev* %0) #0 {
  %2 = alloca %struct.vhost_dev*, align 8
  %3 = alloca %struct.vhost_attach_cgroups_struct, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %2, align 8
  %4 = load i32, i32* @current, align 4
  %5 = getelementptr inbounds %struct.vhost_attach_cgroups_struct, %struct.vhost_attach_cgroups_struct* %3, i32 0, i32 2
  store i32 %4, i32* %5, align 4
  %6 = getelementptr inbounds %struct.vhost_attach_cgroups_struct, %struct.vhost_attach_cgroups_struct* %3, i32 0, i32 1
  %7 = load i32, i32* @vhost_attach_cgroups_work, align 4
  %8 = call i32 @vhost_work_init(i32* %6, i32 %7)
  %9 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %10 = getelementptr inbounds %struct.vhost_attach_cgroups_struct, %struct.vhost_attach_cgroups_struct* %3, i32 0, i32 1
  %11 = call i32 @vhost_work_queue(%struct.vhost_dev* %9, i32* %10)
  %12 = load %struct.vhost_dev*, %struct.vhost_dev** %2, align 8
  %13 = getelementptr inbounds %struct.vhost_attach_cgroups_struct, %struct.vhost_attach_cgroups_struct* %3, i32 0, i32 1
  %14 = call i32 @vhost_work_flush(%struct.vhost_dev* %12, i32* %13)
  %15 = getelementptr inbounds %struct.vhost_attach_cgroups_struct, %struct.vhost_attach_cgroups_struct* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  ret i32 %16
}

declare dso_local i32 @vhost_work_init(i32*, i32) #1

declare dso_local i32 @vhost_work_queue(%struct.vhost_dev*, i32*) #1

declare dso_local i32 @vhost_work_flush(%struct.vhost_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

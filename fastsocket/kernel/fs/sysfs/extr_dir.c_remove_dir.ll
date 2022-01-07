; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_remove_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_remove_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { i32 }
%struct.sysfs_addrm_cxt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sysfs_dirent*)* @remove_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_dir(%struct.sysfs_dirent* %0) #0 {
  %2 = alloca %struct.sysfs_dirent*, align 8
  %3 = alloca %struct.sysfs_addrm_cxt, align 4
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %2, align 8
  %4 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %5 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @sysfs_addrm_start(%struct.sysfs_addrm_cxt* %3, i32 %6)
  %8 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %2, align 8
  %9 = call i32 @sysfs_remove_one(%struct.sysfs_addrm_cxt* %3, %struct.sysfs_dirent* %8)
  %10 = call i32 @sysfs_addrm_finish(%struct.sysfs_addrm_cxt* %3)
  ret void
}

declare dso_local i32 @sysfs_addrm_start(%struct.sysfs_addrm_cxt*, i32) #1

declare dso_local i32 @sysfs_remove_one(%struct.sysfs_addrm_cxt*, %struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_addrm_finish(%struct.sysfs_addrm_cxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

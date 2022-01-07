; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_dt_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_dir.c_dt_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_dirent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.configfs_dirent*)* @dt_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @dt_type(%struct.configfs_dirent* %0) #0 {
  %2 = alloca %struct.configfs_dirent*, align 8
  store %struct.configfs_dirent* %0, %struct.configfs_dirent** %2, align 8
  %3 = load %struct.configfs_dirent*, %struct.configfs_dirent** %2, align 8
  %4 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = ashr i32 %5, 12
  %7 = and i32 %6, 15
  %8 = trunc i32 %7 to i8
  ret i8 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

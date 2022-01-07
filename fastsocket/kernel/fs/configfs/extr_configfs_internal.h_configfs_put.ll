; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_configfs_internal.h_configfs_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/configfs/extr_configfs_internal.h_configfs_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.configfs_dirent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.configfs_dirent*)* @configfs_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configfs_put(%struct.configfs_dirent* %0) #0 {
  %2 = alloca %struct.configfs_dirent*, align 8
  store %struct.configfs_dirent* %0, %struct.configfs_dirent** %2, align 8
  %3 = load %struct.configfs_dirent*, %struct.configfs_dirent** %2, align 8
  %4 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %3, i32 0, i32 0
  %5 = call i32 @atomic_read(i32* %4)
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.configfs_dirent*, %struct.configfs_dirent** %2, align 8
  %11 = getelementptr inbounds %struct.configfs_dirent, %struct.configfs_dirent* %10, i32 0, i32 0
  %12 = call i64 @atomic_dec_and_test(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.configfs_dirent*, %struct.configfs_dirent** %2, align 8
  %16 = call i32 @release_configfs_dirent(%struct.configfs_dirent* %15)
  br label %17

17:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @release_configfs_dirent(%struct.configfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

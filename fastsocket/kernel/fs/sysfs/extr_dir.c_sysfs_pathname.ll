; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_pathname.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_dir.c_sysfs_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { i8*, %struct.sysfs_dirent* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sysfs_dirent*, i8*)* @sysfs_pathname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sysfs_pathname(%struct.sysfs_dirent* %0, i8* %1) #0 {
  %3 = alloca %struct.sysfs_dirent*, align 8
  %4 = alloca i8*, align 8
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %6 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %5, i32 0, i32 1
  %7 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %8 = icmp ne %struct.sysfs_dirent* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %11 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %10, i32 0, i32 1
  %12 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %11, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @sysfs_pathname(%struct.sysfs_dirent* %12, i8* %13)
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @strcat(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %9, %2
  %18 = load i8*, i8** %4, align 8
  %19 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %3, align 8
  %20 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcat(i8* %18, i8* %21)
  %23 = load i8*, i8** %4, align 8
  ret i8* %23
}

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

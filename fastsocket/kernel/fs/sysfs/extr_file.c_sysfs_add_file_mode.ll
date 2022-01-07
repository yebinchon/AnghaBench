; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_add_file_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_file.c_sysfs_add_file_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.attribute = type { i32 }
%struct.sysfs_addrm_cxt = type { i32 }

@S_IALLUGO = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysfs_add_file_mode(%struct.sysfs_dirent* %0, %struct.attribute* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sysfs_dirent*, align 8
  %7 = alloca %struct.attribute*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sysfs_addrm_cxt, align 4
  %12 = alloca %struct.sysfs_dirent*, align 8
  %13 = alloca i32, align 4
  store %struct.sysfs_dirent* %0, %struct.sysfs_dirent** %6, align 8
  store %struct.attribute* %1, %struct.attribute** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @S_IALLUGO, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @S_IFREG, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.attribute*, %struct.attribute** %7, align 8
  %20 = getelementptr inbounds %struct.attribute, %struct.attribute* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.sysfs_dirent* @sysfs_new_dirent(i32 %21, i32 %22, i32 %23)
  store %struct.sysfs_dirent* %24, %struct.sysfs_dirent** %12, align 8
  %25 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %26 = icmp ne %struct.sysfs_dirent* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %48

30:                                               ; preds = %4
  %31 = load %struct.attribute*, %struct.attribute** %7, align 8
  %32 = bitcast %struct.attribute* %31 to i8*
  %33 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %34 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %6, align 8
  %37 = call i32 @sysfs_addrm_start(%struct.sysfs_addrm_cxt* %11, %struct.sysfs_dirent* %36)
  %38 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %39 = call i32 @sysfs_add_one(%struct.sysfs_addrm_cxt* %11, %struct.sysfs_dirent* %38)
  store i32 %39, i32* %13, align 4
  %40 = call i32 @sysfs_addrm_finish(%struct.sysfs_addrm_cxt* %11)
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %45 = call i32 @sysfs_put(%struct.sysfs_dirent* %44)
  br label %46

46:                                               ; preds = %43, %30
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %27
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local %struct.sysfs_dirent* @sysfs_new_dirent(i32, i32, i32) #1

declare dso_local i32 @sysfs_addrm_start(%struct.sysfs_addrm_cxt*, %struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_add_one(%struct.sysfs_addrm_cxt*, %struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_addrm_finish(%struct.sysfs_addrm_cxt*) #1

declare dso_local i32 @sysfs_put(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

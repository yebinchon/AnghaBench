; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_symlink.c_sysfs_do_create_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysfs/extr_symlink.c_sysfs_do_create_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysfs_dirent = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sysfs_dirent* }
%struct.kobject = type { %struct.sysfs_dirent* }
%struct.sysfs_addrm_cxt = type { i32 }

@sysfs_root = common dso_local global %struct.sysfs_dirent zeroinitializer, align 8
@EFAULT = common dso_local global i32 0, align 4
@sysfs_assoc_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@SYSFS_KOBJ_LINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobject*, i8*, i32)* @sysfs_do_create_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysfs_do_create_link(%struct.kobject* %0, %struct.kobject* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kobject*, align 8
  %7 = alloca %struct.kobject*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sysfs_dirent*, align 8
  %11 = alloca %struct.sysfs_dirent*, align 8
  %12 = alloca %struct.sysfs_dirent*, align 8
  %13 = alloca %struct.sysfs_addrm_cxt, align 4
  %14 = alloca i32, align 4
  store %struct.kobject* %0, %struct.kobject** %6, align 8
  store %struct.kobject* %1, %struct.kobject** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sysfs_dirent* null, %struct.sysfs_dirent** %10, align 8
  store %struct.sysfs_dirent* null, %struct.sysfs_dirent** %11, align 8
  store %struct.sysfs_dirent* null, %struct.sysfs_dirent** %12, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load %struct.kobject*, %struct.kobject** %6, align 8
  %21 = icmp ne %struct.kobject* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store %struct.sysfs_dirent* @sysfs_root, %struct.sysfs_dirent** %10, align 8
  br label %27

23:                                               ; preds = %4
  %24 = load %struct.kobject*, %struct.kobject** %6, align 8
  %25 = getelementptr inbounds %struct.kobject, %struct.kobject* %24, i32 0, i32 0
  %26 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %25, align 8
  store %struct.sysfs_dirent* %26, %struct.sysfs_dirent** %10, align 8
  br label %27

27:                                               ; preds = %23, %22
  %28 = load i32, i32* @EFAULT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %14, align 4
  %30 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %10, align 8
  %31 = icmp ne %struct.sysfs_dirent* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  br label %84

33:                                               ; preds = %27
  %34 = call i32 @spin_lock(i32* @sysfs_assoc_lock)
  %35 = load %struct.kobject*, %struct.kobject** %7, align 8
  %36 = getelementptr inbounds %struct.kobject, %struct.kobject* %35, i32 0, i32 0
  %37 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %36, align 8
  %38 = icmp ne %struct.sysfs_dirent* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.kobject*, %struct.kobject** %7, align 8
  %41 = getelementptr inbounds %struct.kobject, %struct.kobject* %40, i32 0, i32 0
  %42 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %41, align 8
  %43 = call %struct.sysfs_dirent* @sysfs_get(%struct.sysfs_dirent* %42)
  store %struct.sysfs_dirent* %43, %struct.sysfs_dirent** %11, align 8
  br label %44

44:                                               ; preds = %39, %33
  %45 = call i32 @spin_unlock(i32* @sysfs_assoc_lock)
  %46 = load i32, i32* @ENOENT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %14, align 4
  %48 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %11, align 8
  %49 = icmp ne %struct.sysfs_dirent* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %44
  br label %84

51:                                               ; preds = %44
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %14, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = load i32, i32* @S_IFLNK, align 4
  %56 = load i32, i32* @S_IRWXUGO, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @SYSFS_KOBJ_LINK, align 4
  %59 = call %struct.sysfs_dirent* @sysfs_new_dirent(i8* %54, i32 %57, i32 %58)
  store %struct.sysfs_dirent* %59, %struct.sysfs_dirent** %12, align 8
  %60 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %61 = icmp ne %struct.sysfs_dirent* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %51
  br label %84

63:                                               ; preds = %51
  %64 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %11, align 8
  %65 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %66 = getelementptr inbounds %struct.sysfs_dirent, %struct.sysfs_dirent* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store %struct.sysfs_dirent* %64, %struct.sysfs_dirent** %67, align 8
  store %struct.sysfs_dirent* null, %struct.sysfs_dirent** %11, align 8
  %68 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %10, align 8
  %69 = call i32 @sysfs_addrm_start(%struct.sysfs_addrm_cxt* %13, %struct.sysfs_dirent* %68)
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %74 = call i32 @sysfs_add_one(%struct.sysfs_addrm_cxt* %13, %struct.sysfs_dirent* %73)
  store i32 %74, i32* %14, align 4
  br label %78

75:                                               ; preds = %63
  %76 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %77 = call i32 @__sysfs_add_one(%struct.sysfs_addrm_cxt* %13, %struct.sysfs_dirent* %76)
  store i32 %77, i32* %14, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = call i32 @sysfs_addrm_finish(%struct.sysfs_addrm_cxt* %13)
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %84

83:                                               ; preds = %78
  store i32 0, i32* %5, align 4
  br label %90

84:                                               ; preds = %82, %62, %50, %32
  %85 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %11, align 8
  %86 = call i32 @sysfs_put(%struct.sysfs_dirent* %85)
  %87 = load %struct.sysfs_dirent*, %struct.sysfs_dirent** %12, align 8
  %88 = call i32 @sysfs_put(%struct.sysfs_dirent* %87)
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %84, %83
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.sysfs_dirent* @sysfs_get(%struct.sysfs_dirent*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.sysfs_dirent* @sysfs_new_dirent(i8*, i32, i32) #1

declare dso_local i32 @sysfs_addrm_start(%struct.sysfs_addrm_cxt*, %struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_add_one(%struct.sysfs_addrm_cxt*, %struct.sysfs_dirent*) #1

declare dso_local i32 @__sysfs_add_one(%struct.sysfs_addrm_cxt*, %struct.sysfs_dirent*) #1

declare dso_local i32 @sysfs_addrm_finish(%struct.sysfs_addrm_cxt*) #1

declare dso_local i32 @sysfs_put(%struct.sysfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

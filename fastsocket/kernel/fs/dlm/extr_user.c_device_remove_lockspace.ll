; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_user.c_device_remove_lockspace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_user.c_device_remove_lockspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lspace_params = type { i32, i32 }
%struct.dlm_ls = type { i32* }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DLM_USER_LSFLG_FORCEFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lspace_params*)* @device_remove_lockspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_remove_lockspace(%struct.dlm_lspace_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dlm_lspace_params*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dlm_lspace_params* %0, %struct.dlm_lspace_params** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %9 = call i32 @capable(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %46

14:                                               ; preds = %1
  %15 = load %struct.dlm_lspace_params*, %struct.dlm_lspace_params** %3, align 8
  %16 = getelementptr inbounds %struct.dlm_lspace_params, %struct.dlm_lspace_params* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.dlm_ls* @dlm_find_lockspace_device(i32 %17)
  store %struct.dlm_ls* %18, %struct.dlm_ls** %5, align 8
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %20 = icmp ne %struct.dlm_ls* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %14
  %25 = load %struct.dlm_lspace_params*, %struct.dlm_lspace_params** %3, align 8
  %26 = getelementptr inbounds %struct.dlm_lspace_params, %struct.dlm_lspace_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DLM_USER_LSFLG_FORCEFREE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 2, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %34 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %4, align 8
  %36 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %37 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %36)
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @dlm_release_lockspace(i32* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %44, %21, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_device(i32) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_release_lockspace(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

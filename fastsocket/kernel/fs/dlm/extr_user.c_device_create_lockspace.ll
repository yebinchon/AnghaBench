; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_user.c_device_create_lockspace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_user.c_device_create_lockspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lspace_params = type { i32, i32 }
%struct.dlm_ls = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@DLM_USER_LVB_LEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_lspace_params*)* @device_create_lockspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_create_lockspace(%struct.dlm_lspace_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dlm_lspace_params*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.dlm_ls*, align 8
  %6 = alloca i32, align 4
  store %struct.dlm_lspace_params* %0, %struct.dlm_lspace_params** %3, align 8
  %7 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %8 = call i32 @capable(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EPERM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %58

13:                                               ; preds = %1
  %14 = load %struct.dlm_lspace_params*, %struct.dlm_lspace_params** %3, align 8
  %15 = getelementptr inbounds %struct.dlm_lspace_params, %struct.dlm_lspace_params* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dlm_lspace_params*, %struct.dlm_lspace_params** %3, align 8
  %18 = getelementptr inbounds %struct.dlm_lspace_params, %struct.dlm_lspace_params* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @strlen(i32 %19)
  %21 = load %struct.dlm_lspace_params*, %struct.dlm_lspace_params** %3, align 8
  %22 = getelementptr inbounds %struct.dlm_lspace_params, %struct.dlm_lspace_params* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DLM_USER_LVB_LEN, align 4
  %25 = call i32 @dlm_new_lockspace(i32 %16, i32 %20, i32** %4, i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %58

30:                                               ; preds = %13
  %31 = load i32*, i32** %4, align 8
  %32 = call %struct.dlm_ls* @dlm_find_lockspace_local(i32* %31)
  store %struct.dlm_ls* %32, %struct.dlm_ls** %5, align 8
  %33 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %34 = icmp ne %struct.dlm_ls* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %58

38:                                               ; preds = %30
  %39 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %40 = load %struct.dlm_lspace_params*, %struct.dlm_lspace_params** %3, align 8
  %41 = getelementptr inbounds %struct.dlm_lspace_params, %struct.dlm_lspace_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dlm_device_register(%struct.dlm_ls* %39, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %45 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %44)
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %38
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @dlm_release_lockspace(i32* %49, i32 0)
  br label %56

51:                                               ; preds = %38
  %52 = load %struct.dlm_ls*, %struct.dlm_ls** %5, align 8
  %53 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %51, %48
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %35, %28, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @dlm_new_lockspace(i32, i32, i32**, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i32*) #1

declare dso_local i32 @dlm_device_register(%struct.dlm_ls*, i32) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_release_lockspace(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

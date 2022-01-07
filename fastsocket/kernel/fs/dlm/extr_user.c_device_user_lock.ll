; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_user.c_device_user_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_user.c_device_user_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_user_proc = type { i32 }
%struct.dlm_lock_params = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64 }
%struct.dlm_ls = type { i32 }
%struct.dlm_user_args = type { %struct.TYPE_2__, i32, i32, i32, i64, i32, i64, %struct.dlm_user_proc* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_user_proc*, %struct.dlm_lock_params*)* @device_user_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_user_lock(%struct.dlm_user_proc* %0, %struct.dlm_lock_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dlm_user_proc*, align 8
  %5 = alloca %struct.dlm_lock_params*, align 8
  %6 = alloca %struct.dlm_ls*, align 8
  %7 = alloca %struct.dlm_user_args*, align 8
  %8 = alloca i32, align 4
  store %struct.dlm_user_proc* %0, %struct.dlm_user_proc** %4, align 8
  store %struct.dlm_lock_params* %1, %struct.dlm_lock_params** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %4, align 8
  %12 = getelementptr inbounds %struct.dlm_user_proc, %struct.dlm_user_proc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.dlm_ls* @dlm_find_lockspace_local(i32 %13)
  store %struct.dlm_ls* %14, %struct.dlm_ls** %6, align 8
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %16 = icmp ne %struct.dlm_ls* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %130

20:                                               ; preds = %2
  %21 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %22 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %21, i32 0, i32 10
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %27 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %26, i32 0, i32 12
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25, %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %126

33:                                               ; preds = %25
  %34 = load i32, i32* @GFP_NOFS, align 4
  %35 = call %struct.dlm_user_args* @kzalloc(i32 48, i32 %34)
  store %struct.dlm_user_args* %35, %struct.dlm_user_args** %7, align 8
  %36 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %37 = icmp ne %struct.dlm_user_args* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %126

39:                                               ; preds = %33
  %40 = load %struct.dlm_user_proc*, %struct.dlm_user_proc** %4, align 8
  %41 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %42 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %41, i32 0, i32 7
  store %struct.dlm_user_proc* %40, %struct.dlm_user_proc** %42, align 8
  %43 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %44 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %43, i32 0, i32 12
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %47 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %46, i32 0, i32 6
  store i64 %45, i64* %47, align 8
  %48 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %49 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %52 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  %53 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %54 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %53, i32 0, i32 10
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %57 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  %58 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %59 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %62 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %64 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %67 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %69 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %72 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %74 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %39
  %80 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %81 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %82 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %83 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %86 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %89 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %92 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %95 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @dlm_user_convert(%struct.dlm_ls* %80, %struct.dlm_user_args* %81, i32 %84, i32 %87, i32 %90, i32 %93, i64 %96)
  store i32 %97, i32* %8, align 4
  br label %125

98:                                               ; preds = %39
  %99 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %100 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %101 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %102 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %105 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %108 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %111 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.dlm_lock_params*, %struct.dlm_lock_params** %5, align 8
  %114 = getelementptr inbounds %struct.dlm_lock_params, %struct.dlm_lock_params* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @dlm_user_request(%struct.dlm_ls* %99, %struct.dlm_user_args* %100, i32 %103, i32 %106, i32 %109, i32 %112, i64 %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %98
  %120 = load %struct.dlm_user_args*, %struct.dlm_user_args** %7, align 8
  %121 = getelementptr inbounds %struct.dlm_user_args, %struct.dlm_user_args* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  store i32 %123, i32* %8, align 4
  br label %124

124:                                              ; preds = %119, %98
  br label %125

125:                                              ; preds = %124, %79
  br label %126

126:                                              ; preds = %125, %38, %30
  %127 = load %struct.dlm_ls*, %struct.dlm_ls** %6, align 8
  %128 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %127)
  %129 = load i32, i32* %8, align 4
  store i32 %129, i32* %3, align 4
  br label %130

130:                                              ; preds = %126, %17
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i32) #1

declare dso_local %struct.dlm_user_args* @kzalloc(i32, i32) #1

declare dso_local i32 @dlm_user_convert(%struct.dlm_ls*, %struct.dlm_user_args*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @dlm_user_request(%struct.dlm_ls*, %struct.dlm_user_args*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

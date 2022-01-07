; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_dlm_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_dlm_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lksb = type { i32 }
%struct.dlm_ls = type { i32 }
%struct.dlm_lkb = type { i32 }
%struct.dlm_args = type { i32 }

@DLM_LKF_CONVERT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_lock(i32* %0, i32 %1, %struct.dlm_lksb* %2, i32 %3, i8* %4, i32 %5, i32 %6, void (i8*)* %7, i8* %8, void (i8*, i32)* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.dlm_lksb*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca void (i8*)*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca void (i8*, i32)*, align 8
  %22 = alloca %struct.dlm_ls*, align 8
  %23 = alloca %struct.dlm_lkb*, align 8
  %24 = alloca %struct.dlm_args, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32 %1, i32* %13, align 4
  store %struct.dlm_lksb* %2, %struct.dlm_lksb** %14, align 8
  store i32 %3, i32* %15, align 4
  store i8* %4, i8** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store void (i8*)* %7, void (i8*)** %19, align 8
  store i8* %8, i8** %20, align 8
  store void (i8*, i32)* %9, void (i8*, i32)** %21, align 8
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @DLM_LKF_CONVERT, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %26, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = call %struct.dlm_ls* @dlm_find_lockspace_local(i32* %30)
  store %struct.dlm_ls* %31, %struct.dlm_ls** %22, align 8
  %32 = load %struct.dlm_ls*, %struct.dlm_ls** %22, align 8
  %33 = icmp ne %struct.dlm_ls* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %10
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %115

37:                                               ; preds = %10
  %38 = load %struct.dlm_ls*, %struct.dlm_ls** %22, align 8
  %39 = call i32 @dlm_lock_recovery(%struct.dlm_ls* %38)
  %40 = load i32, i32* %26, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.dlm_ls*, %struct.dlm_ls** %22, align 8
  %44 = load %struct.dlm_lksb*, %struct.dlm_lksb** %14, align 8
  %45 = getelementptr inbounds %struct.dlm_lksb, %struct.dlm_lksb* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @find_lkb(%struct.dlm_ls* %43, i32 %46, %struct.dlm_lkb** %23)
  store i32 %47, i32* %25, align 4
  br label %51

48:                                               ; preds = %37
  %49 = load %struct.dlm_ls*, %struct.dlm_ls** %22, align 8
  %50 = call i32 @create_lkb(%struct.dlm_ls* %49, %struct.dlm_lkb** %23)
  store i32 %50, i32* %25, align 4
  br label %51

51:                                               ; preds = %48, %42
  %52 = load i32, i32* %25, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  br label %109

55:                                               ; preds = %51
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.dlm_lksb*, %struct.dlm_lksb** %14, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load void (i8*)*, void (i8*)** %19, align 8
  %61 = load i8*, i8** %20, align 8
  %62 = load void (i8*, i32)*, void (i8*, i32)** %21, align 8
  %63 = call i32 @set_lock_args(i32 %56, %struct.dlm_lksb* %57, i32 %58, i32 %59, i32 0, void (i8*)* %60, i8* %61, void (i8*, i32)* %62, %struct.dlm_args* %24)
  store i32 %63, i32* %25, align 4
  %64 = load i32, i32* %25, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %87

67:                                               ; preds = %55
  %68 = load i32, i32* %26, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.dlm_ls*, %struct.dlm_ls** %22, align 8
  %72 = load %struct.dlm_lkb*, %struct.dlm_lkb** %23, align 8
  %73 = call i32 @convert_lock(%struct.dlm_ls* %71, %struct.dlm_lkb* %72, %struct.dlm_args* %24)
  store i32 %73, i32* %25, align 4
  br label %80

74:                                               ; preds = %67
  %75 = load %struct.dlm_ls*, %struct.dlm_ls** %22, align 8
  %76 = load %struct.dlm_lkb*, %struct.dlm_lkb** %23, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @request_lock(%struct.dlm_ls* %75, %struct.dlm_lkb* %76, i8* %77, i32 %78, %struct.dlm_args* %24)
  store i32 %79, i32* %25, align 4
  br label %80

80:                                               ; preds = %74, %70
  %81 = load i32, i32* %25, align 4
  %82 = load i32, i32* @EINPROGRESS, align 4
  %83 = sub nsw i32 0, %82
  %84 = icmp eq i32 %81, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  store i32 0, i32* %25, align 4
  br label %86

86:                                               ; preds = %85, %80
  br label %87

87:                                               ; preds = %86, %66
  %88 = load i32, i32* %26, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %25, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %90, %87
  %94 = load %struct.dlm_ls*, %struct.dlm_ls** %22, align 8
  %95 = load %struct.dlm_lkb*, %struct.dlm_lkb** %23, align 8
  %96 = call i32 @__put_lkb(%struct.dlm_ls* %94, %struct.dlm_lkb* %95)
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i32, i32* %25, align 4
  %99 = load i32, i32* @EAGAIN, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* @EDEADLK, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp eq i32 %103, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %102, %97
  store i32 0, i32* %25, align 4
  br label %108

108:                                              ; preds = %107, %102
  br label %109

109:                                              ; preds = %108, %54
  %110 = load %struct.dlm_ls*, %struct.dlm_ls** %22, align 8
  %111 = call i32 @dlm_unlock_recovery(%struct.dlm_ls* %110)
  %112 = load %struct.dlm_ls*, %struct.dlm_ls** %22, align 8
  %113 = call i32 @dlm_put_lockspace(%struct.dlm_ls* %112)
  %114 = load i32, i32* %25, align 4
  store i32 %114, i32* %11, align 4
  br label %115

115:                                              ; preds = %109, %34
  %116 = load i32, i32* %11, align 4
  ret i32 %116
}

declare dso_local %struct.dlm_ls* @dlm_find_lockspace_local(i32*) #1

declare dso_local i32 @dlm_lock_recovery(%struct.dlm_ls*) #1

declare dso_local i32 @find_lkb(%struct.dlm_ls*, i32, %struct.dlm_lkb**) #1

declare dso_local i32 @create_lkb(%struct.dlm_ls*, %struct.dlm_lkb**) #1

declare dso_local i32 @set_lock_args(i32, %struct.dlm_lksb*, i32, i32, i32, void (i8*)*, i8*, void (i8*, i32)*, %struct.dlm_args*) #1

declare dso_local i32 @convert_lock(%struct.dlm_ls*, %struct.dlm_lkb*, %struct.dlm_args*) #1

declare dso_local i32 @request_lock(%struct.dlm_ls*, %struct.dlm_lkb*, i8*, i32, %struct.dlm_args*) #1

declare dso_local i32 @__put_lkb(%struct.dlm_ls*, %struct.dlm_lkb*) #1

declare dso_local i32 @dlm_unlock_recovery(%struct.dlm_ls*) #1

declare dso_local i32 @dlm_put_lockspace(%struct.dlm_ls*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

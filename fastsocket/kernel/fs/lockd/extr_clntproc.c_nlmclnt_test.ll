; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_nlmclnt_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_nlmclnt_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_rqst = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.file_lock = type { i32, i32, i32, i32, i32 }

@NLMPROC_TEST = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlm_rqst*, %struct.file_lock*)* @nlmclnt_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmclnt_test(%struct.nlm_rqst* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.nlm_rqst*, align 8
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca i32, align 4
  store %struct.nlm_rqst* %0, %struct.nlm_rqst** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %6 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %7 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @nfs_file_cred(i32 %8)
  %10 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %11 = load i32, i32* @NLMPROC_TEST, align 4
  %12 = call i32 @nlmclnt_call(i32 %9, %struct.nlm_rqst* %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %59

16:                                               ; preds = %2
  %17 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %18 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %52 [
    i32 129, label %21
    i32 128, label %25
  ]

21:                                               ; preds = %16
  %22 = load i32, i32* @F_UNLCK, align 4
  %23 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %24 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %58

25:                                               ; preds = %16
  %26 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %27 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %33 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %35 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %41 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %43 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %49 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %51 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  br label %58

52:                                               ; preds = %16
  %53 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %54 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @nlm_stat_to_errno(i32 %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %52, %25, %21
  br label %59

59:                                               ; preds = %58, %15
  %60 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %61 = call i32 @nlm_release_call(%struct.nlm_rqst* %60)
  %62 = load i32, i32* %5, align 4
  ret i32 %62
}

declare dso_local i32 @nlmclnt_call(i32, %struct.nlm_rqst*, i32) #1

declare dso_local i32 @nfs_file_cred(i32) #1

declare dso_local i32 @nlm_stat_to_errno(i32) #1

declare dso_local i32 @nlm_release_call(%struct.nlm_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

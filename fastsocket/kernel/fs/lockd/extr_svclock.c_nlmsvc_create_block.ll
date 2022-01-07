; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svclock.c_nlmsvc_create_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_svclock.c_nlmsvc_create_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_block = type { %struct.nlm_rqst*, i32, i32*, %struct.nlm_file*, %struct.nlm_host*, i32, i32, i32 }
%struct.nlm_rqst = type { %struct.nlm_block*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.svc_rqst = type { i32 }
%struct.nlm_host = type { i32 }
%struct.nlm_file = type { i32, i32 }
%struct.nlm_lock = type { i32 }
%struct.nlm_cookie = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FL_SLEEP = common dso_local global i32 0, align 4
@nlmsvc_lock_operations = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"lockd: created block %p...\0A\00", align 1
@RPC_TASK_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nlm_block* (%struct.svc_rqst*, %struct.nlm_host*, %struct.nlm_file*, %struct.nlm_lock*, %struct.nlm_cookie*)* @nlmsvc_create_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nlm_block* @nlmsvc_create_block(%struct.svc_rqst* %0, %struct.nlm_host* %1, %struct.nlm_file* %2, %struct.nlm_lock* %3, %struct.nlm_cookie* %4) #0 {
  %6 = alloca %struct.nlm_block*, align 8
  %7 = alloca %struct.svc_rqst*, align 8
  %8 = alloca %struct.nlm_host*, align 8
  %9 = alloca %struct.nlm_file*, align 8
  %10 = alloca %struct.nlm_lock*, align 8
  %11 = alloca %struct.nlm_cookie*, align 8
  %12 = alloca %struct.nlm_block*, align 8
  %13 = alloca %struct.nlm_rqst*, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %7, align 8
  store %struct.nlm_host* %1, %struct.nlm_host** %8, align 8
  store %struct.nlm_file* %2, %struct.nlm_file** %9, align 8
  store %struct.nlm_lock* %3, %struct.nlm_lock** %10, align 8
  store %struct.nlm_cookie* %4, %struct.nlm_cookie** %11, align 8
  store %struct.nlm_rqst* null, %struct.nlm_rqst** %13, align 8
  %14 = load %struct.nlm_host*, %struct.nlm_host** %8, align 8
  %15 = call i32 @nlm_get_host(%struct.nlm_host* %14)
  %16 = load %struct.nlm_host*, %struct.nlm_host** %8, align 8
  %17 = call %struct.nlm_rqst* @nlm_alloc_call(%struct.nlm_host* %16)
  store %struct.nlm_rqst* %17, %struct.nlm_rqst** %13, align 8
  %18 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %19 = icmp eq %struct.nlm_rqst* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store %struct.nlm_block* null, %struct.nlm_block** %6, align 8
  br label %100

21:                                               ; preds = %5
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.nlm_block* @kzalloc(i32 56, i32 %22)
  store %struct.nlm_block* %23, %struct.nlm_block** %12, align 8
  %24 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %25 = icmp eq %struct.nlm_block* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %97

27:                                               ; preds = %21
  %28 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %29 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %28, i32 0, i32 7
  %30 = call i32 @kref_init(i32* %29)
  %31 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %32 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %31, i32 0, i32 6
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %35 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %34, i32 0, i32 1
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %38 = load %struct.nlm_lock*, %struct.nlm_lock** %10, align 8
  %39 = call i32 @nlmsvc_setgrantargs(%struct.nlm_rqst* %37, %struct.nlm_lock* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  br label %94

42:                                               ; preds = %27
  %43 = load i32, i32* @FL_SLEEP, align 4
  %44 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %45 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %43
  store i32 %50, i32* %48, align 8
  %51 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %52 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32* @nlmsvc_lock_operations, i32** %55, align 8
  %56 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %57 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = call i32 @nlmclnt_next_cookie(i32* %58)
  %60 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %61 = call i32 @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.nlm_block* %60)
  %62 = load %struct.svc_rqst*, %struct.svc_rqst** %7, align 8
  %63 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %66 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %65, i32 0, i32 5
  store i32 %64, i32* %66, align 8
  %67 = load %struct.nlm_host*, %struct.nlm_host** %8, align 8
  %68 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %69 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %68, i32 0, i32 4
  store %struct.nlm_host* %67, %struct.nlm_host** %69, align 8
  %70 = load %struct.nlm_file*, %struct.nlm_file** %9, align 8
  %71 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %72 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %71, i32 0, i32 3
  store %struct.nlm_file* %70, %struct.nlm_file** %72, align 8
  %73 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %74 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  %75 = load %struct.nlm_file*, %struct.nlm_file** %9, align 8
  %76 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %80 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %79, i32 0, i32 1
  %81 = load %struct.nlm_file*, %struct.nlm_file** %9, align 8
  %82 = getelementptr inbounds %struct.nlm_file, %struct.nlm_file* %81, i32 0, i32 0
  %83 = call i32 @list_add(i32* %80, i32* %82)
  %84 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %85 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %86 = getelementptr inbounds %struct.nlm_block, %struct.nlm_block* %85, i32 0, i32 0
  store %struct.nlm_rqst* %84, %struct.nlm_rqst** %86, align 8
  %87 = load i32, i32* @RPC_TASK_ASYNC, align 4
  %88 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %89 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %91 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %92 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %91, i32 0, i32 0
  store %struct.nlm_block* %90, %struct.nlm_block** %92, align 8
  %93 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  store %struct.nlm_block* %93, %struct.nlm_block** %6, align 8
  br label %100

94:                                               ; preds = %41
  %95 = load %struct.nlm_block*, %struct.nlm_block** %12, align 8
  %96 = call i32 @kfree(%struct.nlm_block* %95)
  br label %97

97:                                               ; preds = %94, %26
  %98 = load %struct.nlm_rqst*, %struct.nlm_rqst** %13, align 8
  %99 = call i32 @nlm_release_call(%struct.nlm_rqst* %98)
  store %struct.nlm_block* null, %struct.nlm_block** %6, align 8
  br label %100

100:                                              ; preds = %97, %42, %20
  %101 = load %struct.nlm_block*, %struct.nlm_block** %6, align 8
  ret %struct.nlm_block* %101
}

declare dso_local i32 @nlm_get_host(%struct.nlm_host*) #1

declare dso_local %struct.nlm_rqst* @nlm_alloc_call(%struct.nlm_host*) #1

declare dso_local %struct.nlm_block* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nlmsvc_setgrantargs(%struct.nlm_rqst*, %struct.nlm_lock*) #1

declare dso_local i32 @nlmclnt_next_cookie(i32*) #1

declare dso_local i32 @dprintk(i8*, %struct.nlm_block*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.nlm_block*) #1

declare dso_local i32 @nlm_release_call(%struct.nlm_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

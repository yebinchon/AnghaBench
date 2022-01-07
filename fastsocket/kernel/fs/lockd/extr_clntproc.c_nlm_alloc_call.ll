; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_nlm_alloc_call.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/lockd/extr_clntproc.c_nlm_alloc_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_rqst = type { %struct.nlm_host*, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.nlm_host = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"nlm_alloc_call: failed, waiting for memory\0A\00", align 1
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nlm_rqst* @nlm_alloc_call(%struct.nlm_host* %0) #0 {
  %2 = alloca %struct.nlm_rqst*, align 8
  %3 = alloca %struct.nlm_host*, align 8
  %4 = alloca %struct.nlm_rqst*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %3, align 8
  br label %5

5:                                                ; preds = %32, %1
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.nlm_rqst* @kzalloc(i32 24, i32 %6)
  store %struct.nlm_rqst* %7, %struct.nlm_rqst** %4, align 8
  %8 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %9 = icmp ne %struct.nlm_rqst* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %5
  %11 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %11, i32 0, i32 3
  %13 = call i32 @atomic_set(i32* %12, i32 1)
  %14 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %15 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = call i32 @locks_init_lock(i32* %17)
  %19 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %20 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call i32 @locks_init_lock(i32* %22)
  %24 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %25 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  %26 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %25, i32 0, i32 0
  store %struct.nlm_host* %24, %struct.nlm_host** %26, align 8
  %27 = load %struct.nlm_rqst*, %struct.nlm_rqst** %4, align 8
  store %struct.nlm_rqst* %27, %struct.nlm_rqst** %2, align 8
  br label %40

28:                                               ; preds = %5
  %29 = call i64 (...) @signalled()
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %37

32:                                               ; preds = %28
  %33 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 5, %34
  %36 = call i32 @schedule_timeout_interruptible(i32 %35)
  br label %5

37:                                               ; preds = %31
  %38 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %39 = call i32 @nlm_release_host(%struct.nlm_host* %38)
  store %struct.nlm_rqst* null, %struct.nlm_rqst** %2, align 8
  br label %40

40:                                               ; preds = %37, %10
  %41 = load %struct.nlm_rqst*, %struct.nlm_rqst** %2, align 8
  ret %struct.nlm_rqst* %41
}

declare dso_local %struct.nlm_rqst* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @locks_init_lock(i32*) #1

declare dso_local i64 @signalled(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i32 @nlm_release_host(%struct.nlm_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

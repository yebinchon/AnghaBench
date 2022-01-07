; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_init_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/target/extr_target_core_transport.c_transport_init_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_session = type { i32, i32, i32, i32, i32, i32 }

@se_sess_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Unable to allocate struct se_session from se_sess_cache\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.se_session* @transport_init_session() #0 {
  %1 = alloca %struct.se_session*, align 8
  %2 = alloca %struct.se_session*, align 8
  %3 = load i32, i32* @se_sess_cache, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.se_session* @kmem_cache_zalloc(i32 %3, i32 %4)
  store %struct.se_session* %5, %struct.se_session** %2, align 8
  %6 = load %struct.se_session*, %struct.se_session** %2, align 8
  %7 = icmp ne %struct.se_session* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %0
  %9 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.se_session* @ERR_PTR(i32 %11)
  store %struct.se_session* %12, %struct.se_session** %1, align 8
  br label %33

13:                                               ; preds = %0
  %14 = load %struct.se_session*, %struct.se_session** %2, align 8
  %15 = getelementptr inbounds %struct.se_session, %struct.se_session* %14, i32 0, i32 5
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.se_session*, %struct.se_session** %2, align 8
  %18 = getelementptr inbounds %struct.se_session, %struct.se_session* %17, i32 0, i32 4
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  %20 = load %struct.se_session*, %struct.se_session** %2, align 8
  %21 = getelementptr inbounds %struct.se_session, %struct.se_session* %20, i32 0, i32 3
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.se_session*, %struct.se_session** %2, align 8
  %24 = getelementptr inbounds %struct.se_session, %struct.se_session* %23, i32 0, i32 2
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.se_session*, %struct.se_session** %2, align 8
  %27 = getelementptr inbounds %struct.se_session, %struct.se_session* %26, i32 0, i32 1
  %28 = call i32 @spin_lock_init(i32* %27)
  %29 = load %struct.se_session*, %struct.se_session** %2, align 8
  %30 = getelementptr inbounds %struct.se_session, %struct.se_session* %29, i32 0, i32 0
  %31 = call i32 @kref_init(i32* %30)
  %32 = load %struct.se_session*, %struct.se_session** %2, align 8
  store %struct.se_session* %32, %struct.se_session** %1, align 8
  br label %33

33:                                               ; preds = %13, %8
  %34 = load %struct.se_session*, %struct.se_session** %1, align 8
  ret %struct.se_session* %34
}

declare dso_local %struct.se_session* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.se_session* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

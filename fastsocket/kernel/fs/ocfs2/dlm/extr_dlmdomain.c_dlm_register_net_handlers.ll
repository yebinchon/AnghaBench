; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_register_net_handlers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_register_net_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DLM_QUERY_JOIN_MSG = common dso_local global i32 0, align 4
@DLM_MOD_KEY = common dso_local global i32 0, align 4
@dlm_query_join_handler = common dso_local global i32 0, align 4
@dlm_join_handlers = common dso_local global i32 0, align 4
@DLM_ASSERT_JOINED_MSG = common dso_local global i32 0, align 4
@dlm_assert_joined_handler = common dso_local global i32 0, align 4
@DLM_CANCEL_JOIN_MSG = common dso_local global i32 0, align 4
@dlm_cancel_join_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dlm_register_net_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_register_net_handlers() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @DLM_QUERY_JOIN_MSG, align 4
  %3 = load i32, i32* @DLM_MOD_KEY, align 4
  %4 = load i32, i32* @dlm_query_join_handler, align 4
  %5 = call i32 @o2net_register_handler(i32 %2, i32 %3, i32 4, i32 %4, i32* null, i32* null, i32* @dlm_join_handlers)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %22

9:                                                ; preds = %0
  %10 = load i32, i32* @DLM_ASSERT_JOINED_MSG, align 4
  %11 = load i32, i32* @DLM_MOD_KEY, align 4
  %12 = load i32, i32* @dlm_assert_joined_handler, align 4
  %13 = call i32 @o2net_register_handler(i32 %10, i32 %11, i32 4, i32 %12, i32* null, i32* null, i32* @dlm_join_handlers)
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* %1, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %22

17:                                               ; preds = %9
  %18 = load i32, i32* @DLM_CANCEL_JOIN_MSG, align 4
  %19 = load i32, i32* @DLM_MOD_KEY, align 4
  %20 = load i32, i32* @dlm_cancel_join_handler, align 4
  %21 = call i32 @o2net_register_handler(i32 %18, i32 %19, i32 4, i32 %20, i32* null, i32* null, i32* @dlm_join_handlers)
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %17, %16, %8
  %23 = load i32, i32* %1, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (...) @dlm_unregister_net_handlers()
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @o2net_register_handler(i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @dlm_unregister_net_handlers(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

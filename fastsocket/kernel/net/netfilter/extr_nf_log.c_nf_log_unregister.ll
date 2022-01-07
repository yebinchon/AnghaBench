; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_log.c_nf_log_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netfilter/extr_nf_log.c_nf_log_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_logger = type { i32* }

@nf_log_mutex = common dso_local global i32 0, align 4
@nf_loggers = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_log_unregister(%struct.nf_logger* %0) #0 {
  %2 = alloca %struct.nf_logger*, align 8
  %3 = alloca %struct.nf_logger*, align 8
  %4 = alloca i32, align 4
  store %struct.nf_logger* %0, %struct.nf_logger** %2, align 8
  %5 = call i32 @mutex_lock(i32* @nf_log_mutex)
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32*, i32** @nf_loggers, align 8
  %9 = call i32 @ARRAY_SIZE(i32* %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %6
  %12 = load i32*, i32** @nf_loggers, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.nf_logger* @rcu_dereference(i32 %16)
  store %struct.nf_logger* %17, %struct.nf_logger** %3, align 8
  %18 = load %struct.nf_logger*, %struct.nf_logger** %3, align 8
  %19 = load %struct.nf_logger*, %struct.nf_logger** %2, align 8
  %20 = icmp eq %struct.nf_logger* %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %11
  %22 = load i32*, i32** @nf_loggers, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @rcu_assign_pointer(i32 %26, i32* null)
  br label %28

28:                                               ; preds = %21, %11
  %29 = load %struct.nf_logger*, %struct.nf_logger** %2, align 8
  %30 = getelementptr inbounds %struct.nf_logger, %struct.nf_logger* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @list_del(i32* %34)
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %6

39:                                               ; preds = %6
  %40 = call i32 @mutex_unlock(i32* @nf_log_mutex)
  %41 = call i32 (...) @synchronize_rcu()
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.nf_logger* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

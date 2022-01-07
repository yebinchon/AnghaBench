; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/pstore/extr_platform.c_pstore_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/pstore/extr_platform.c_pstore_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore_info = type { i32, i32, %struct.module* }
%struct.module = type { i32 }
%struct.TYPE_3__ = type { i64 }

@backend = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@pstore_lock = common dso_local global i32 0, align 4
@psinfo = common dso_local global %struct.pstore_info* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pstore_dumper = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@PSTORE_INTERVAL = common dso_local global i64 0, align 8
@pstore_timer = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [51 x i8] c"pstore: Registered %s as persistent store backend\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pstore_register(%struct.pstore_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pstore_info*, align 8
  %4 = alloca %struct.module*, align 8
  store %struct.pstore_info* %0, %struct.pstore_info** %3, align 8
  %5 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %6 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %5, i32 0, i32 2
  %7 = load %struct.module*, %struct.module** %6, align 8
  store %struct.module* %7, %struct.module** %4, align 8
  %8 = load i64, i64* @backend, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load i64, i64* @backend, align 8
  %12 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %13 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @strcmp(i64 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* @EPERM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %58

20:                                               ; preds = %10, %1
  %21 = call i32 @spin_lock(i32* @pstore_lock)
  %22 = load %struct.pstore_info*, %struct.pstore_info** @psinfo, align 8
  %23 = icmp ne %struct.pstore_info* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = call i32 @spin_unlock(i32* @pstore_lock)
  %26 = load i32, i32* @EBUSY, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %58

28:                                               ; preds = %20
  %29 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  store %struct.pstore_info* %29, %struct.pstore_info** @psinfo, align 8
  %30 = load %struct.pstore_info*, %struct.pstore_info** @psinfo, align 8
  %31 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %30, i32 0, i32 1
  %32 = call i32 @mutex_init(i32* %31)
  %33 = call i32 @spin_unlock(i32* @pstore_lock)
  %34 = load %struct.module*, %struct.module** %4, align 8
  %35 = icmp ne %struct.module* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.module*, %struct.module** %4, align 8
  %38 = call i32 @try_module_get(%struct.module* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  store %struct.pstore_info* null, %struct.pstore_info** @psinfo, align 8
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %58

43:                                               ; preds = %36, %28
  %44 = call i64 (...) @pstore_is_mounted()
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @pstore_get_records(i32 0)
  br label %48

48:                                               ; preds = %46, %43
  %49 = call i32 @kmsg_dump_register(i32* @pstore_dumper)
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i64, i64* @PSTORE_INTERVAL, align 8
  %52 = add nsw i64 %50, %51
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pstore_timer, i32 0, i32 0), align 8
  %53 = call i32 @add_timer(%struct.TYPE_3__* @pstore_timer)
  %54 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %55 = getelementptr inbounds %struct.pstore_info, %struct.pstore_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %56)
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %48, %40, %24, %17
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @try_module_get(%struct.module*) #1

declare dso_local i64 @pstore_is_mounted(...) #1

declare dso_local i32 @pstore_get_records(i32) #1

declare dso_local i32 @kmsg_dump_register(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

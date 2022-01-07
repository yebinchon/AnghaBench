; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_run_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/ztest/extr_ztest.c_ztest_run_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ztest_shared = common dso_local global i32* null, align 8
@ztest_opts = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@spa_config_path = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ztest_init(), pass %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ztest_run_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ztest_run_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = load i32*, i32** @ztest_shared, align 8
  store i32* %3, i32** %1, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ztest_opts, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @ASSERT(i32 %6)
  %8 = load i32, i32* @spa_config_path, align 4
  %9 = call i32 @remove(i32 %8)
  store i32 1, i32* %2, align 4
  br label %10

10:                                               ; preds = %28, %0
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ztest_opts, i32 0, i32 0), align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %31

14:                                               ; preds = %10
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @bzero(i32* %15, i32 4)
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ztest_opts, i32 0, i32 1), align 4
  %18 = icmp sge i32 %17, 3
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ztest_opts, i32 0, i32 0), align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %19, %14
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @ztest_init(i32* %26)
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %10

31:                                               ; preds = %10
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @remove(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ztest_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

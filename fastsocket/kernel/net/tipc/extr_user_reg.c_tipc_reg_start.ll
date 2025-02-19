; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_user_reg.c_tipc_reg_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_user_reg.c_tipc_reg_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MAX_USERID = common dso_local global i64 0, align 8
@users = common dso_local global %struct.TYPE_2__* null, align 8
@reg_callback = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_reg_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @reg_init()
  store i32 %4, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %1, align 4
  br label %33

8:                                                ; preds = %0
  store i64 1, i64* %2, align 8
  br label %9

9:                                                ; preds = %29, %8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* @MAX_USERID, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @users, align 8
  %15 = load i64, i64* %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load i64, i64* @reg_callback, align 8
  %22 = trunc i64 %21 to i32
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @users, align 8
  %24 = load i64, i64* %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %24
  %26 = ptrtoint %struct.TYPE_2__* %25 to i64
  %27 = call i32 @tipc_k_signal(i32 %22, i64 %26)
  br label %28

28:                                               ; preds = %20, %13
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %2, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %2, align 8
  br label %9

32:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %33

33:                                               ; preds = %32, %6
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @reg_init(...) #1

declare dso_local i32 @tipc_k_signal(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

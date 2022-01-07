; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_user_reg.c_reg_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_user_reg.c_reg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@reg_lock = common dso_local global i32 0, align 4
@users = common dso_local global %struct.TYPE_3__* null, align 8
@USER_LIST_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@MAX_USERID = common dso_local global i64 0, align 8
@next_free_user = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @reg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_init() #0 {
  %1 = alloca i64, align 8
  %2 = call i32 @spin_lock_bh(i32* @reg_lock)
  %3 = load %struct.TYPE_3__*, %struct.TYPE_3__** @users, align 8
  %4 = icmp ne %struct.TYPE_3__* %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @USER_LIST_SIZE, align 4
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.TYPE_3__* @kzalloc(i32 %6, i32 %7)
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** @users, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @users, align 8
  %10 = icmp ne %struct.TYPE_3__* %9, null
  br i1 %10, label %11, label %28

11:                                               ; preds = %5
  store i64 1, i64* %1, align 8
  br label %12

12:                                               ; preds = %23, %11
  %13 = load i64, i64* %1, align 8
  %14 = load i64, i64* @MAX_USERID, align 8
  %15 = icmp ule i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = load i64, i64* %1, align 8
  %18 = sub i64 %17, 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @users, align 8
  %20 = load i64, i64* %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64 %18, i64* %22, align 8
  br label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %1, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %1, align 8
  br label %12

26:                                               ; preds = %12
  %27 = load i64, i64* @MAX_USERID, align 8
  store i64 %27, i64* @next_free_user, align 8
  br label %28

28:                                               ; preds = %26, %5
  br label %29

29:                                               ; preds = %28, %0
  %30 = call i32 @spin_unlock_bh(i32* @reg_lock)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @users, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  br label %37

37:                                               ; preds = %34, %33
  %38 = phi i32 [ 0, %33 ], [ %36, %34 ]
  ret i32 %38
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.TYPE_3__* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

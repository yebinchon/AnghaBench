; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_user_reg.c_tipc_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_user_reg.c_tipc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_user = type { i64, i32, i8*, i64 }

@tipc_mode = common dso_local global i64 0, align 8
@TIPC_NOT_RUNNING = common dso_local global i64 0, align 8
@ENOPROTOOPT = common dso_local global i32 0, align 4
@users = common dso_local global %struct.tipc_user* null, align 8
@reg_lock = common dso_local global i32 0, align 4
@next_free_user = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@tipc_user_count = common dso_local global i32 0, align 4
@reg_callback = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_attach(i64* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tipc_user*, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i64, i64* @tipc_mode, align 8
  %10 = load i64, i64* @TIPC_NOT_RUNNING, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @ENOPROTOOPT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %66

18:                                               ; preds = %12, %3
  %19 = load %struct.tipc_user*, %struct.tipc_user** @users, align 8
  %20 = icmp ne %struct.tipc_user* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  %22 = call i32 (...) @reg_init()
  br label %23

23:                                               ; preds = %21, %18
  %24 = call i32 @spin_lock_bh(i32* @reg_lock)
  %25 = load i64, i64* @next_free_user, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = call i32 @spin_unlock_bh(i32* @reg_lock)
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %66

31:                                               ; preds = %23
  %32 = load %struct.tipc_user*, %struct.tipc_user** @users, align 8
  %33 = load i64, i64* @next_free_user, align 8
  %34 = getelementptr inbounds %struct.tipc_user, %struct.tipc_user* %32, i64 %33
  store %struct.tipc_user* %34, %struct.tipc_user** %8, align 8
  %35 = load i64, i64* @next_free_user, align 8
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  %37 = load %struct.tipc_user*, %struct.tipc_user** %8, align 8
  %38 = getelementptr inbounds %struct.tipc_user, %struct.tipc_user* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* @next_free_user, align 8
  %40 = load %struct.tipc_user*, %struct.tipc_user** %8, align 8
  %41 = getelementptr inbounds %struct.tipc_user, %struct.tipc_user* %40, i32 0, i32 0
  store i64 -1, i64* %41, align 8
  %42 = call i32 @spin_unlock_bh(i32* @reg_lock)
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.tipc_user*, %struct.tipc_user** %8, align 8
  %45 = getelementptr inbounds %struct.tipc_user, %struct.tipc_user* %44, i32 0, i32 3
  store i64 %43, i64* %45, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = load %struct.tipc_user*, %struct.tipc_user** %8, align 8
  %48 = getelementptr inbounds %struct.tipc_user, %struct.tipc_user* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load %struct.tipc_user*, %struct.tipc_user** %8, align 8
  %50 = getelementptr inbounds %struct.tipc_user, %struct.tipc_user* %49, i32 0, i32 1
  %51 = call i32 @INIT_LIST_HEAD(i32* %50)
  %52 = call i32 @atomic_inc(i32* @tipc_user_count)
  %53 = load i64, i64* %6, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %31
  %56 = load i64, i64* @tipc_mode, align 8
  %57 = load i64, i64* @TIPC_NOT_RUNNING, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load i64, i64* @reg_callback, align 8
  %61 = trunc i64 %60 to i32
  %62 = load %struct.tipc_user*, %struct.tipc_user** %8, align 8
  %63 = ptrtoint %struct.tipc_user* %62 to i64
  %64 = call i32 @tipc_k_signal(i32 %61, i64 %63)
  br label %65

65:                                               ; preds = %59, %55, %31
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %27, %15
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @reg_init(...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @tipc_k_signal(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

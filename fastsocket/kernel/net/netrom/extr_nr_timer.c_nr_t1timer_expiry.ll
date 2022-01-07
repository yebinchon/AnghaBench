; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_timer.c_nr_t1timer_expiry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/netrom/extr_nr_timer.c_nr_t1timer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.nr_sock = type { i32, i32, i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@NR_CONNREQ = common dso_local global i32 0, align 4
@NR_DISCREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @nr_t1timer_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nr_t1timer_expiry(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.nr_sock*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.sock*
  store %struct.sock* %6, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.nr_sock* @nr_sk(%struct.sock* %7)
  store %struct.nr_sock* %8, %struct.nr_sock** %4, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call i32 @bh_lock_sock(%struct.sock* %9)
  %11 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %12 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %82 [
    i32 130, label %14
    i32 129, label %37
    i32 128, label %60
  ]

14:                                               ; preds = %1
  %15 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %16 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %19 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = load i32, i32* @ETIMEDOUT, align 4
  %25 = call i32 @nr_disconnect(%struct.sock* %23, i32 %24)
  %26 = load %struct.sock*, %struct.sock** %3, align 8
  %27 = call i32 @bh_unlock_sock(%struct.sock* %26)
  br label %87

28:                                               ; preds = %14
  %29 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %30 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.sock*, %struct.sock** %3, align 8
  %34 = load i32, i32* @NR_CONNREQ, align 4
  %35 = call i32 @nr_write_internal(%struct.sock* %33, i32 %34)
  br label %36

36:                                               ; preds = %28
  br label %82

37:                                               ; preds = %1
  %38 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %39 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %42 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.sock*, %struct.sock** %3, align 8
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = call i32 @nr_disconnect(%struct.sock* %46, i32 %47)
  %49 = load %struct.sock*, %struct.sock** %3, align 8
  %50 = call i32 @bh_unlock_sock(%struct.sock* %49)
  br label %87

51:                                               ; preds = %37
  %52 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %53 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.sock*, %struct.sock** %3, align 8
  %57 = load i32, i32* @NR_DISCREQ, align 4
  %58 = call i32 @nr_write_internal(%struct.sock* %56, i32 %57)
  br label %59

59:                                               ; preds = %51
  br label %82

60:                                               ; preds = %1
  %61 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %62 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %65 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %60
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = load i32, i32* @ETIMEDOUT, align 4
  %71 = call i32 @nr_disconnect(%struct.sock* %69, i32 %70)
  %72 = load %struct.sock*, %struct.sock** %3, align 8
  %73 = call i32 @bh_unlock_sock(%struct.sock* %72)
  br label %87

74:                                               ; preds = %60
  %75 = load %struct.nr_sock*, %struct.nr_sock** %4, align 8
  %76 = getelementptr inbounds %struct.nr_sock, %struct.nr_sock* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.sock*, %struct.sock** %3, align 8
  %80 = call i32 @nr_requeue_frames(%struct.sock* %79)
  br label %81

81:                                               ; preds = %74
  br label %82

82:                                               ; preds = %1, %81, %59, %36
  %83 = load %struct.sock*, %struct.sock** %3, align 8
  %84 = call i32 @nr_start_t1timer(%struct.sock* %83)
  %85 = load %struct.sock*, %struct.sock** %3, align 8
  %86 = call i32 @bh_unlock_sock(%struct.sock* %85)
  br label %87

87:                                               ; preds = %82, %68, %45, %22
  ret void
}

declare dso_local %struct.nr_sock* @nr_sk(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @nr_disconnect(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @nr_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @nr_requeue_frames(%struct.sock*) #1

declare dso_local i32 @nr_start_t1timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_timewait_sock.c_inet_twdr_hangman.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_timewait_sock.c_inet_twdr_hangman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_timewait_death_row = type { i64, i32, i32, i32, i64, i32, i32 }

@INET_TWDR_TWKILL_SLOTS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_twdr_hangman(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.inet_timewait_death_row*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.inet_timewait_death_row*
  store %struct.inet_timewait_death_row* %6, %struct.inet_timewait_death_row** %3, align 8
  %7 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %3, align 8
  %8 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %7, i32 0, i32 3
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %3, align 8
  %11 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %63

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %16 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %3, align 8
  %17 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %3, align 8
  %18 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @inet_twdr_do_twkill_work(%struct.inet_timewait_death_row* %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %3, align 8
  %24 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 1, %25
  %27 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %3, align 8
  %28 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %3, align 8
  %32 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %31, i32 0, i32 6
  %33 = call i32 @schedule_work(i32* %32)
  store i32 1, i32* %4, align 4
  br label %50

34:                                               ; preds = %15
  %35 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %3, align 8
  %36 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %3, align 8
  %42 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @INET_TWDR_TWKILL_SLOTS, align 4
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %44, %46
  %48 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %3, align 8
  %49 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %40, %22
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %3, align 8
  %55 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %54, i32 0, i32 5
  %56 = load i64, i64* @jiffies, align 8
  %57 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %3, align 8
  %58 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %56, %59
  %61 = call i32 @mod_timer(i32* %55, i64 %60)
  br label %62

62:                                               ; preds = %53, %50
  br label %63

63:                                               ; preds = %62, %14
  %64 = load %struct.inet_timewait_death_row*, %struct.inet_timewait_death_row** %3, align 8
  %65 = getelementptr inbounds %struct.inet_timewait_death_row, %struct.inet_timewait_death_row* %64, i32 0, i32 3
  %66 = call i32 @spin_unlock(i32* %65)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @inet_twdr_do_twkill_work(%struct.inet_timewait_death_row*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glock.c_gfs2_glock_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_glock.c_gfs2_glock_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_glock = type { i32, %struct.gfs2_sbd* }
%struct.gfs2_sbd = type { i32, i32 }

@gfs2_glock_dealloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfs2_glock_free(%struct.gfs2_glock* %0) #0 {
  %2 = alloca %struct.gfs2_glock*, align 8
  %3 = alloca %struct.gfs2_sbd*, align 8
  store %struct.gfs2_glock* %0, %struct.gfs2_glock** %2, align 8
  %4 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %5 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %4, i32 0, i32 1
  %6 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %5, align 8
  store %struct.gfs2_sbd* %6, %struct.gfs2_sbd** %3, align 8
  %7 = load %struct.gfs2_glock*, %struct.gfs2_glock** %2, align 8
  %8 = getelementptr inbounds %struct.gfs2_glock, %struct.gfs2_glock* %7, i32 0, i32 0
  %9 = load i32, i32* @gfs2_glock_dealloc, align 4
  %10 = call i32 @call_rcu(i32* %8, i32 %9)
  %11 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %12 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %11, i32 0, i32 1
  %13 = call i64 @atomic_dec_and_test(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %3, align 8
  %17 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %16, i32 0, i32 0
  %18 = call i32 @wake_up(i32* %17)
  br label %19

19:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @call_rcu(i32*, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

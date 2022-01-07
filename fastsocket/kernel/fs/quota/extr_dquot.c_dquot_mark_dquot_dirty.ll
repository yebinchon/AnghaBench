; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dquot_mark_dquot_dirty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dquot_mark_dquot_dirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i64, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@dq_list_lock = common dso_local global i32 0, align 4
@DQ_MOD_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dquot_mark_dquot_dirty(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %3 = call i32 @spin_lock(i32* @dq_list_lock)
  %4 = load i32, i32* @DQ_MOD_B, align 4
  %5 = load %struct.dquot*, %struct.dquot** %2, align 8
  %6 = getelementptr inbounds %struct.dquot, %struct.dquot* %5, i32 0, i32 3
  %7 = call i32 @test_and_set_bit(i32 %4, i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %1
  %10 = load %struct.dquot*, %struct.dquot** %2, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 2
  %12 = load %struct.dquot*, %struct.dquot** %2, align 8
  %13 = getelementptr inbounds %struct.dquot, %struct.dquot* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.TYPE_4__* @sb_dqopt(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load %struct.dquot*, %struct.dquot** %2, align 8
  %19 = getelementptr inbounds %struct.dquot, %struct.dquot* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = call i32 @list_add(i32* %11, i32* %22)
  br label %24

24:                                               ; preds = %9, %1
  %25 = call i32 @spin_unlock(i32* @dq_list_lock)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @sb_dqopt(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

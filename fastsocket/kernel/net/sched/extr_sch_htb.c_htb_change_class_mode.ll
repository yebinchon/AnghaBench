; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_change_class_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_change_class_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_sched = type { i32 }
%struct.htb_class = type { i32, i64 }

@HTB_CANT_SEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htb_sched*, %struct.htb_class*, i64*)* @htb_change_class_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htb_change_class_mode(%struct.htb_sched* %0, %struct.htb_class* %1, i64* %2) #0 {
  %4 = alloca %struct.htb_sched*, align 8
  %5 = alloca %struct.htb_class*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.htb_sched* %0, %struct.htb_sched** %4, align 8
  store %struct.htb_class* %1, %struct.htb_class** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %9 = load i64*, i64** %6, align 8
  %10 = call i32 @htb_class_mode(%struct.htb_class* %8, i64* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %13 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %50

17:                                               ; preds = %3
  %18 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %19 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %17
  %23 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %24 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* @HTB_CANT_SEND, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %31 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %32 = call i32 @htb_deactivate_prios(%struct.htb_sched* %30, %struct.htb_class* %31)
  br label %33

33:                                               ; preds = %29, %22
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %36 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* @HTB_CANT_SEND, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %43 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %44 = call i32 @htb_activate_prios(%struct.htb_sched* %42, %struct.htb_class* %43)
  br label %45

45:                                               ; preds = %41, %33
  br label %50

46:                                               ; preds = %17
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %49 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %50

50:                                               ; preds = %16, %46, %45
  ret void
}

declare dso_local i32 @htb_class_mode(%struct.htb_class*, i64*) #1

declare dso_local i32 @htb_deactivate_prios(%struct.htb_sched*, %struct.htb_class*) #1

declare dso_local i32 @htb_activate_prios(%struct.htb_sched*, %struct.htb_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

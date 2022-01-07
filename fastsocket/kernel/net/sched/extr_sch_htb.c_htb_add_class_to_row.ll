; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_add_class_to_row.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_add_class_to_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_sched = type { i32*, i64* }
%struct.htb_class = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htb_sched*, %struct.htb_class*, i32)* @htb_add_class_to_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htb_add_class_to_row(%struct.htb_sched* %0, %struct.htb_class* %1, i32 %2) #0 {
  %4 = alloca %struct.htb_sched*, align 8
  %5 = alloca %struct.htb_class*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.htb_sched* %0, %struct.htb_sched** %4, align 8
  store %struct.htb_class* %1, %struct.htb_class** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %10 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %13 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %8
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %21, %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = xor i32 %22, -1
  %24 = call i32 @ffz(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 1, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %31 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %30, i32 0, i32 1
  %32 = load i64*, i64** %31, align 8
  %33 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %34 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @htb_add_to_id_tree(i64 %40, %struct.htb_class* %41, i32 %42)
  br label %18

44:                                               ; preds = %18
  ret void
}

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @htb_add_to_id_tree(i64, %struct.htb_class*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

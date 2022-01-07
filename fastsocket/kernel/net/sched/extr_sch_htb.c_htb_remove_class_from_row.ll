; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_remove_class_from_row.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_htb.c_htb_remove_class_from_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_sched = type { i64**, i32*, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.htb_class = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htb_sched*, %struct.htb_class*, i32)* @htb_remove_class_from_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htb_remove_class_from_row(%struct.htb_sched* %0, %struct.htb_class* %1, i32 %2) #0 {
  %4 = alloca %struct.htb_sched*, align 8
  %5 = alloca %struct.htb_class*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.htb_sched* %0, %struct.htb_sched** %4, align 8
  store %struct.htb_class* %1, %struct.htb_class** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %91, %3
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %92

12:                                               ; preds = %9
  %13 = load i32, i32* %6, align 4
  %14 = xor i32 %13, -1
  %15 = call i32 @ffz(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %6, align 4
  %21 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %22 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %21, i32 0, i32 0
  %23 = load i64**, i64*** %22, align 8
  %24 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %25 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i64*, i64** %23, i64 %26
  %28 = load i64*, i64** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %34 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = icmp eq i64 %32, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %12
  %41 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %42 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %41, i32 0, i32 0
  %43 = load i64**, i64*** %42, align 8
  %44 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %45 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i64*, i64** %43, i64 %46
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = call i32 @htb_next_rb_node(i64* %51)
  br label %53

53:                                               ; preds = %40, %12
  %54 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %55 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %56, %58
  %60 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %61 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %60, i32 0, i32 2
  %62 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %61, align 8
  %63 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %64 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %62, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = call i32 @htb_safe_rb_erase(i64 %59, %struct.TYPE_2__* %70)
  %72 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %73 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %73, align 8
  %75 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %76 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %74, i64 %77
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %91, label %86

86:                                               ; preds = %53
  %87 = load i32, i32* %8, align 4
  %88 = shl i32 1, %87
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  br label %91

91:                                               ; preds = %86, %53
  br label %9

92:                                               ; preds = %9
  %93 = load i32, i32* %7, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.htb_sched*, %struct.htb_sched** %4, align 8
  %96 = getelementptr inbounds %struct.htb_sched, %struct.htb_sched* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load %struct.htb_class*, %struct.htb_class** %5, align 8
  %99 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i32, i32* %97, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, %94
  store i32 %103, i32* %101, align 4
  ret void
}

declare dso_local i32 @ffz(i32) #1

declare dso_local i32 @htb_next_rb_node(i64*) #1

declare dso_local i32 @htb_safe_rb_erase(i64, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

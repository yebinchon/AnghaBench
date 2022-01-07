; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_follow_die_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_dwarf2read.c_follow_die_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.die_info = type { i32, %struct.die_info* }

@REF_HASH_SIZE = common dso_local global i32 0, align 4
@die_ref_table = common dso_local global %struct.die_info** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.die_info* (i32)* @follow_die_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.die_info* @follow_die_ref(i32 %0) #0 {
  %2 = alloca %struct.die_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.die_info*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @REF_HASH_SIZE, align 4
  %8 = urem i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.die_info**, %struct.die_info*** @die_ref_table, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.die_info*, %struct.die_info** %9, i64 %11
  %13 = load %struct.die_info*, %struct.die_info** %12, align 8
  store %struct.die_info* %13, %struct.die_info** %4, align 8
  br label %14

14:                                               ; preds = %25, %1
  %15 = load %struct.die_info*, %struct.die_info** %4, align 8
  %16 = icmp ne %struct.die_info* %15, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = load %struct.die_info*, %struct.die_info** %4, align 8
  %19 = getelementptr inbounds %struct.die_info, %struct.die_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.die_info*, %struct.die_info** %4, align 8
  store %struct.die_info* %24, %struct.die_info** %2, align 8
  br label %30

25:                                               ; preds = %17
  %26 = load %struct.die_info*, %struct.die_info** %4, align 8
  %27 = getelementptr inbounds %struct.die_info, %struct.die_info* %26, i32 0, i32 1
  %28 = load %struct.die_info*, %struct.die_info** %27, align 8
  store %struct.die_info* %28, %struct.die_info** %4, align 8
  br label %14

29:                                               ; preds = %14
  store %struct.die_info* null, %struct.die_info** %2, align 8
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.die_info*, %struct.die_info** %2, align 8
  ret %struct.die_info* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

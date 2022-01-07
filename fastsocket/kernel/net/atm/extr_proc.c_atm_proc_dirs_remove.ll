; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_proc.c_atm_proc_dirs_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_proc.c_atm_proc_dirs_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_proc_entry = type { i64, i64 }

@atm_proc_dirs_remove.e = internal global %struct.atm_proc_entry* null, align 8
@atm_proc_ents = common dso_local global %struct.atm_proc_entry* null, align 8
@atm_proc_root = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"atm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @atm_proc_dirs_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atm_proc_dirs_remove() #0 {
  %1 = load %struct.atm_proc_entry*, %struct.atm_proc_entry** @atm_proc_ents, align 8
  store %struct.atm_proc_entry* %1, %struct.atm_proc_entry** @atm_proc_dirs_remove.e, align 8
  br label %2

2:                                                ; preds = %19, %0
  %3 = load %struct.atm_proc_entry*, %struct.atm_proc_entry** @atm_proc_dirs_remove.e, align 8
  %4 = getelementptr inbounds %struct.atm_proc_entry, %struct.atm_proc_entry* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load %struct.atm_proc_entry*, %struct.atm_proc_entry** @atm_proc_dirs_remove.e, align 8
  %9 = getelementptr inbounds %struct.atm_proc_entry, %struct.atm_proc_entry* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.atm_proc_entry*, %struct.atm_proc_entry** @atm_proc_dirs_remove.e, align 8
  %14 = getelementptr inbounds %struct.atm_proc_entry, %struct.atm_proc_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* @atm_proc_root, align 4
  %17 = call i32 @remove_proc_entry(i64 %15, i32 %16)
  br label %18

18:                                               ; preds = %12, %7
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.atm_proc_entry*, %struct.atm_proc_entry** @atm_proc_dirs_remove.e, align 8
  %21 = getelementptr inbounds %struct.atm_proc_entry, %struct.atm_proc_entry* %20, i32 1
  store %struct.atm_proc_entry* %21, %struct.atm_proc_entry** @atm_proc_dirs_remove.e, align 8
  br label %2

22:                                               ; preds = %2
  %23 = call i32 @proc_net_remove(i32* @init_net, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @remove_proc_entry(i64, i32) #1

declare dso_local i32 @proc_net_remove(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

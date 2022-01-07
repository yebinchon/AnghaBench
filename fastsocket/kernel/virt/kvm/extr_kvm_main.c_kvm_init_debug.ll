; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_init_debug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/virt/kvm/extr_kvm_main.c_kvm_init_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_stats_debugfs_item = type { i64, i64, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"kvm\00", align 1
@kvm_debugfs_dir = common dso_local global i32 0, align 4
@debugfs_entries = common dso_local global %struct.kvm_stats_debugfs_item* null, align 8
@stat_fops = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kvm_init_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_init_debug() #0 {
  %1 = alloca %struct.kvm_stats_debugfs_item*, align 8
  %2 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %2, i32* @kvm_debugfs_dir, align 4
  %3 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** @debugfs_entries, align 8
  store %struct.kvm_stats_debugfs_item* %3, %struct.kvm_stats_debugfs_item** %1, align 8
  br label %4

4:                                                ; preds = %27, %0
  %5 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %1, align 8
  %6 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %4
  %10 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %1, align 8
  %11 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @kvm_debugfs_dir, align 4
  %14 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %1, align 8
  %15 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load i32*, i32** @stat_fops, align 8
  %19 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %1, align 8
  %20 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @debugfs_create_file(i64 %12, i32 292, i32 %13, i8* %17, i32 %23)
  %25 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %1, align 8
  %26 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %9
  %28 = load %struct.kvm_stats_debugfs_item*, %struct.kvm_stats_debugfs_item** %1, align 8
  %29 = getelementptr inbounds %struct.kvm_stats_debugfs_item, %struct.kvm_stats_debugfs_item* %28, i32 1
  store %struct.kvm_stats_debugfs_item* %29, %struct.kvm_stats_debugfs_item** %1, align 8
  br label %4

30:                                               ; preds = %4
  ret void
}

declare dso_local i32 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @debugfs_create_file(i64, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

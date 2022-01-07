; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_devtree.c___proc_device_tree_add_prop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_devtree.c___proc_device_tree_add_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_dir_entry = type { i64 }
%struct.property = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"security-\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@property_read_proc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.proc_dir_entry* (%struct.proc_dir_entry*, %struct.property*, i8*)* @__proc_device_tree_add_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.proc_dir_entry* @__proc_device_tree_add_prop(%struct.proc_dir_entry* %0, %struct.property* %1, i8* %2) #0 {
  %4 = alloca %struct.proc_dir_entry*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca %struct.property*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.proc_dir_entry*, align 8
  store %struct.proc_dir_entry* %0, %struct.proc_dir_entry** %5, align 8
  store %struct.property* %1, %struct.property** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = call i64 @strncmp(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @S_IRUGO, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @S_IRUSR, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %20 = load i32, i32* @property_read_proc, align 4
  %21 = load %struct.property*, %struct.property** %6, align 8
  %22 = call %struct.proc_dir_entry* @create_proc_read_entry(i8* %9, i32 %18, %struct.proc_dir_entry* %19, i32 %20, %struct.property* %21)
  store %struct.proc_dir_entry* %22, %struct.proc_dir_entry** %8, align 8
  %23 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %24 = icmp eq %struct.proc_dir_entry* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store %struct.proc_dir_entry* null, %struct.proc_dir_entry** %4, align 8
  br label %41

26:                                               ; preds = %17
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strncmp(i8* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 9)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %32 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %39

33:                                               ; preds = %26
  %34 = load %struct.property*, %struct.property** %6, align 8
  %35 = getelementptr inbounds %struct.property, %struct.property* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  %38 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %33, %30
  %40 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %8, align 8
  store %struct.proc_dir_entry* %40, %struct.proc_dir_entry** %4, align 8
  br label %41

41:                                               ; preds = %39, %25
  %42 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %4, align 8
  ret %struct.proc_dir_entry* %42
}

declare dso_local %struct.proc_dir_entry* @create_proc_read_entry(i8*, i32, %struct.proc_dir_entry*, i32, %struct.property*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

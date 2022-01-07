; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_reg_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_inode.c_proc_reg_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.poll_table_struct = type { i32 }
%struct.proc_dir_entry = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.file*, %struct.poll_table_struct*)* }

@DEFAULT_POLLMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @proc_reg_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_reg_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.poll_table_struct*, align 8
  %6 = alloca %struct.proc_dir_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (%struct.file*, %struct.poll_table_struct*)*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %5, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.proc_dir_entry* @PDE(i32 %14)
  store %struct.proc_dir_entry* %15, %struct.proc_dir_entry** %6, align 8
  %16 = load i32, i32* @DEFAULT_POLLMASK, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %18 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %21 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %26 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %53

29:                                               ; preds = %2
  %30 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %31 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %35 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32 (%struct.file*, %struct.poll_table_struct*)*, i32 (%struct.file*, %struct.poll_table_struct*)** %37, align 8
  store i32 (%struct.file*, %struct.poll_table_struct*)* %38, i32 (%struct.file*, %struct.poll_table_struct*)** %8, align 8
  %39 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %40 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock(i32* %40)
  %42 = load i32 (%struct.file*, %struct.poll_table_struct*)*, i32 (%struct.file*, %struct.poll_table_struct*)** %8, align 8
  %43 = icmp ne i32 (%struct.file*, %struct.poll_table_struct*)* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %29
  %45 = load i32 (%struct.file*, %struct.poll_table_struct*)*, i32 (%struct.file*, %struct.poll_table_struct*)** %8, align 8
  %46 = load %struct.file*, %struct.file** %4, align 8
  %47 = load %struct.poll_table_struct*, %struct.poll_table_struct** %5, align 8
  %48 = call i32 %45(%struct.file* %46, %struct.poll_table_struct* %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %44, %29
  %50 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %6, align 8
  %51 = call i32 @pde_users_dec(%struct.proc_dir_entry* %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %24
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.proc_dir_entry* @PDE(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pde_users_dec(%struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_open.c_fd_reinstall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_open.c_fd_reinstall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.files_struct* }
%struct.files_struct = type { i32 }
%struct.file = type { i32 }
%struct.fdtable = type { i32** }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fd_reinstall(i32 %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.files_struct*, align 8
  %6 = alloca %struct.fdtable*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.files_struct*, %struct.files_struct** %8, align 8
  store %struct.files_struct* %9, %struct.files_struct** %5, align 8
  %10 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %11 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %14 = call %struct.fdtable* @files_fdtable(%struct.files_struct* %13)
  store %struct.fdtable* %14, %struct.fdtable** %6, align 8
  %15 = load %struct.fdtable*, %struct.fdtable** %6, align 8
  %16 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.fdtable*, %struct.fdtable** %6, align 8
  %26 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.file*, %struct.file** %4, align 8
  %33 = call i32 @rcu_assign_pointer(i32* %31, %struct.file* %32)
  %34 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %35 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.fdtable* @files_fdtable(%struct.files_struct*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32*, %struct.file*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

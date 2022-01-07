; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/fastsocket/extr_fastsocket_core.c_fsocket_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.files_struct* }
%struct.files_struct = type { i32 }
%struct.file = type { i32 }
%struct.fdtable = type { i32, i32, %struct.file** }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fsocket_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.files_struct*, align 8
  %6 = alloca %struct.fdtable*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.files_struct*, %struct.files_struct** %9, align 8
  store %struct.files_struct* %10, %struct.files_struct** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %12 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %15 = call %struct.fdtable* @files_fdtable(%struct.files_struct* %14)
  store %struct.fdtable* %15, %struct.fdtable** %6, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.fdtable*, %struct.fdtable** %6, align 8
  %18 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp uge i32 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %56

22:                                               ; preds = %1
  %23 = load %struct.fdtable*, %struct.fdtable** %6, align 8
  %24 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %23, i32 0, i32 2
  %25 = load %struct.file**, %struct.file*** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.file*, %struct.file** %25, i64 %27
  %29 = load %struct.file*, %struct.file** %28, align 8
  store %struct.file* %29, %struct.file** %4, align 8
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = icmp ne %struct.file* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  br label %56

33:                                               ; preds = %22
  %34 = load %struct.fdtable*, %struct.fdtable** %6, align 8
  %35 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %34, i32 0, i32 2
  %36 = load %struct.file**, %struct.file*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.file*, %struct.file** %36, i64 %38
  %40 = load %struct.file*, %struct.file** %39, align 8
  %41 = call i32 @rcu_assign_pointer(%struct.file* %40, i32* null)
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.fdtable*, %struct.fdtable** %6, align 8
  %44 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @FD_CLR(i32 %42, i32 %45)
  %47 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @__put_unused_fd(%struct.files_struct* %47, i32 %48)
  %50 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %51 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.file*, %struct.file** %4, align 8
  %54 = call i32 @fsocket_filp_close(%struct.file* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %2, align 4
  br label %62

56:                                               ; preds = %32, %21
  %57 = load %struct.files_struct*, %struct.files_struct** %5, align 8
  %58 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load i32, i32* @EBADF, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %56, %33
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.fdtable* @files_fdtable(%struct.files_struct*) #1

declare dso_local i32 @rcu_assign_pointer(%struct.file*, i32*) #1

declare dso_local i32 @FD_CLR(i32, i32) #1

declare dso_local i32 @__put_unused_fd(%struct.files_struct*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fsocket_filp_close(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

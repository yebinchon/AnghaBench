; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_file_table.c_fget_light.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_file_table.c_fget_light.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.files_struct* }
%struct.files_struct = type { i32 }
%struct.file = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @fget_light(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.files_struct*, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.files_struct*, %struct.files_struct** %8, align 8
  store %struct.files_struct* %9, %struct.files_struct** %6, align 8
  %10 = load i32*, i32** %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %12 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %11, i32 0, i32 0
  %13 = call i32 @atomic_read(i32* %12)
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call %struct.file* @fcheck_files(%struct.files_struct* %19, i32 %20)
  store %struct.file* %21, %struct.file** %5, align 8
  br label %40

22:                                               ; preds = %2
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.files_struct*, %struct.files_struct** %6, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call %struct.file* @fcheck_files(%struct.files_struct* %24, i32 %25)
  store %struct.file* %26, %struct.file** %5, align 8
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = icmp ne %struct.file* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.file*, %struct.file** %5, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 0
  %32 = call i64 @atomic_long_inc_not_zero(i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32*, i32** %4, align 8
  store i32 1, i32* %35, align 4
  br label %37

36:                                               ; preds = %29
  store %struct.file* null, %struct.file** %5, align 8
  br label %37

37:                                               ; preds = %36, %34
  br label %38

38:                                               ; preds = %37, %22
  %39 = call i32 (...) @rcu_read_unlock()
  br label %40

40:                                               ; preds = %38, %18
  %41 = load %struct.file*, %struct.file** %5, align 8
  ret %struct.file* %41
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.file* @fcheck_files(%struct.files_struct*, i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i64 @atomic_long_inc_not_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

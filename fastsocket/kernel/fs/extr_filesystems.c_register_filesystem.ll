; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_filesystems.c_register_filesystem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_filesystems.c_register_filesystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_system_type = type { i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@file_systems_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @register_filesystem(%struct.file_system_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file_system_type*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.file_system_type**, align 8
  store %struct.file_system_type* %0, %struct.file_system_type** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %7 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @strchr(i32 %8, i8 signext 46)
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %12 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  %19 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %20 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %19, i32 0, i32 1
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = call i32 @write_lock(i32* @file_systems_lock)
  %23 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %24 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %27 = getelementptr inbounds %struct.file_system_type, %struct.file_system_type* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @strlen(i32 %28)
  %30 = call %struct.file_system_type** @find_filesystem(i32 %25, i32 %29)
  store %struct.file_system_type** %30, %struct.file_system_type*** %5, align 8
  %31 = load %struct.file_system_type**, %struct.file_system_type*** %5, align 8
  %32 = load %struct.file_system_type*, %struct.file_system_type** %31, align 8
  %33 = icmp ne %struct.file_system_type* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %18
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %40

37:                                               ; preds = %18
  %38 = load %struct.file_system_type*, %struct.file_system_type** %3, align 8
  %39 = load %struct.file_system_type**, %struct.file_system_type*** %5, align 8
  store %struct.file_system_type* %38, %struct.file_system_type** %39, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = call i32 @write_unlock(i32* @file_systems_lock)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %15
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @strchr(i32, i8 signext) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local %struct.file_system_type** @find_filesystem(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

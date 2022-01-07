; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_flush_old_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_exec.c_flush_old_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files_struct = type { i32 }
%struct.fdtable = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }

@__NFDBITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.files_struct*)* @flush_old_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_old_files(%struct.files_struct* %0) #0 {
  %2 = alloca %struct.files_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.fdtable*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.files_struct* %0, %struct.files_struct** %2, align 8
  store i64 -1, i64* %3, align 8
  %7 = load %struct.files_struct*, %struct.files_struct** %2, align 8
  %8 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  br label %10

10:                                               ; preds = %63, %35, %1
  %11 = load i64, i64* %3, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @__NFDBITS, align 8
  %15 = mul nsw i64 %13, %14
  store i64 %15, i64* %6, align 8
  %16 = load %struct.files_struct*, %struct.files_struct** %2, align 8
  %17 = call %struct.fdtable* @files_fdtable(%struct.files_struct* %16)
  store %struct.fdtable* %17, %struct.fdtable** %4, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %20 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp uge i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %10
  br label %67

24:                                               ; preds = %10
  %25 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %26 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  br label %10

36:                                               ; preds = %24
  %37 = load %struct.fdtable*, %struct.fdtable** %4, align 8
  %38 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 0, i64* %43, align 8
  %44 = load %struct.files_struct*, %struct.files_struct** %2, align 8
  %45 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock(i32* %45)
  br label %47

47:                                               ; preds = %58, %36
  %48 = load i64, i64* %5, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load i64, i64* %5, align 8
  %52 = and i64 %51, 1
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @sys_close(i64 %55)
  br label %57

57:                                               ; preds = %54, %50
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %6, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %5, align 8
  %62 = lshr i64 %61, 1
  store i64 %62, i64* %5, align 8
  br label %47

63:                                               ; preds = %47
  %64 = load %struct.files_struct*, %struct.files_struct** %2, align 8
  %65 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %64, i32 0, i32 0
  %66 = call i32 @spin_lock(i32* %65)
  br label %10

67:                                               ; preds = %23
  %68 = load %struct.files_struct*, %struct.files_struct** %2, align 8
  %69 = getelementptr inbounds %struct.files_struct, %struct.files_struct* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock(i32* %69)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.fdtable* @files_fdtable(%struct.files_struct*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @sys_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

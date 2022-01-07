; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_close_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_exit.c_close_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.files_struct = type { i32 }
%struct.fdtable = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64* }
%struct.file = type { i32 }

@__NFDBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.files_struct*)* @close_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_files(%struct.files_struct* %0) #0 {
  %2 = alloca %struct.files_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fdtable*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  store %struct.files_struct* %0, %struct.files_struct** %2, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.files_struct*, %struct.files_struct** %2, align 8
  %9 = call %struct.fdtable* @files_fdtable(%struct.files_struct* %8)
  store %struct.fdtable* %9, %struct.fdtable** %5, align 8
  br label %10

10:                                               ; preds = %59, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @__NFDBITS, align 4
  %13 = mul nsw i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %16 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %60

20:                                               ; preds = %10
  %21 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %22 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i64, i64* %25, i64 %28
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %54, %20
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  %35 = load i64, i64* %6, align 8
  %36 = and i64 %35, 1
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load %struct.fdtable*, %struct.fdtable** %5, align 8
  %40 = getelementptr inbounds %struct.fdtable, %struct.fdtable* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = call %struct.file* @xchg(i32* %44, i32* null)
  store %struct.file* %45, %struct.file** %7, align 8
  %46 = load %struct.file*, %struct.file** %7, align 8
  %47 = icmp ne %struct.file* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.file*, %struct.file** %7, align 8
  %50 = load %struct.files_struct*, %struct.files_struct** %2, align 8
  %51 = call i32 @filp_close(%struct.file* %49, %struct.files_struct* %50)
  %52 = call i32 (...) @cond_resched()
  br label %53

53:                                               ; preds = %48, %38
  br label %54

54:                                               ; preds = %53, %34
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  %57 = load i64, i64* %6, align 8
  %58 = lshr i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %31

59:                                               ; preds = %31
  br label %10

60:                                               ; preds = %19
  ret void
}

declare dso_local %struct.fdtable* @files_fdtable(%struct.files_struct*) #1

declare dso_local %struct.file* @xchg(i32*, i32*) #1

declare dso_local i32 @filp_close(%struct.file*, %struct.files_struct*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

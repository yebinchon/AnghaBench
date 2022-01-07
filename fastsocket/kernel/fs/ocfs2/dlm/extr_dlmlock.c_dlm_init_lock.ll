; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmlock.c_dlm_init_lock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/dlm/extr_dlmlock.c_dlm_init_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_lock = type { i32, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__, i32*, i32*, i32*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i32, i8*, i8* }

@LKM_IVMODE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_lock*, i32, i32, i32)* @dlm_init_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlm_init_lock(%struct.dlm_lock* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dlm_lock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dlm_lock* %0, %struct.dlm_lock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %10 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %9, i32 0, i32 15
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %13 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %12, i32 0, i32 14
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %16 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %15, i32 0, i32 13
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %19 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %18, i32 0, i32 12
  %20 = call i32 @spin_lock_init(i32* %19)
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %23 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %22, i32 0, i32 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i8*, i8** @LKM_IVMODE, align 8
  %26 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %27 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 7
  store i8* %25, i8** %28, align 8
  %29 = load i8*, i8** @LKM_IVMODE, align 8
  %30 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %31 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 6
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %35 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  store i32 %33, i32* %36, align 8
  %37 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %38 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %41 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %40, i32 0, i32 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %44 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %43, i32 0, i32 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %47 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %46, i32 0, i32 11
  store i32* null, i32** %47, align 8
  %48 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %49 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %48, i32 0, i32 10
  store i32* null, i32** %49, align 8
  %50 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %51 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %50, i32 0, i32 9
  store i32* null, i32** %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @cpu_to_be64(i32 %52)
  %54 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %55 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %54, i32 0, i32 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  store i32 %53, i32* %56, align 4
  %57 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %58 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %57, i32 0, i32 7
  store i64 0, i64* %58, align 8
  %59 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %60 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %59, i32 0, i32 6
  store i64 0, i64* %60, align 8
  %61 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %62 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %61, i32 0, i32 5
  store i64 0, i64* %62, align 8
  %63 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %64 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %66 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %68 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %70 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.dlm_lock*, %struct.dlm_lock** %5, align 8
  %72 = getelementptr inbounds %struct.dlm_lock, %struct.dlm_lock* %71, i32 0, i32 0
  %73 = call i32 @kref_init(i32* %72)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @kref_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

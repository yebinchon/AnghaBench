; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_search_rsb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lock.c_search_rsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dlm_rsb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dlm_ls*, i8*, i32, i32, i32, %struct.dlm_rsb**)* @search_rsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @search_rsb(%struct.dlm_ls* %0, i8* %1, i32 %2, i32 %3, i32 %4, %struct.dlm_rsb** %5) #0 {
  %7 = alloca %struct.dlm_ls*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dlm_rsb**, align 8
  %13 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.dlm_rsb** %5, %struct.dlm_rsb*** %12, align 8
  %14 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %15 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.dlm_rsb**, %struct.dlm_rsb*** %12, align 8
  %28 = call i32 @_search_rsb(%struct.dlm_ls* %22, i8* %23, i32 %24, i32 %25, i32 %26, %struct.dlm_rsb** %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.dlm_ls*, %struct.dlm_ls** %7, align 8
  %30 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load i32, i32* %13, align 4
  ret i32 %37
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_search_rsb(%struct.dlm_ls*, i8*, i32, i32, i32, %struct.dlm_rsb**) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

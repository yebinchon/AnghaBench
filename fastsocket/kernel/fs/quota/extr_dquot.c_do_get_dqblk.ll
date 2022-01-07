; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_do_get_dqblk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_do_get_dqblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { %struct.mem_dqblk }
%struct.mem_dqblk = type { i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.if_dqblk = type { i32, i32, i32, i32, i32, i32, i64, i8*, i8* }

@dq_data_lock = common dso_local global i32 0, align 4
@QIF_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dquot*, %struct.if_dqblk*)* @do_get_dqblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_get_dqblk(%struct.dquot* %0, %struct.if_dqblk* %1) #0 {
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca %struct.if_dqblk*, align 8
  %5 = alloca %struct.mem_dqblk*, align 8
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  store %struct.if_dqblk* %1, %struct.if_dqblk** %4, align 8
  %6 = load %struct.dquot*, %struct.dquot** %3, align 8
  %7 = getelementptr inbounds %struct.dquot, %struct.dquot* %6, i32 0, i32 0
  store %struct.mem_dqblk* %7, %struct.mem_dqblk** %5, align 8
  %8 = call i32 @spin_lock(i32* @dq_data_lock)
  %9 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %10 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @stoqb(i32 %11)
  %13 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %14 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %13, i32 0, i32 8
  store i8* %12, i8** %14, align 8
  %15 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %16 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = call i8* @stoqb(i32 %17)
  %19 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %20 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %19, i32 0, i32 7
  store i8* %18, i8** %20, align 8
  %21 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %22 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %25 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %23, %26
  %28 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %29 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %28, i32 0, i32 6
  store i64 %27, i64* %29, align 8
  %30 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %31 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %34 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %36 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %39 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %41 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %44 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %46 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %49 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.mem_dqblk*, %struct.mem_dqblk** %5, align 8
  %51 = getelementptr inbounds %struct.mem_dqblk, %struct.mem_dqblk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %54 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @QIF_ALL, align 4
  %56 = load %struct.if_dqblk*, %struct.if_dqblk** %4, align 8
  %57 = getelementptr inbounds %struct.if_dqblk, %struct.if_dqblk* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = call i32 @spin_unlock(i32* @dq_data_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @stoqb(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

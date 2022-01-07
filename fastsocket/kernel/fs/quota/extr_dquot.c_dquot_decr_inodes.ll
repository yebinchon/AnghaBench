; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dquot_decr_inodes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_dquot_decr_inodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@DQUOT_NEGATIVE_USAGE = common dso_local global i32 0, align 4
@DQ_INODES_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dquot*, i64)* @dquot_decr_inodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dquot_decr_inodes(%struct.dquot* %0, i64 %1) #0 {
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca i64, align 8
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.dquot*, %struct.dquot** %3, align 8
  %6 = getelementptr inbounds %struct.dquot, %struct.dquot* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.TYPE_4__* @sb_dqopt(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DQUOT_NEGATIVE_USAGE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %2
  %15 = load %struct.dquot*, %struct.dquot** %3, align 8
  %16 = getelementptr inbounds %struct.dquot, %struct.dquot* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %14, %2
  %22 = load i64, i64* %4, align 8
  %23 = load %struct.dquot*, %struct.dquot** %3, align 8
  %24 = getelementptr inbounds %struct.dquot, %struct.dquot* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %26, %22
  store i64 %27, i64* %25, align 8
  br label %32

28:                                               ; preds = %14
  %29 = load %struct.dquot*, %struct.dquot** %3, align 8
  %30 = getelementptr inbounds %struct.dquot, %struct.dquot* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %21
  %33 = load %struct.dquot*, %struct.dquot** %3, align 8
  %34 = getelementptr inbounds %struct.dquot, %struct.dquot* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.dquot*, %struct.dquot** %3, align 8
  %38 = getelementptr inbounds %struct.dquot, %struct.dquot* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %36, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load %struct.dquot*, %struct.dquot** %3, align 8
  %44 = getelementptr inbounds %struct.dquot, %struct.dquot* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %42, %32
  %47 = load i32, i32* @DQ_INODES_B, align 4
  %48 = load %struct.dquot*, %struct.dquot** %3, align 8
  %49 = getelementptr inbounds %struct.dquot, %struct.dquot* %48, i32 0, i32 0
  %50 = call i32 @clear_bit(i32 %47, i32* %49)
  ret void
}

declare dso_local %struct.TYPE_4__* @sb_dqopt(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

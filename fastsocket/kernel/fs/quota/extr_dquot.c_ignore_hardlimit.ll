; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_ignore_hardlimit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/quota/extr_dquot.c_ignore_hardlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i64, i32 }
%struct.mem_dqinfo = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { %struct.mem_dqinfo* }

@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@QFMT_VFS_OLD = common dso_local global i64 0, align 8
@V1_DQF_RSQUASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @ignore_hardlimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ignore_hardlimit(%struct.dquot* %0) #0 {
  %2 = alloca %struct.dquot*, align 8
  %3 = alloca %struct.mem_dqinfo*, align 8
  store %struct.dquot* %0, %struct.dquot** %2, align 8
  %4 = load %struct.dquot*, %struct.dquot** %2, align 8
  %5 = getelementptr inbounds %struct.dquot, %struct.dquot* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.TYPE_4__* @sb_dqopt(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %8, align 8
  %10 = load %struct.dquot*, %struct.dquot** %2, align 8
  %11 = getelementptr inbounds %struct.dquot, %struct.dquot* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %9, i64 %12
  store %struct.mem_dqinfo* %13, %struct.mem_dqinfo** %3, align 8
  %14 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %15 = call i64 @capable(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %1
  %18 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %3, align 8
  %19 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QFMT_VFS_OLD, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.mem_dqinfo*, %struct.mem_dqinfo** %3, align 8
  %27 = getelementptr inbounds %struct.mem_dqinfo, %struct.mem_dqinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @V1_DQF_RSQUASH, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %25, %17
  %34 = phi i1 [ true, %17 ], [ %32, %25 ]
  br label %35

35:                                               ; preds = %33, %1
  %36 = phi i1 [ false, %1 ], [ %34, %33 ]
  %37 = zext i1 %36 to i32
  ret i32 %37
}

declare dso_local %struct.TYPE_4__* @sb_dqopt(i32) #1

declare dso_local i64 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

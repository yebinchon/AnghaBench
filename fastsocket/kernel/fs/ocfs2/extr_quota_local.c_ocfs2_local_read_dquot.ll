; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_ocfs2_local_read_dquot.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_quota_local.c_ocfs2_local_read_dquot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dquot = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"id=%u, type=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dquot*)* @ocfs2_local_read_dquot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_local_read_dquot(%struct.dquot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dquot*, align 8
  %4 = alloca i32, align 4
  store %struct.dquot* %0, %struct.dquot** %3, align 8
  %5 = load %struct.dquot*, %struct.dquot** %3, align 8
  %6 = getelementptr inbounds %struct.dquot, %struct.dquot* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.dquot*, %struct.dquot** %3, align 8
  %9 = getelementptr inbounds %struct.dquot, %struct.dquot* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mlog_entry(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10)
  %12 = load %struct.dquot*, %struct.dquot** %3, align 8
  %13 = call i32 @ocfs2_global_read_dquot(%struct.dquot* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @mlog_errno(i32 %17)
  br label %29

19:                                               ; preds = %1
  %20 = load %struct.dquot*, %struct.dquot** %3, align 8
  %21 = call i32 @ocfs2_create_local_dquot(%struct.dquot* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @mlog_errno(i32 %25)
  br label %29

27:                                               ; preds = %19
  %28 = call i32 @mlog_exit(i32 0)
  store i32 0, i32* %2, align 4
  br label %33

29:                                               ; preds = %24, %16
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @mlog_exit(i32 %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %27
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @mlog_entry(i8*, i32, i32) #1

declare dso_local i32 @ocfs2_global_read_dquot(%struct.dquot*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_create_local_dquot(%struct.dquot*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

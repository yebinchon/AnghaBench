; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_init_debug.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_dlm_init_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_dlm_debug* }
%struct.ocfs2_dlm_debug = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"locking_state\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@ocfs2_dlm_debug_fops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Unable to create locking state debugfs file.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*)* @ocfs2_dlm_init_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_dlm_init_debug(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocfs2_dlm_debug*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %6 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %5, i32 0, i32 1
  %7 = load %struct.ocfs2_dlm_debug*, %struct.ocfs2_dlm_debug** %6, align 8
  store %struct.ocfs2_dlm_debug* %7, %struct.ocfs2_dlm_debug** %4, align 8
  %8 = load i32, i32* @S_IFREG, align 4
  %9 = load i32, i32* @S_IRUSR, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %12 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %15 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, %struct.ocfs2_super* %14, i32* @ocfs2_dlm_debug_fops)
  %16 = load %struct.ocfs2_dlm_debug*, %struct.ocfs2_dlm_debug** %4, align 8
  %17 = getelementptr inbounds %struct.ocfs2_dlm_debug, %struct.ocfs2_dlm_debug* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ocfs2_dlm_debug*, %struct.ocfs2_dlm_debug** %4, align 8
  %19 = getelementptr inbounds %struct.ocfs2_dlm_debug, %struct.ocfs2_dlm_debug* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @ML_ERROR, align 4
  %26 = call i32 @mlog(i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %30

27:                                               ; preds = %1
  %28 = load %struct.ocfs2_dlm_debug*, %struct.ocfs2_dlm_debug** %4, align 8
  %29 = call i32 @ocfs2_get_dlm_debug(%struct.ocfs2_dlm_debug* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, %struct.ocfs2_super*, i32*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @ocfs2_get_dlm_debug(%struct.ocfs2_dlm_debug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

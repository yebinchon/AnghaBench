; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_others_may_mount.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/gfs2/extr_ops_fstype.c_gfs2_others_may_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_sbd = type { i32, %struct.lm_lockstruct }
%struct.lm_lockstruct = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"FIRSTMOUNT=Done\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gfs2_sbd*)* @gfs2_others_may_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfs2_others_may_mount(%struct.gfs2_sbd* %0) #0 {
  %2 = alloca %struct.gfs2_sbd*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [2 x i8*], align 16
  %5 = alloca %struct.lm_lockstruct*, align 8
  store %struct.gfs2_sbd* %0, %struct.gfs2_sbd** %2, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %6 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %6, align 8
  %8 = getelementptr inbounds i8*, i8** %6, i64 1
  store i8* null, i8** %8, align 8
  %9 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %10 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %9, i32 0, i32 1
  store %struct.lm_lockstruct* %10, %struct.lm_lockstruct** %5, align 8
  %11 = load %struct.lm_lockstruct*, %struct.lm_lockstruct** %5, align 8
  %12 = getelementptr inbounds %struct.lm_lockstruct, %struct.lm_lockstruct* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = load %struct.gfs2_sbd*, %struct.gfs2_sbd** %2, align 8
  %14 = getelementptr inbounds %struct.gfs2_sbd, %struct.gfs2_sbd* %13, i32 0, i32 0
  %15 = load i32, i32* @KOBJ_CHANGE, align 4
  %16 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %17 = call i32 @kobject_uevent_env(i32* %14, i32 %15, i8** %16)
  ret void
}

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

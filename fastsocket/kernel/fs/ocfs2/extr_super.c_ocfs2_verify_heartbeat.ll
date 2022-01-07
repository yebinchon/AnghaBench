; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_verify_heartbeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_super.c_ocfs2_verify_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }

@OCFS2_MOUNT_HB_LOCAL = common dso_local global i32 0, align 4
@ML_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Cannot heartbeat on a locally mounted device.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Userspace stack expected, but o2cb heartbeat arguments passed to mount\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"Heartbeat has to be started to mount a read-write clustered device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*)* @ocfs2_verify_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_verify_heartbeat(%struct.ocfs2_super* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocfs2_super*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  %4 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %5 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %1
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @OCFS2_MOUNT_HB_LOCAL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load i32, i32* @ML_ERROR, align 4
  %16 = call i32 @mlog(i32 %15, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %63

19:                                               ; preds = %7
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %22 = call i64 @ocfs2_userspace_stack(%struct.ocfs2_super* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %26 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @OCFS2_MOUNT_HB_LOCAL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load i32, i32* @ML_ERROR, align 4
  %33 = call i32 @mlog(i32 %32, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %63

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %39 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @OCFS2_MOUNT_HB_LOCAL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %62, label %44

44:                                               ; preds = %37
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %46 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %44
  %49 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %50 = call i32 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %54 = call i64 @ocfs2_userspace_stack(%struct.ocfs2_super* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @ML_ERROR, align 4
  %58 = call i32 @mlog(i32 %57, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %63

61:                                               ; preds = %52, %48, %44
  br label %62

62:                                               ; preds = %61, %37
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %56, %31, %14
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i64 @ocfs2_userspace_stack(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

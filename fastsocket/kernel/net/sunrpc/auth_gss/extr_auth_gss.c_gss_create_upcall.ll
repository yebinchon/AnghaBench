; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_create_upcall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/auth_gss/extr_auth_gss.c_gss_create_upcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gss_auth = type { i32 }
%struct.gss_cred = type { %struct.rpc_cred }
%struct.rpc_cred = type { i32 }
%struct.inode = type { i32 }
%struct.gss_upcall_msg = type { i32, %struct.TYPE_4__, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.inode }

@wait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"RPC:       gss_upcall for uid %u\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@pipe_version_waitqueue = common dso_local global i32 0, align 4
@pipe_version = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"RPC:       gss_create_upcall for uid %u result %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gss_auth*, %struct.gss_cred*)* @gss_create_upcall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gss_create_upcall(%struct.gss_auth* %0, %struct.gss_cred* %1) #0 {
  %3 = alloca %struct.gss_auth*, align 8
  %4 = alloca %struct.gss_cred*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.rpc_cred*, align 8
  %7 = alloca %struct.gss_upcall_msg*, align 8
  %8 = alloca i32, align 4
  store %struct.gss_auth* %0, %struct.gss_auth** %3, align 8
  store %struct.gss_cred* %1, %struct.gss_cred** %4, align 8
  %9 = load %struct.gss_cred*, %struct.gss_cred** %4, align 8
  %10 = getelementptr inbounds %struct.gss_cred, %struct.gss_cred* %9, i32 0, i32 0
  store %struct.rpc_cred* %10, %struct.rpc_cred** %6, align 8
  %11 = load i32, i32* @wait, align 4
  %12 = call i32 @DEFINE_WAIT(i32 %11)
  store i32 0, i32* %8, align 4
  %13 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %14 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %45, %2
  %18 = load %struct.gss_auth*, %struct.gss_auth** %3, align 8
  %19 = getelementptr inbounds %struct.gss_auth, %struct.gss_auth* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gss_auth*, %struct.gss_auth** %3, align 8
  %22 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %23 = call %struct.gss_upcall_msg* @gss_setup_upcall(i32 %20, %struct.gss_auth* %21, %struct.rpc_cred* %22)
  store %struct.gss_upcall_msg* %23, %struct.gss_upcall_msg** %7, align 8
  %24 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %7, align 8
  %25 = call i32 @PTR_ERR(%struct.gss_upcall_msg* %24)
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %17
  %30 = load i32, i32* @pipe_version_waitqueue, align 4
  %31 = load i64, i64* @pipe_version, align 8
  %32 = icmp sge i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* @HZ, align 4
  %35 = mul nsw i32 15, %34
  %36 = call i32 @wait_event_interruptible_timeout(i32 %30, i32 %33, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %114

40:                                               ; preds = %29
  %41 = load i64, i64* @pipe_version, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (...) @warn_gssd()
  br label %45

45:                                               ; preds = %43, %40
  br label %17

46:                                               ; preds = %17
  %47 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %7, align 8
  %48 = call i64 @IS_ERR(%struct.gss_upcall_msg* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %7, align 8
  %52 = call i32 @PTR_ERR(%struct.gss_upcall_msg* %51)
  store i32 %52, i32* %8, align 4
  br label %114

53:                                               ; preds = %46
  %54 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %7, align 8
  %55 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %54, i32 0, i32 3
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store %struct.inode* %57, %struct.inode** %5, align 8
  br label %58

58:                                               ; preds = %86, %53
  %59 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %7, align 8
  %60 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %59, i32 0, i32 0
  %61 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %62 = call i32 @prepare_to_wait(i32* %60, i32* @wait, i32 %61)
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %7, align 8
  %67 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %58
  %71 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %7, align 8
  %72 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70, %58
  br label %88

77:                                               ; preds = %70
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = call i64 (...) @signalled()
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @ERESTARTSYS, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  br label %108

86:                                               ; preds = %77
  %87 = call i32 (...) @schedule()
  br label %58

88:                                               ; preds = %76
  %89 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %7, align 8
  %90 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %95 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %7, align 8
  %96 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @gss_cred_set_ctx(%struct.rpc_cred* %94, i32* %97)
  br label %104

99:                                               ; preds = %88
  %100 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %7, align 8
  %101 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %8, align 4
  br label %104

104:                                              ; preds = %99, %93
  %105 = load %struct.inode*, %struct.inode** %5, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 0
  %107 = call i32 @spin_unlock(i32* %106)
  br label %108

108:                                              ; preds = %104, %83
  %109 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %7, align 8
  %110 = getelementptr inbounds %struct.gss_upcall_msg, %struct.gss_upcall_msg* %109, i32 0, i32 0
  %111 = call i32 @finish_wait(i32* %110, i32* @wait)
  %112 = load %struct.gss_upcall_msg*, %struct.gss_upcall_msg** %7, align 8
  %113 = call i32 @gss_release_msg(%struct.gss_upcall_msg* %112)
  br label %114

114:                                              ; preds = %108, %50, %39
  %115 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %116 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %117, i32 %118)
  %120 = load i32, i32* %8, align 4
  ret i32 %120
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local %struct.gss_upcall_msg* @gss_setup_upcall(i32, %struct.gss_auth*, %struct.rpc_cred*) #1

declare dso_local i32 @PTR_ERR(%struct.gss_upcall_msg*) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @warn_gssd(...) #1

declare dso_local i64 @IS_ERR(%struct.gss_upcall_msg*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @signalled(...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @gss_cred_set_ctx(%struct.rpc_cred*, i32*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @gss_release_msg(%struct.gss_upcall_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

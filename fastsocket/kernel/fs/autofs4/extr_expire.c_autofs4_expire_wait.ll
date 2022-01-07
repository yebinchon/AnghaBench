; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_expire.c_autofs4_expire_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_expire.c_autofs4_expire_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_info = type { i32, i32 }

@AUTOFS_INF_EXPIRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"waiting for expire %p name=%.*s\00", align 1
@NFY_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"expire done status=%d\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @autofs4_expire_wait(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.autofs_sb_info*, align 8
  %5 = alloca %struct.autofs_info*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.autofs_sb_info* @autofs4_sbi(i32 %9)
  store %struct.autofs_sb_info* %10, %struct.autofs_sb_info** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %11)
  store %struct.autofs_info* %12, %struct.autofs_info** %5, align 8
  %13 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %14 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %17 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @AUTOFS_INF_EXPIRING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %1
  %23 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %24 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.dentry*, %struct.dentry** %3, align 8
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dentry*, %struct.dentry** %3, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.dentry* %26, i32 %30, i32 %34)
  %36 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %37 = load %struct.dentry*, %struct.dentry** %3, align 8
  %38 = load i32, i32* @NFY_NONE, align 4
  %39 = call i32 @autofs4_wait(%struct.autofs_sb_info* %36, %struct.dentry* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load %struct.autofs_info*, %struct.autofs_info** %5, align 8
  %41 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %40, i32 0, i32 1
  %42 = call i32 @wait_for_completion(i32* %41)
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.dentry*, %struct.dentry** %3, align 8
  %46 = call i64 @d_unhashed(%struct.dentry* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %22
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %57

51:                                               ; preds = %22
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %1
  %54 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %55 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %51, %48
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.autofs_sb_info* @autofs4_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @autofs4_wait(%struct.autofs_sb_info*, %struct.dentry*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @d_unhashed(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_dentry_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_dentry_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.autofs_info = type { i32, i32 }
%struct.autofs_sb_info = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"releasing %p\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autofs4_dentry_release(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.autofs_info*, align 8
  %4 = alloca %struct.autofs_sb_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = call i32 @DPRINTK(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.dentry* %5)
  %7 = load %struct.dentry*, %struct.dentry** %2, align 8
  %8 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %7)
  store %struct.autofs_info* %8, %struct.autofs_info** %3, align 8
  %9 = load %struct.autofs_info*, %struct.autofs_info** %3, align 8
  %10 = icmp ne %struct.autofs_info* %9, null
  br i1 %10, label %11, label %46

11:                                               ; preds = %1
  %12 = load %struct.dentry*, %struct.dentry** %2, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.autofs_sb_info* @autofs4_sbi(i32 %14)
  store %struct.autofs_sb_info* %15, %struct.autofs_sb_info** %4, align 8
  %16 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %17 = icmp ne %struct.autofs_sb_info* %16, null
  br i1 %17, label %18, label %43

18:                                               ; preds = %11
  %19 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %20 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.autofs_info*, %struct.autofs_info** %3, align 8
  %23 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %22, i32 0, i32 1
  %24 = call i32 @list_empty(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load %struct.autofs_info*, %struct.autofs_info** %3, align 8
  %28 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %27, i32 0, i32 1
  %29 = call i32 @list_del(i32* %28)
  br label %30

30:                                               ; preds = %26, %18
  %31 = load %struct.autofs_info*, %struct.autofs_info** %3, align 8
  %32 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %31, i32 0, i32 0
  %33 = call i32 @list_empty(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.autofs_info*, %struct.autofs_info** %3, align 8
  %37 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %36, i32 0, i32 0
  %38 = call i32 @list_del(i32* %37)
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %41 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  br label %43

43:                                               ; preds = %39, %11
  %44 = load %struct.autofs_info*, %struct.autofs_info** %3, align 8
  %45 = call i32 @autofs4_free_ino(%struct.autofs_info* %44)
  br label %46

46:                                               ; preds = %43, %1
  ret void
}

declare dso_local i32 @DPRINTK(i8*, %struct.dentry*) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local %struct.autofs_sb_info* @autofs4_sbi(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @autofs4_free_ino(%struct.autofs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

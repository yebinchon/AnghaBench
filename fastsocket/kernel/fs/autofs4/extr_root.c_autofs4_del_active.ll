; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_del_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs4_del_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @autofs4_del_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autofs4_del_active(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.autofs_sb_info*, align 8
  %4 = alloca %struct.autofs_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = getelementptr inbounds %struct.dentry, %struct.dentry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.autofs_sb_info* @autofs4_sbi(i32 %7)
  store %struct.autofs_sb_info* %8, %struct.autofs_sb_info** %3, align 8
  %9 = load %struct.dentry*, %struct.dentry** %2, align 8
  %10 = call %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry* %9)
  store %struct.autofs_info* %10, %struct.autofs_info** %4, align 8
  %11 = load %struct.autofs_info*, %struct.autofs_info** %4, align 8
  %12 = icmp ne %struct.autofs_info* %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.autofs_info*, %struct.autofs_info** %4, align 8
  %18 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.autofs_info*, %struct.autofs_info** %4, align 8
  %22 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %13
  %26 = load %struct.autofs_info*, %struct.autofs_info** %4, align 8
  %27 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %26, i32 0, i32 0
  %28 = call i32 @list_empty(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load %struct.autofs_info*, %struct.autofs_info** %4, align 8
  %32 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %31, i32 0, i32 0
  %33 = call i32 @list_del_init(i32* %32)
  br label %34

34:                                               ; preds = %30, %25
  br label %35

35:                                               ; preds = %34, %13
  %36 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %37 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  br label %39

39:                                               ; preds = %35, %1
  ret void
}

declare dso_local %struct.autofs_sb_info* @autofs4_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs4_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

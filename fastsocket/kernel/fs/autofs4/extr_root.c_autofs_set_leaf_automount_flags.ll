; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs_set_leaf_automount_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/autofs4/extr_root.c_autofs_set_leaf_automount_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.dentry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @autofs_set_leaf_automount_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autofs_set_leaf_automount_flags(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = getelementptr inbounds %struct.dentry, %struct.dentry* %4, i32 0, i32 0
  %6 = load %struct.dentry*, %struct.dentry** %5, align 8
  %7 = call i64 @IS_ROOT(%struct.dentry* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %25

10:                                               ; preds = %1
  %11 = load %struct.dentry*, %struct.dentry** %2, align 8
  %12 = call i32 @managed_dentry_set_managed(%struct.dentry* %11)
  %13 = load %struct.dentry*, %struct.dentry** %2, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %15, %struct.dentry** %3, align 8
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 0
  %18 = load %struct.dentry*, %struct.dentry** %17, align 8
  %19 = call i64 @IS_ROOT(%struct.dentry* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %10
  br label %25

22:                                               ; preds = %10
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = call i32 @managed_dentry_clear_managed(%struct.dentry* %23)
  br label %25

25:                                               ; preds = %22, %21, %9
  ret void
}

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @managed_dentry_set_managed(%struct.dentry*) #1

declare dso_local i32 @managed_dentry_clear_managed(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_net.c_proc_tgid_net_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_net.c_proc_tgid_net_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }
%struct.net = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, %struct.nameidata*)* @proc_tgid_net_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @proc_tgid_net_lookup(%struct.inode* %0, %struct.dentry* %1, %struct.nameidata* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.nameidata* %2, %struct.nameidata** %6, align 8
  %9 = load i32, i32* @ENOENT, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.dentry* @ERR_PTR(i32 %10)
  store %struct.dentry* %11, %struct.dentry** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call %struct.net* @get_proc_task_net(%struct.inode* %12)
  store %struct.net* %13, %struct.net** %8, align 8
  %14 = load %struct.net*, %struct.net** %8, align 8
  %15 = icmp ne %struct.net* %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.net*, %struct.net** %8, align 8
  %18 = getelementptr inbounds %struct.net, %struct.net* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call %struct.dentry* @proc_lookup_de(i32 %19, %struct.inode* %20, %struct.dentry* %21)
  store %struct.dentry* %22, %struct.dentry** %7, align 8
  %23 = load %struct.net*, %struct.net** %8, align 8
  %24 = call i32 @put_net(%struct.net* %23)
  br label %25

25:                                               ; preds = %16, %3
  %26 = load %struct.dentry*, %struct.dentry** %7, align 8
  ret %struct.dentry* %26
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.net* @get_proc_task_net(%struct.inode*) #1

declare dso_local %struct.dentry* @proc_lookup_de(i32, %struct.inode*, %struct.dentry*) #1

declare dso_local i32 @put_net(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_unlock_new_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_inode.c_unlock_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.file_system_type* }
%struct.file_system_type = type { i32, i32 }

@I_LOCK = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unlock_new_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = call i32 (...) @smp_mb()
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @I_LOCK, align 4
  %8 = load i32, i32* @I_NEW, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = load i32, i32* @I_LOCK, align 4
  %12 = load i32, i32* @I_NEW, align 4
  %13 = or i32 %11, %12
  %14 = icmp ne i32 %10, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON(i32 %15)
  %17 = load i32, i32* @I_LOCK, align 4
  %18 = load i32, i32* @I_NEW, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = call i32 @wake_up_inode(%struct.inode* %25)
  ret void
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wake_up_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_security.c_security_kernel_create_files_as.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_security.c_security_kernel_create_files_as.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cred*, %struct.inode*)* }
%struct.cred = type { i32 }
%struct.inode = type { i32 }

@security_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_kernel_create_files_as(%struct.cred* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.cred* %0, %struct.cred** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @security_ops, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.cred*, %struct.inode*)*, i32 (%struct.cred*, %struct.inode*)** %6, align 8
  %8 = load %struct.cred*, %struct.cred** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 %7(%struct.cred* %8, %struct.inode* %9)
  ret i32 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

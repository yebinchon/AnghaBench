; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_symlink.c_sysv_follow_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/sysv/extr_symlink.c_sysv_follow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.nameidata = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.nameidata*)* @sysv_follow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sysv_follow_link(%struct.dentry* %0, %struct.nameidata* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.nameidata*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.nameidata* %1, %struct.nameidata** %4, align 8
  %5 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %3, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.TYPE_2__* @SYSV_I(i32 %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @nd_set_link(%struct.nameidata* %5, i8* %12)
  ret i8* null
}

declare dso_local i32 @nd_set_link(%struct.nameidata*, i8*) #1

declare dso_local %struct.TYPE_2__* @SYSV_I(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

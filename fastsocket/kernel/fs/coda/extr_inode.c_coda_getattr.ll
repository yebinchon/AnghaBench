; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_inode.c_coda_getattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_inode.c_coda_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { i32 }
%struct.kstat = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_getattr(%struct.vfsmount* %0, %struct.dentry* %1, %struct.kstat* %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store %struct.kstat* %2, %struct.kstat** %6, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = call i32 @coda_revalidate_inode(%struct.dentry* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kstat*, %struct.kstat** %6, align 8
  %17 = call i32 @generic_fillattr(i32 %15, %struct.kstat* %16)
  br label %18

18:                                               ; preds = %12, %3
  %19 = load i32, i32* %7, align 4
  ret i32 %19
}

declare dso_local i32 @coda_revalidate_inode(%struct.dentry*) #1

declare dso_local i32 @generic_fillattr(i32, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

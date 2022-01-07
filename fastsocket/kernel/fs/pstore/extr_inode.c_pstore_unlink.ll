; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/pstore/extr_inode.c_pstore_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/pstore/extr_inode.c_pstore_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.pstore_private* }
%struct.pstore_private = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32, %struct.TYPE_4__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @pstore_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pstore_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.pstore_private*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %6 = load %struct.dentry*, %struct.dentry** %4, align 8
  %7 = getelementptr inbounds %struct.dentry, %struct.dentry* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load %struct.pstore_private*, %struct.pstore_private** %9, align 8
  store %struct.pstore_private* %10, %struct.pstore_private** %5, align 8
  %11 = load %struct.pstore_private*, %struct.pstore_private** %5, align 8
  %12 = getelementptr inbounds %struct.pstore_private, %struct.pstore_private* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32, i32, i32, %struct.TYPE_4__*)*, i32 (i32, i32, i32, i32, %struct.TYPE_4__*)** %14, align 8
  %16 = icmp ne i32 (i32, i32, i32, i32, %struct.TYPE_4__*)* %15, null
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load %struct.pstore_private*, %struct.pstore_private** %5, align 8
  %19 = getelementptr inbounds %struct.pstore_private, %struct.pstore_private* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (i32, i32, i32, i32, %struct.TYPE_4__*)*, i32 (i32, i32, i32, i32, %struct.TYPE_4__*)** %21, align 8
  %23 = load %struct.pstore_private*, %struct.pstore_private** %5, align 8
  %24 = getelementptr inbounds %struct.pstore_private, %struct.pstore_private* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.pstore_private*, %struct.pstore_private** %5, align 8
  %27 = getelementptr inbounds %struct.pstore_private, %struct.pstore_private* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pstore_private*, %struct.pstore_private** %5, align 8
  %30 = getelementptr inbounds %struct.pstore_private, %struct.pstore_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = getelementptr inbounds %struct.dentry, %struct.dentry* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.pstore_private*, %struct.pstore_private** %5, align 8
  %38 = getelementptr inbounds %struct.pstore_private, %struct.pstore_private* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 %22(i32 %25, i32 %28, i32 %31, i32 %36, %struct.TYPE_4__* %39)
  br label %41

41:                                               ; preds = %17, %2
  %42 = load %struct.inode*, %struct.inode** %3, align 8
  %43 = load %struct.dentry*, %struct.dentry** %4, align 8
  %44 = call i32 @simple_unlink(%struct.inode* %42, %struct.dentry* %43)
  ret i32 %44
}

declare dso_local i32 @simple_unlink(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

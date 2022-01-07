; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/exportfs/extr_expfs.c_exportfs_get_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/exportfs/extr_expfs.c_exportfs_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.export_operations* }
%struct.export_operations = type { i32 (%struct.dentry.0*, i8*, %struct.dentry.0*)* }
%struct.dentry.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.dentry*, i8*, %struct.dentry*)* @exportfs_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exportfs_get_name(%struct.vfsmount* %0, %struct.dentry* %1, i8* %2, %struct.dentry* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.export_operations*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.dentry* %3, %struct.dentry** %9, align 8
  %11 = load %struct.dentry*, %struct.dentry** %7, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.export_operations*, %struct.export_operations** %14, align 8
  store %struct.export_operations* %15, %struct.export_operations** %10, align 8
  %16 = load %struct.export_operations*, %struct.export_operations** %10, align 8
  %17 = getelementptr inbounds %struct.export_operations, %struct.export_operations* %16, i32 0, i32 0
  %18 = load i32 (%struct.dentry.0*, i8*, %struct.dentry.0*)*, i32 (%struct.dentry.0*, i8*, %struct.dentry.0*)** %17, align 8
  %19 = icmp ne i32 (%struct.dentry.0*, i8*, %struct.dentry.0*)* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load %struct.export_operations*, %struct.export_operations** %10, align 8
  %22 = getelementptr inbounds %struct.export_operations, %struct.export_operations* %21, i32 0, i32 0
  %23 = load i32 (%struct.dentry.0*, i8*, %struct.dentry.0*)*, i32 (%struct.dentry.0*, i8*, %struct.dentry.0*)** %22, align 8
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = bitcast %struct.dentry* %24 to %struct.dentry.0*
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.dentry*, %struct.dentry** %9, align 8
  %28 = bitcast %struct.dentry* %27 to %struct.dentry.0*
  %29 = call i32 %23(%struct.dentry.0* %25, i8* %26, %struct.dentry.0* %28)
  store i32 %29, i32* %5, align 4
  br label %36

30:                                               ; preds = %4
  %31 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load %struct.dentry*, %struct.dentry** %9, align 8
  %35 = call i32 @get_name(%struct.vfsmount* %31, %struct.dentry* %32, i8* %33, %struct.dentry* %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %30, %20
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @get_name(%struct.vfsmount*, %struct.dentry*, i8*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

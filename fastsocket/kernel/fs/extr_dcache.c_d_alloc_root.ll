; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_alloc_root.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_alloc_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qstr = type { i8*, i32 }
%struct.dentry = type { %struct.dentry*, i32 }
%struct.inode = type { i32 }

@d_alloc_root.name = internal constant %struct.qstr { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 1 }, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @d_alloc_root(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  store %struct.dentry* null, %struct.dentry** %3, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = icmp ne %struct.inode* %4, null
  br i1 %5, label %6, label %23

6:                                                ; preds = %1
  %7 = call %struct.dentry* @d_alloc(i32* null, %struct.qstr* @d_alloc_root.name)
  store %struct.dentry* %7, %struct.dentry** %3, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = icmp ne %struct.dentry* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %6
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.dentry*, %struct.dentry** %3, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = load %struct.dentry*, %struct.dentry** %3, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  store %struct.dentry* %16, %struct.dentry** %18, align 8
  %19 = load %struct.dentry*, %struct.dentry** %3, align 8
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = call i32 @d_instantiate(%struct.dentry* %19, %struct.inode* %20)
  br label %22

22:                                               ; preds = %10, %6
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %24
}

declare dso_local %struct.dentry* @d_alloc(i32*, %struct.qstr*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

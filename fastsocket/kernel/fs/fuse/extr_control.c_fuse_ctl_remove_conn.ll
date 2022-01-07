; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_control.c_fuse_ctl_remove_conn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/fuse/extr_control.c_fuse_ctl_remove_conn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.fuse_conn = type { i32, %struct.dentry** }
%struct.dentry = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@fuse_control_sb = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fuse_ctl_remove_conn(%struct.fuse_conn* %0) #0 {
  %2 = alloca %struct.fuse_conn*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %2, align 8
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fuse_control_sb, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %42

8:                                                ; preds = %1
  %9 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %10 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %32, %8
  %14 = load i32, i32* %3, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load %struct.fuse_conn*, %struct.fuse_conn** %2, align 8
  %18 = getelementptr inbounds %struct.fuse_conn, %struct.fuse_conn* %17, i32 0, i32 1
  %19 = load %struct.dentry**, %struct.dentry*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.dentry*, %struct.dentry** %19, i64 %21
  %23 = load %struct.dentry*, %struct.dentry** %22, align 8
  store %struct.dentry* %23, %struct.dentry** %4, align 8
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = getelementptr inbounds %struct.dentry, %struct.dentry* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.dentry*, %struct.dentry** %4, align 8
  %29 = call i32 @d_drop(%struct.dentry* %28)
  %30 = load %struct.dentry*, %struct.dentry** %4, align 8
  %31 = call i32 @dput(%struct.dentry* %30)
  br label %32

32:                                               ; preds = %16
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %3, align 4
  br label %13

35:                                               ; preds = %13
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @fuse_control_sb, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @drop_nlink(i32 %40)
  br label %42

42:                                               ; preds = %35, %7
  ret void
}

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @drop_nlink(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

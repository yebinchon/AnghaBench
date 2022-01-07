; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/efs/extr_namei.c_efs_get_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/efs/extr_namei.c_efs_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @efs_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i64, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %5 = load i32, i32* @ENOENT, align 4
  %6 = sub nsw i32 0, %5
  %7 = call %struct.dentry* @ERR_PTR(i32 %6)
  store %struct.dentry* %7, %struct.dentry** %3, align 8
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call i64 @efs_find_entry(%struct.TYPE_2__* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.dentry*, %struct.dentry** %2, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @efs_iget(i32 %19, i64 %20)
  %22 = call %struct.dentry* @d_obtain_alias(i32 %21)
  store %struct.dentry* %22, %struct.dentry** %3, align 8
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %24
}

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local i64 @efs_find_entry(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local %struct.dentry* @d_obtain_alias(i32) #1

declare dso_local i32 @efs_iget(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

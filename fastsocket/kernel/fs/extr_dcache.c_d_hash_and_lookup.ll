; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_hash_and_lookup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcache.c_d_hash_and_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dentry*, %struct.qstr*)* }
%struct.qstr = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @d_hash_and_lookup(%struct.dentry* %0, %struct.qstr* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.qstr*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.qstr* %1, %struct.qstr** %4, align 8
  store %struct.dentry* null, %struct.dentry** %5, align 8
  %6 = load %struct.qstr*, %struct.qstr** %4, align 8
  %7 = getelementptr inbounds %struct.qstr, %struct.qstr* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.qstr*, %struct.qstr** %4, align 8
  %10 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @full_name_hash(i32 %8, i32 %11)
  %13 = load %struct.qstr*, %struct.qstr** %4, align 8
  %14 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.dentry*, %struct.dentry** %3, align 8
  %21 = getelementptr inbounds %struct.dentry, %struct.dentry* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64 (%struct.dentry*, %struct.qstr*)*, i64 (%struct.dentry*, %struct.qstr*)** %23, align 8
  %25 = icmp ne i64 (%struct.dentry*, %struct.qstr*)* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %19
  %27 = load %struct.dentry*, %struct.dentry** %3, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64 (%struct.dentry*, %struct.qstr*)*, i64 (%struct.dentry*, %struct.qstr*)** %30, align 8
  %32 = load %struct.dentry*, %struct.dentry** %3, align 8
  %33 = load %struct.qstr*, %struct.qstr** %4, align 8
  %34 = call i64 %31(%struct.dentry* %32, %struct.qstr* %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %42

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %19, %2
  %39 = load %struct.dentry*, %struct.dentry** %3, align 8
  %40 = load %struct.qstr*, %struct.qstr** %4, align 8
  %41 = call %struct.dentry* @d_lookup(%struct.dentry* %39, %struct.qstr* %40)
  store %struct.dentry* %41, %struct.dentry** %5, align 8
  br label %42

42:                                               ; preds = %38, %36
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %43
}

declare dso_local i32 @full_name_hash(i32, i32) #1

declare dso_local %struct.dentry* @d_lookup(%struct.dentry*, %struct.qstr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c___affs_hash_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c___affs_hash_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*, i32 (i32)*)* @__affs_hash_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__affs_hash_dentry(%struct.dentry* %0, %struct.qstr* %1, i32 (i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca i32 (i32)*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store i32 (i32)* %2, i32 (i32)** %7, align 8
  %11 = load %struct.qstr*, %struct.qstr** %6, align 8
  %12 = getelementptr inbounds %struct.qstr, %struct.qstr* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %8, align 8
  %14 = load %struct.qstr*, %struct.qstr** %6, align 8
  %15 = getelementptr inbounds %struct.qstr, %struct.qstr* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.qstr*, %struct.qstr** %6, align 8
  %18 = getelementptr inbounds %struct.qstr, %struct.qstr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @affs_check_name(i32* %16, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %4, align 4
  br label %51

25:                                               ; preds = %3
  %26 = call i64 (...) @init_name_hash()
  store i64 %26, i64* %9, align 8
  %27 = load %struct.qstr*, %struct.qstr** %6, align 8
  %28 = getelementptr inbounds %struct.qstr, %struct.qstr* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @min(i32 %29, i32 30)
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %41, %25
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load i32 (i32)*, i32 (i32)** %7, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %35(i32 %37)
  %39 = load i64, i64* %9, align 8
  %40 = call i64 @partial_name_hash(i32 %38, i64 %39)
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %34
  %42 = load i32*, i32** %8, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, -1
  store i32 %45, i32* %10, align 4
  br label %31

46:                                               ; preds = %31
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @end_name_hash(i64 %47)
  %49 = load %struct.qstr*, %struct.qstr** %6, align 8
  %50 = getelementptr inbounds %struct.qstr, %struct.qstr* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %46, %23
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @affs_check_name(i32*, i32) #1

declare dso_local i64 @init_name_hash(...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @partial_name_hash(i32, i64) #1

declare dso_local i32 @end_name_hash(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

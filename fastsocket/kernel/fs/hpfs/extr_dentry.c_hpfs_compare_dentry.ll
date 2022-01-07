; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dentry.c_hpfs_compare_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/hpfs/extr_dentry.c_hpfs_compare_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*, %struct.qstr*)* @hpfs_compare_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_compare_dentry(%struct.dentry* %0, %struct.qstr* %1, %struct.qstr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  %10 = load %struct.qstr*, %struct.qstr** %6, align 8
  %11 = getelementptr inbounds %struct.qstr, %struct.qstr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.qstr*, %struct.qstr** %7, align 8
  %14 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load %struct.qstr*, %struct.qstr** %6, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @hpfs_adjust_length(i8* %19, i32* %8)
  %21 = load %struct.qstr*, %struct.qstr** %7, align 8
  %22 = getelementptr inbounds %struct.qstr, %struct.qstr* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i64 @hpfs_chk_name(i8* %24, i32* %9)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %46

28:                                               ; preds = %3
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qstr*, %struct.qstr** %6, align 8
  %33 = getelementptr inbounds %struct.qstr, %struct.qstr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i8*
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.qstr*, %struct.qstr** %7, align 8
  %38 = getelementptr inbounds %struct.qstr, %struct.qstr* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @hpfs_compare_names(i32 %31, i8* %35, i32 %36, i8* %40, i32 %41, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %28
  store i32 1, i32* %4, align 4
  br label %46

45:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %44, %27
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @hpfs_adjust_length(i8*, i32*) #1

declare dso_local i64 @hpfs_chk_name(i8*, i32*) #1

declare dso_local i64 @hpfs_compare_names(i32, i8*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

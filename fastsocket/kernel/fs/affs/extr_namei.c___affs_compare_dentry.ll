; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c___affs_compare_dentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/affs/extr_namei.c___affs_compare_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.qstr*, %struct.qstr*, i64 (i32)*)* @__affs_compare_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__affs_compare_dentry(%struct.dentry* %0, %struct.qstr* %1, %struct.qstr* %2, i64 (i32)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca i64 (i32)*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %6, align 8
  store %struct.qstr* %1, %struct.qstr** %7, align 8
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store i64 (i32)* %3, i64 (i32)** %9, align 8
  %13 = load %struct.qstr*, %struct.qstr** %7, align 8
  %14 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %10, align 8
  %16 = load %struct.qstr*, %struct.qstr** %8, align 8
  %17 = getelementptr inbounds %struct.qstr, %struct.qstr* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %11, align 8
  %19 = load %struct.qstr*, %struct.qstr** %8, align 8
  %20 = getelementptr inbounds %struct.qstr, %struct.qstr* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.qstr*, %struct.qstr** %8, align 8
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @affs_check_name(i32* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %71

28:                                               ; preds = %4
  %29 = load %struct.qstr*, %struct.qstr** %7, align 8
  %30 = getelementptr inbounds %struct.qstr, %struct.qstr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp sge i32 %32, 30
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.qstr*, %struct.qstr** %8, align 8
  %36 = getelementptr inbounds %struct.qstr, %struct.qstr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %37, 30
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 1, i32* %5, align 4
  br label %71

40:                                               ; preds = %34
  store i32 30, i32* %12, align 4
  br label %49

41:                                               ; preds = %28
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.qstr*, %struct.qstr** %8, align 8
  %44 = getelementptr inbounds %struct.qstr, %struct.qstr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %5, align 4
  br label %71

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %40
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = load i64 (i32)*, i64 (i32)** %9, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %10, align 8
  %57 = load i32, i32* %55, align 4
  %58 = call i64 %54(i32 %57)
  %59 = load i64 (i32)*, i64 (i32)** %9, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %11, align 8
  %62 = load i32, i32* %60, align 4
  %63 = call i64 %59(i32 %62)
  %64 = icmp ne i64 %58, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %71

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %12, align 4
  br label %50

70:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %65, %47, %39, %27
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @affs_check_name(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

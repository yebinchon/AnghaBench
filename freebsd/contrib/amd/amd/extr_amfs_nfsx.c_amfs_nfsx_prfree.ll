; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_nfsx.c_amfs_nfsx_prfree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_nfsx.c_amfs_nfsx_prfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amfs_nfsx = type { i32, %struct.amfs_nfsx*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @amfs_nfsx_prfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amfs_nfsx_prfree(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.amfs_nfsx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.amfs_nfsx*
  store %struct.amfs_nfsx* %7, %struct.amfs_nfsx** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %3, align 8
  %11 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %8
  %15 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %3, align 8
  %16 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %15, i32 0, i32 1
  %17 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %17, i64 %19
  %21 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @free_mntfs(i32* %26)
  br label %28

28:                                               ; preds = %25, %14
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %8

32:                                               ; preds = %8
  %33 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %3, align 8
  %34 = getelementptr inbounds %struct.amfs_nfsx, %struct.amfs_nfsx* %33, i32 0, i32 1
  %35 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %34, align 8
  %36 = call i32 @XFREE(%struct.amfs_nfsx* %35)
  %37 = load %struct.amfs_nfsx*, %struct.amfs_nfsx** %3, align 8
  %38 = call i32 @XFREE(%struct.amfs_nfsx* %37)
  ret void
}

declare dso_local i32 @free_mntfs(i32*) #1

declare dso_local i32 @XFREE(%struct.amfs_nfsx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

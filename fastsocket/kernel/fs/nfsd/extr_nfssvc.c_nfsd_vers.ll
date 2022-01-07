; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfssvc.c_nfsd_vers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfssvc.c_nfsd_vers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NFSD_MINVERS = common dso_local global i32 0, align 4
@NFSD_NRVERS = common dso_local global i32 0, align 4
@nfsd_version = common dso_local global i32** null, align 8
@nfsd_versions = common dso_local global i32** null, align 8
@NFSD_ACL_NRVERS = common dso_local global i32 0, align 4
@nfsd_acl_version = common dso_local global i32** null, align 8
@nfsd_acl_versions = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd_vers(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NFSD_MINVERS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NFSD_NRVERS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  store i32 0, i32* %3, align 4
  br label %48

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %47 [
    i32 129, label %16
    i32 130, label %26
    i32 128, label %31
    i32 131, label %39
  ]

16:                                               ; preds = %14
  %17 = load i32**, i32*** @nfsd_version, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = load i32**, i32*** @nfsd_versions, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  store i32* %21, i32** %25, align 8
  br label %47

26:                                               ; preds = %14
  %27 = load i32**, i32*** @nfsd_versions, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  store i32* null, i32** %30, align 8
  br label %47

31:                                               ; preds = %14
  %32 = load i32**, i32*** @nfsd_versions, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32*, i32** %32, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %3, align 4
  br label %48

39:                                               ; preds = %14
  %40 = load i32**, i32*** @nfsd_version, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %14, %26, %16
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %39, %31, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

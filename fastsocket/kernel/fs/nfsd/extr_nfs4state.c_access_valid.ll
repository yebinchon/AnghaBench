; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_access_valid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfs4state.c_access_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NFS4_SHARE_ACCESS_MASK = common dso_local global i32 0, align 4
@NFS4_SHARE_ACCESS_READ = common dso_local global i32 0, align 4
@NFS4_SHARE_ACCESS_BOTH = common dso_local global i32 0, align 4
@NFS4_SHARE_WANT_MASK = common dso_local global i32 0, align 4
@NFS4_SHARE_WANT_CANCEL = common dso_local global i32 0, align 4
@NFS4_SHARE_WHEN_MASK = common dso_local global i32 0, align 4
@NFS4_SHARE_PUSH_DELEG_WHEN_UNCONTENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @access_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_valid(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NFS4_SHARE_ACCESS_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @NFS4_SHARE_ACCESS_READ, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %55

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @NFS4_SHARE_ACCESS_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @NFS4_SHARE_ACCESS_BOTH, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %55

19:                                               ; preds = %12
  %20 = load i32, i32* @NFS4_SHARE_ACCESS_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %26
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @NFS4_SHARE_WANT_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @NFS4_SHARE_WANT_CANCEL, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %55

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @NFS4_SHARE_WHEN_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @NFS4_SHARE_PUSH_DELEG_WHEN_UNCONTENDED, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %55

43:                                               ; preds = %36
  %44 = load i32, i32* @NFS4_SHARE_WANT_MASK, align 4
  %45 = load i32, i32* @NFS4_SHARE_WHEN_MASK, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %43, %26, %19
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %55

54:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %53, %42, %35, %18, %11
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

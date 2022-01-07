; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_uflags2omode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/9p/extr_vfs_inode.c_v9fs_uflags2omode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P9_OREAD = common dso_local global i32 0, align 4
@P9_OWRITE = common dso_local global i32 0, align 4
@P9_ORDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@P9_OTRUNC = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@P9_OEXCL = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@P9_OAPPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v9fs_uflags2omode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 3
  switch i32 %7, label %8 [
    i32 130, label %9
    i32 128, label %11
    i32 129, label %13
  ]

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %2, %8
  %10 = load i32, i32* @P9_OREAD, align 4
  store i32 %10, i32* %5, align 4
  br label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @P9_OWRITE, align 4
  store i32 %12, i32* %5, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @P9_ORDWR, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %11, %9
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @O_TRUNC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @P9_OTRUNC, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @O_EXCL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @P9_OEXCL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @O_APPEND, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @P9_OAPPEND, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %36
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

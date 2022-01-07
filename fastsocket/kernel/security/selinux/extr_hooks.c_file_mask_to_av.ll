; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_file_mask_to_av.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_file_mask_to_av.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IFMT = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@FILE__EXECUTE = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@FILE__READ = common dso_local global i32 0, align 4
@MAY_APPEND = common dso_local global i32 0, align 4
@FILE__APPEND = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@FILE__WRITE = common dso_local global i32 0, align 4
@DIR__SEARCH = common dso_local global i32 0, align 4
@DIR__WRITE = common dso_local global i32 0, align 4
@DIR__READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @file_mask_to_av to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_mask_to_av(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @S_IFMT, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @S_IFDIR, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MAY_EXEC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @FILE__EXECUTE, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %11
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MAY_READ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @FILE__READ, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @MAY_APPEND, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @FILE__APPEND, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %48

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MAY_WRITE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @FILE__WRITE, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %38
  br label %48

48:                                               ; preds = %47, %34
  br label %77

49:                                               ; preds = %2
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @MAY_EXEC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @DIR__SEARCH, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @MAY_WRITE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @DIR__WRITE, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @MAY_READ, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @DIR__READ, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %67
  br label %77

77:                                               ; preds = %76, %48
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

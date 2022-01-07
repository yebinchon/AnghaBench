; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_file_map_prot_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_hooks.c_file_map_prot_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cred = type { i32 }

@PROT_EXEC = common dso_local global i64 0, align 8
@PROT_WRITE = common dso_local global i64 0, align 8
@PROCESS__EXECMEM = common dso_local global i32 0, align 4
@FILE__READ = common dso_local global i32 0, align 4
@FILE__WRITE = common dso_local global i32 0, align 4
@FILE__EXECUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, i32)* @file_map_prot_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_map_prot_check(%struct.file* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %11, %struct.cred** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @PROT_EXEC, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load %struct.file*, %struct.file** %5, align 8
  %18 = icmp ne %struct.file* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @PROT_WRITE, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22, %16
  %28 = load %struct.cred*, %struct.cred** %8, align 8
  %29 = load %struct.cred*, %struct.cred** %8, align 8
  %30 = load i32, i32* @PROCESS__EXECMEM, align 4
  %31 = call i32 @cred_has_perm(%struct.cred* %28, %struct.cred* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %67

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %22, %19, %3
  %37 = load %struct.file*, %struct.file** %5, align 8
  %38 = icmp ne %struct.file* %37, null
  br i1 %38, label %39, label %66

39:                                               ; preds = %36
  %40 = load i32, i32* @FILE__READ, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @PROT_WRITE, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @FILE__WRITE, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %48, %43, %39
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* @PROT_EXEC, align 8
  %55 = and i64 %53, %54
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @FILE__EXECUTE, align 4
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %57, %52
  %62 = load %struct.cred*, %struct.cred** %8, align 8
  %63 = load %struct.file*, %struct.file** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @file_has_perm(%struct.cred* %62, %struct.file* %63, i32 %64)
  store i32 %65, i32* %4, align 4
  br label %69

66:                                               ; preds = %36
  br label %67

67:                                               ; preds = %66, %34
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %61
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @cred_has_perm(%struct.cred*, %struct.cred*, i32) #1

declare dso_local i32 @file_has_perm(%struct.cred*, %struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

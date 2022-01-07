; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/coda/extr_dir.c_coda_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_permission(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @MAY_READ, align 4
  %8 = load i32, i32* @MAY_WRITE, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MAY_EXEC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %54

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MAY_EXEC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @execute_ok(%struct.inode* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @EACCES, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %54

29:                                               ; preds = %22, %17
  %30 = call i32 (...) @lock_kernel()
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @coda_cache_check(%struct.inode* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %51

36:                                               ; preds = %29
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = call i32 @coda_i2f(%struct.inode* %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @venus_access(i32 %39, i32 %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @coda_cache_enter(%struct.inode* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %36
  br label %51

51:                                               ; preds = %50, %35
  %52 = call i32 (...) @unlock_kernel()
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %26, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @execute_ok(%struct.inode*) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @coda_cache_check(%struct.inode*, i32) #1

declare dso_local i32 @venus_access(i32, i32, i32) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local i32 @coda_cache_enter(%struct.inode*, i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

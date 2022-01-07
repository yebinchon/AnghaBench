; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_generic_permission.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_generic_permission.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@CAP_DAC_OVERRIDE = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@CAP_DAC_READ_SEARCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @generic_permission(%struct.inode* %0, i32 %1, i32 (%struct.inode*, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.inode*, i32)*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct.inode*, i32)* %2, i32 (%struct.inode*, i32)** %7, align 8
  %9 = load %struct.inode*, %struct.inode** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32 (%struct.inode*, i32)*, i32 (%struct.inode*, i32)** %7, align 8
  %12 = call i32 @acl_permission_check(%struct.inode* %9, i32 %10, i32 (%struct.inode*, i32)* %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @EACCES, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %65

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @MAY_EXEC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call i64 @execute_ok(%struct.inode* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %24, %19
  %29 = load i32, i32* @CAP_DAC_OVERRIDE, align 4
  %30 = call i64 @capable(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %65

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* @MAY_READ, align 4
  %36 = load i32, i32* @MAY_WRITE, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MAY_EXEC, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @MAY_READ, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %56, label %45

45:                                               ; preds = %34
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @S_ISDIR(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @MAY_WRITE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %51, %34
  %57 = load i32, i32* @CAP_DAC_READ_SEARCH, align 4
  %58 = call i64 @capable(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %65

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %61, %51, %45
  %63 = load i32, i32* @EACCES, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %62, %60, %32, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @acl_permission_check(%struct.inode*, i32, i32 (%struct.inode*, i32)*) #1

declare dso_local i64 @execute_ok(%struct.inode*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

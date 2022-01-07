; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_acl_permission_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_acl_permission_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i32 }

@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i32 (%struct.inode*, i32)*)* @acl_permission_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acl_permission_check(%struct.inode* %0, i32 %1, i32 (%struct.inode*, i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32 (%struct.inode*, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 (%struct.inode*, i32)* %2, i32 (%struct.inode*, i32)** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @MAY_READ, align 4
  %14 = load i32, i32* @MAY_WRITE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MAY_EXEC, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = call i64 (...) @current_fsuid()
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 6
  store i32 %27, i32* %8, align 4
  br label %62

28:                                               ; preds = %3
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call i64 @IS_POSIXACL(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @S_IRWXG, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %32
  %38 = load i32 (%struct.inode*, i32)*, i32 (%struct.inode*, i32)** %7, align 8
  %39 = icmp ne i32 (%struct.inode*, i32)* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %37
  %41 = load i32 (%struct.inode*, i32)*, i32 (%struct.inode*, i32)** %7, align 8
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 %41(%struct.inode* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %72

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %37, %32, %28
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @in_group_p(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = ashr i32 %59, 3
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %52
  br label %62

62:                                               ; preds = %61, %25
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %72

69:                                               ; preds = %62
  %70 = load i32, i32* @EACCES, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %68, %49
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @current_fsuid(...) #1

declare dso_local i64 @IS_POSIXACL(%struct.inode*) #1

declare dso_local i64 @in_group_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

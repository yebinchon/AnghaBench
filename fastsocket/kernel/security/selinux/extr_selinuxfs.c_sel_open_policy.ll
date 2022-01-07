; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_selinuxfs.c_sel_open_policy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/selinux/extr_selinuxfs.c_sel_open_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.policy_load_memory* }
%struct.policy_load_memory = type { i32, i32 }

@sel_mutex = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@SECURITY__READ_POLICY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@policy_opened = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @sel_open_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sel_open_policy(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.policy_load_memory*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.policy_load_memory* null, %struct.policy_load_memory** %6, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.policy_load_memory*, %struct.policy_load_memory** %9, align 8
  %11 = call i32 @BUG_ON(%struct.policy_load_memory* %10)
  %12 = call i32 @mutex_lock(i32* @sel_mutex)
  %13 = load i32, i32* @current, align 4
  %14 = load i32, i32* @SECURITY__READ_POLICY, align 4
  %15 = call i32 @task_has_security(i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %62

19:                                               ; preds = %2
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @policy_opened, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %62

25:                                               ; preds = %19
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.policy_load_memory* @kzalloc(i32 8, i32 %28)
  store %struct.policy_load_memory* %29, %struct.policy_load_memory** %6, align 8
  %30 = load %struct.policy_load_memory*, %struct.policy_load_memory** %6, align 8
  %31 = icmp ne %struct.policy_load_memory* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %62

33:                                               ; preds = %25
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i64 @i_size_read(%struct.inode* %34)
  %36 = call i64 (...) @security_policydb_len()
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %33
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = call i64 (...) @security_policydb_len()
  %44 = call i32 @i_size_write(%struct.inode* %42, i64 %43)
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  br label %48

48:                                               ; preds = %38, %33
  %49 = load %struct.policy_load_memory*, %struct.policy_load_memory** %6, align 8
  %50 = getelementptr inbounds %struct.policy_load_memory, %struct.policy_load_memory* %49, i32 0, i32 0
  %51 = load %struct.policy_load_memory*, %struct.policy_load_memory** %6, align 8
  %52 = getelementptr inbounds %struct.policy_load_memory, %struct.policy_load_memory* %51, i32 0, i32 1
  %53 = call i32 @security_read_policy(i32* %50, i32* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %62

57:                                               ; preds = %48
  store i32 1, i32* @policy_opened, align 4
  %58 = load %struct.policy_load_memory*, %struct.policy_load_memory** %6, align 8
  %59 = load %struct.file*, %struct.file** %5, align 8
  %60 = getelementptr inbounds %struct.file, %struct.file* %59, i32 0, i32 0
  store %struct.policy_load_memory* %58, %struct.policy_load_memory** %60, align 8
  %61 = call i32 @mutex_unlock(i32* @sel_mutex)
  store i32 0, i32* %3, align 4
  br label %75

62:                                               ; preds = %56, %32, %24, %18
  %63 = call i32 @mutex_unlock(i32* @sel_mutex)
  %64 = load %struct.policy_load_memory*, %struct.policy_load_memory** %6, align 8
  %65 = icmp ne %struct.policy_load_memory* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.policy_load_memory*, %struct.policy_load_memory** %6, align 8
  %68 = getelementptr inbounds %struct.policy_load_memory, %struct.policy_load_memory* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @vfree(i32 %69)
  br label %71

71:                                               ; preds = %66, %62
  %72 = load %struct.policy_load_memory*, %struct.policy_load_memory** %6, align 8
  %73 = call i32 @kfree(%struct.policy_load_memory* %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %57
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @BUG_ON(%struct.policy_load_memory*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @task_has_security(i32, i32) #1

declare dso_local %struct.policy_load_memory* @kzalloc(i32, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @security_policydb_len(...) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @security_read_policy(i32*, i32*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.policy_load_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

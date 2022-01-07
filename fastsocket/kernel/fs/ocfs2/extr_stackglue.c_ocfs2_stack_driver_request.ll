; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stackglue.c_ocfs2_stack_driver_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_stackglue.c_ocfs2_stack_driver_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_stack_plugin = type { i8*, i32, i32 }

@ocfs2_stack_lock = common dso_local global i32 0, align 4
@cluster_stack_name = common dso_local global i8* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@active_stack = common dso_local global %struct.ocfs2_stack_plugin* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @ocfs2_stack_driver_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_stack_driver_request(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocfs2_stack_plugin*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call i32 @spin_lock(i32* @ocfs2_stack_lock)
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** @cluster_stack_name, align 8
  %10 = call i64 @strcmp(i8* %8, i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.ocfs2_stack_plugin*, %struct.ocfs2_stack_plugin** @active_stack, align 8
  %17 = icmp ne %struct.ocfs2_stack_plugin* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.ocfs2_stack_plugin*, %struct.ocfs2_stack_plugin** @active_stack, align 8
  %20 = getelementptr inbounds %struct.ocfs2_stack_plugin, %struct.ocfs2_stack_plugin* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i64 @strcmp(i8* %21, i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %26, %25
  br label %46

30:                                               ; preds = %15
  %31 = load i8*, i8** %4, align 8
  %32 = call %struct.ocfs2_stack_plugin* @ocfs2_stack_lookup(i8* %31)
  store %struct.ocfs2_stack_plugin* %32, %struct.ocfs2_stack_plugin** %6, align 8
  %33 = load %struct.ocfs2_stack_plugin*, %struct.ocfs2_stack_plugin** %6, align 8
  %34 = icmp ne %struct.ocfs2_stack_plugin* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.ocfs2_stack_plugin*, %struct.ocfs2_stack_plugin** %6, align 8
  %37 = getelementptr inbounds %struct.ocfs2_stack_plugin, %struct.ocfs2_stack_plugin* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @try_module_get(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %46

44:                                               ; preds = %35
  %45 = load %struct.ocfs2_stack_plugin*, %struct.ocfs2_stack_plugin** %6, align 8
  store %struct.ocfs2_stack_plugin* %45, %struct.ocfs2_stack_plugin** @active_stack, align 8
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %44, %41, %29, %12
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %46
  %50 = load %struct.ocfs2_stack_plugin*, %struct.ocfs2_stack_plugin** @active_stack, align 8
  %51 = getelementptr inbounds %struct.ocfs2_stack_plugin, %struct.ocfs2_stack_plugin* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %49, %46
  %55 = call i32 @spin_unlock(i32* @ocfs2_stack_lock)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.ocfs2_stack_plugin* @ocfs2_stack_lookup(i8*) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

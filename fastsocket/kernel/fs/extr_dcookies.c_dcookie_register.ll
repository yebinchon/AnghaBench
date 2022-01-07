; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcookies.c_dcookie_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_dcookies.c_dcookie_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcookie_user = type { i32 }

@dcookie_mutex = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@dcookie_users = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dcookie_user* @dcookie_register() #0 {
  %1 = alloca %struct.dcookie_user*, align 8
  %2 = call i32 @mutex_lock(i32* @dcookie_mutex)
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.dcookie_user* @kmalloc(i32 4, i32 %3)
  store %struct.dcookie_user* %4, %struct.dcookie_user** %1, align 8
  %5 = load %struct.dcookie_user*, %struct.dcookie_user** %1, align 8
  %6 = icmp ne %struct.dcookie_user* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %19

8:                                                ; preds = %0
  %9 = call i32 (...) @is_live()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = call i64 (...) @dcookie_init()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  br label %22

15:                                               ; preds = %11, %8
  %16 = load %struct.dcookie_user*, %struct.dcookie_user** %1, align 8
  %17 = getelementptr inbounds %struct.dcookie_user, %struct.dcookie_user* %16, i32 0, i32 0
  %18 = call i32 @list_add(i32* %17, i32* @dcookie_users)
  br label %19

19:                                               ; preds = %22, %15, %7
  %20 = call i32 @mutex_unlock(i32* @dcookie_mutex)
  %21 = load %struct.dcookie_user*, %struct.dcookie_user** %1, align 8
  ret %struct.dcookie_user* %21

22:                                               ; preds = %14
  %23 = load %struct.dcookie_user*, %struct.dcookie_user** %1, align 8
  %24 = call i32 @kfree(%struct.dcookie_user* %23)
  store %struct.dcookie_user* null, %struct.dcookie_user** %1, align 8
  br label %19
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.dcookie_user* @kmalloc(i32, i32) #1

declare dso_local i32 @is_live(...) #1

declare dso_local i64 @dcookie_init(...) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.dcookie_user*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

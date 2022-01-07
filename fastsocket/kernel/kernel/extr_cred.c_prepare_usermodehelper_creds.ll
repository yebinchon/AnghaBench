; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cred.c_prepare_usermodehelper_creds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cred.c_prepare_usermodehelper_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32, i32*, %struct.thread_group_cred*, i32, i32*, i32*, i32, i32 }
%struct.thread_group_cred = type { i32, i32 }

@cred_jar = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"prepare_usermodehelper_creds() alloc %p\00", align 1
@init_cred = common dso_local global i32 0, align 4
@KEY_REQKEY_DEFL_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cred* @prepare_usermodehelper_creds() #0 {
  %1 = alloca %struct.cred*, align 8
  %2 = alloca %struct.cred*, align 8
  %3 = load i32, i32* @cred_jar, align 4
  %4 = load i32, i32* @GFP_ATOMIC, align 4
  %5 = call %struct.cred* @kmem_cache_alloc(i32 %3, i32 %4)
  store %struct.cred* %5, %struct.cred** %2, align 8
  %6 = load %struct.cred*, %struct.cred** %2, align 8
  %7 = icmp ne %struct.cred* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.cred* null, %struct.cred** %1, align 8
  br label %45

9:                                                ; preds = %0
  %10 = load %struct.cred*, %struct.cred** %2, align 8
  %11 = call i32 @kdebug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.cred* %10)
  %12 = load %struct.cred*, %struct.cred** %2, align 8
  %13 = call i32 @memcpy(%struct.cred* %12, i32* @init_cred, i32 56)
  %14 = load %struct.cred*, %struct.cred** %2, align 8
  %15 = getelementptr inbounds %struct.cred, %struct.cred* %14, i32 0, i32 0
  %16 = call i32 @atomic_set(i32* %15, i32 1)
  %17 = load %struct.cred*, %struct.cred** %2, align 8
  %18 = call i32 @set_cred_subscribers(%struct.cred* %17, i32 0)
  %19 = load %struct.cred*, %struct.cred** %2, align 8
  %20 = getelementptr inbounds %struct.cred, %struct.cred* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @get_group_info(i32 %21)
  %23 = load %struct.cred*, %struct.cred** %2, align 8
  %24 = getelementptr inbounds %struct.cred, %struct.cred* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @get_uid(i32 %25)
  %27 = load %struct.cred*, %struct.cred** %2, align 8
  %28 = load i32, i32* @GFP_ATOMIC, align 4
  %29 = call i64 @security_prepare_creds(%struct.cred* %27, i32* @init_cred, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %9
  br label %42

32:                                               ; preds = %9
  %33 = load %struct.cred*, %struct.cred** %2, align 8
  %34 = call i32 @validate_creds(%struct.cred* %33)
  %35 = load %struct.cred*, %struct.cred** %2, align 8
  %36 = getelementptr inbounds %struct.cred, %struct.cred* %35, i32 0, i32 0
  %37 = call i32 @atomic_read(i32* %36)
  %38 = icmp ne i32 %37, 1
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.cred*, %struct.cred** %2, align 8
  store %struct.cred* %41, %struct.cred** %1, align 8
  br label %45

42:                                               ; preds = %31
  %43 = load %struct.cred*, %struct.cred** %2, align 8
  %44 = call i32 @put_cred(%struct.cred* %43)
  store %struct.cred* null, %struct.cred** %1, align 8
  br label %45

45:                                               ; preds = %42, %32, %8
  %46 = load %struct.cred*, %struct.cred** %1, align 8
  ret %struct.cred* %46
}

declare dso_local %struct.cred* @kmem_cache_alloc(i32, i32) #1

declare dso_local i32 @kdebug(i8*, %struct.cred*) #1

declare dso_local i32 @memcpy(%struct.cred*, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_cred_subscribers(%struct.cred*, i32) #1

declare dso_local i32 @get_group_info(i32) #1

declare dso_local i32 @get_uid(i32) #1

declare dso_local i64 @security_prepare_creds(%struct.cred*, i32*, i32) #1

declare dso_local i32 @validate_creds(%struct.cred*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @put_cred(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

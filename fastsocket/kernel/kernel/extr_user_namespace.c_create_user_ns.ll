; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_user_namespace.c_create_user_ns.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_user_namespace.c_create_user_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32*, i32, i64, i64, i64, i64, i64, i64, i64, i64, %struct.user_struct* }
%struct.user_struct = type { i32 }
%struct.user_namespace = type { i32, %struct.user_struct*, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UIDHASH_SZ = common dso_local global i32 0, align 4
@init_groups = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_user_ns(%struct.cred* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.user_namespace*, align 8
  %5 = alloca %struct.user_struct*, align 8
  %6 = alloca i32, align 4
  store %struct.cred* %0, %struct.cred** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.user_namespace* @kmalloc(i32 24, i32 %7)
  store %struct.user_namespace* %8, %struct.user_namespace** %4, align 8
  %9 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %10 = icmp ne %struct.user_namespace* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %78

14:                                               ; preds = %1
  %15 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %16 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %15, i32 0, i32 0
  %17 = call i32 @kref_init(i32* %16)
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %30, %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @UIDHASH_SZ, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %24 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = call i32 @INIT_HLIST_HEAD(i64 %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %18

33:                                               ; preds = %18
  %34 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %35 = call %struct.user_struct* @alloc_uid(%struct.user_namespace* %34, i32 0)
  store %struct.user_struct* %35, %struct.user_struct** %5, align 8
  %36 = load %struct.user_struct*, %struct.user_struct** %5, align 8
  %37 = icmp ne %struct.user_struct* %36, null
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %40 = call i32 @kfree(%struct.user_namespace* %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %78

43:                                               ; preds = %33
  %44 = load %struct.cred*, %struct.cred** %3, align 8
  %45 = getelementptr inbounds %struct.cred, %struct.cred* %44, i32 0, i32 10
  %46 = load %struct.user_struct*, %struct.user_struct** %45, align 8
  %47 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %48 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %47, i32 0, i32 1
  store %struct.user_struct* %46, %struct.user_struct** %48, align 8
  %49 = load %struct.user_struct*, %struct.user_struct** %5, align 8
  %50 = load %struct.cred*, %struct.cred** %3, align 8
  %51 = getelementptr inbounds %struct.cred, %struct.cred* %50, i32 0, i32 10
  store %struct.user_struct* %49, %struct.user_struct** %51, align 8
  %52 = load %struct.cred*, %struct.cred** %3, align 8
  %53 = getelementptr inbounds %struct.cred, %struct.cred* %52, i32 0, i32 6
  store i64 0, i64* %53, align 8
  %54 = load %struct.cred*, %struct.cred** %3, align 8
  %55 = getelementptr inbounds %struct.cred, %struct.cred* %54, i32 0, i32 7
  store i64 0, i64* %55, align 8
  %56 = load %struct.cred*, %struct.cred** %3, align 8
  %57 = getelementptr inbounds %struct.cred, %struct.cred* %56, i32 0, i32 8
  store i64 0, i64* %57, align 8
  %58 = load %struct.cred*, %struct.cred** %3, align 8
  %59 = getelementptr inbounds %struct.cred, %struct.cred* %58, i32 0, i32 9
  store i64 0, i64* %59, align 8
  %60 = load %struct.cred*, %struct.cred** %3, align 8
  %61 = getelementptr inbounds %struct.cred, %struct.cred* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.cred*, %struct.cred** %3, align 8
  %63 = getelementptr inbounds %struct.cred, %struct.cred* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.cred*, %struct.cred** %3, align 8
  %65 = getelementptr inbounds %struct.cred, %struct.cred* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.cred*, %struct.cred** %3, align 8
  %67 = getelementptr inbounds %struct.cred, %struct.cred* %66, i32 0, i32 5
  store i64 0, i64* %67, align 8
  %68 = load %struct.cred*, %struct.cred** %3, align 8
  %69 = getelementptr inbounds %struct.cred, %struct.cred* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @put_group_info(i32 %70)
  %72 = call i32 @get_group_info(i32* @init_groups)
  %73 = load %struct.cred*, %struct.cred** %3, align 8
  %74 = getelementptr inbounds %struct.cred, %struct.cred* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.user_namespace*, %struct.user_namespace** %4, align 8
  %76 = getelementptr inbounds %struct.user_namespace, %struct.user_namespace* %75, i32 0, i32 0
  %77 = call i32 @kref_set(i32* %76, i32 1)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %43, %38, %11
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.user_namespace* @kmalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i64) #1

declare dso_local %struct.user_struct* @alloc_uid(%struct.user_namespace*, i32) #1

declare dso_local i32 @kfree(%struct.user_namespace*) #1

declare dso_local i32 @put_group_info(i32) #1

declare dso_local i32 @get_group_info(i32*) #1

declare dso_local i32 @kref_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

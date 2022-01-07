; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_filter.c_sk_attach_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_filter.c_sk_attach_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_fprog = type { i32, i32* }
%struct.sock = type { i32 }
%struct.sk_filter = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sk_attach_filter(%struct.sock_fprog* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock_fprog*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_filter*, align 8
  %7 = alloca %struct.sk_filter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sock_fprog* %0, %struct.sock_fprog** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %10 = load %struct.sock_fprog*, %struct.sock_fprog** %4, align 8
  %11 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.sock_fprog*, %struct.sock_fprog** %4, align 8
  %17 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %98

23:                                               ; preds = %2
  %24 = load %struct.sock*, %struct.sock** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = add i64 %26, 12
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.sk_filter* @sock_kmalloc(%struct.sock* %24, i32 %28, i32 %29)
  store %struct.sk_filter* %30, %struct.sk_filter** %6, align 8
  %31 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %32 = icmp ne %struct.sk_filter* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %98

36:                                               ; preds = %23
  %37 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %38 = getelementptr inbounds %struct.sk_filter, %struct.sk_filter* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sock_fprog*, %struct.sock_fprog** %4, align 8
  %41 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @copy_from_user(i32 %39, i32* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %36
  %47 = load %struct.sock*, %struct.sock** %5, align 8
  %48 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = add i64 %50, 12
  %52 = trunc i64 %51 to i32
  %53 = call i32 @sock_kfree_s(%struct.sock* %47, %struct.sk_filter* %48, i32 %52)
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %98

56:                                               ; preds = %36
  %57 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %58 = getelementptr inbounds %struct.sk_filter, %struct.sk_filter* %57, i32 0, i32 2
  %59 = call i32 @atomic_set(i32* %58, i32 1)
  %60 = load %struct.sock_fprog*, %struct.sock_fprog** %4, align 8
  %61 = getelementptr inbounds %struct.sock_fprog, %struct.sock_fprog* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %64 = getelementptr inbounds %struct.sk_filter, %struct.sk_filter* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %66 = getelementptr inbounds %struct.sk_filter, %struct.sk_filter* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %69 = getelementptr inbounds %struct.sk_filter, %struct.sk_filter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @sk_chk_filter(i32 %67, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %56
  %75 = load %struct.sock*, %struct.sock** %5, align 8
  %76 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %77 = call i32 @sk_filter_uncharge(%struct.sock* %75, %struct.sk_filter* %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %98

79:                                               ; preds = %56
  %80 = call i32 (...) @rcu_read_lock_bh()
  %81 = load %struct.sock*, %struct.sock** %5, align 8
  %82 = getelementptr inbounds %struct.sock, %struct.sock* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call %struct.sk_filter* @rcu_dereference(i32 %83)
  store %struct.sk_filter* %84, %struct.sk_filter** %7, align 8
  %85 = load %struct.sock*, %struct.sock** %5, align 8
  %86 = getelementptr inbounds %struct.sock, %struct.sock* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sk_filter*, %struct.sk_filter** %6, align 8
  %89 = call i32 @rcu_assign_pointer(i32 %87, %struct.sk_filter* %88)
  %90 = call i32 (...) @rcu_read_unlock_bh()
  %91 = load %struct.sk_filter*, %struct.sk_filter** %7, align 8
  %92 = icmp ne %struct.sk_filter* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %79
  %94 = load %struct.sock*, %struct.sock** %5, align 8
  %95 = load %struct.sk_filter*, %struct.sk_filter** %7, align 8
  %96 = call i32 @sk_filter_delayed_uncharge(%struct.sock* %94, %struct.sk_filter* %95)
  br label %97

97:                                               ; preds = %93, %79
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %74, %46, %33, %20
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.sk_filter* @sock_kmalloc(%struct.sock*, i32, i32) #1

declare dso_local i64 @copy_from_user(i32, i32*, i32) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.sk_filter*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @sk_chk_filter(i32, i32) #1

declare dso_local i32 @sk_filter_uncharge(%struct.sock*, %struct.sk_filter*) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.sk_filter* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.sk_filter*) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

declare dso_local i32 @sk_filter_delayed_uncharge(%struct.sock*, %struct.sk_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

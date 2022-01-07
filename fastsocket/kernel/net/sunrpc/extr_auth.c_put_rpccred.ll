; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_put_rpccred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_auth.c_put_rpccred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cred = type { %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.rpc_cred*)* }

@RPCAUTH_CRED_HASHED = common dso_local global i32 0, align 4
@rpc_credcache_lock = common dso_local global i32 0, align 4
@number_cred_unused = common dso_local global i32 0, align 4
@RPCAUTH_CRED_UPTODATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@cred_unused = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @put_rpccred(%struct.rpc_cred* %0) #0 {
  %2 = alloca %struct.rpc_cred*, align 8
  store %struct.rpc_cred* %0, %struct.rpc_cred** %2, align 8
  %3 = load i32, i32* @RPCAUTH_CRED_HASHED, align 4
  %4 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %5 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %4, i32 0, i32 3
  %6 = call i64 @test_bit(i32 %3, i32* %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %10 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %9, i32 0, i32 4
  %11 = call i64 @atomic_dec_and_test(i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %15 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.rpc_cred*)*, i32 (%struct.rpc_cred*)** %17, align 8
  %19 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %20 = call i32 %18(%struct.rpc_cred* %19)
  br label %21

21:                                               ; preds = %13, %8
  br label %77

22:                                               ; preds = %1
  %23 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %24 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %23, i32 0, i32 4
  %25 = call i32 @atomic_dec_and_lock(i32* %24, i32* @rpc_credcache_lock)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %77

28:                                               ; preds = %22
  %29 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %30 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %29, i32 0, i32 1
  %31 = call i32 @list_empty(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @number_cred_unused, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* @number_cred_unused, align 4
  %36 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %37 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %36, i32 0, i32 1
  %38 = call i32 @list_del_init(i32* %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load i32, i32* @RPCAUTH_CRED_HASHED, align 4
  %41 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %42 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %41, i32 0, i32 3
  %43 = call i64 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load i32, i32* @RPCAUTH_CRED_UPTODATE, align 4
  %47 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %48 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %47, i32 0, i32 3
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load i32, i32* @jiffies, align 4
  %53 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %54 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %56 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %55, i32 0, i32 1
  %57 = call i32 @list_add_tail(i32* %56, i32* @cred_unused)
  %58 = load i32, i32* @number_cred_unused, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* @number_cred_unused, align 4
  br label %75

60:                                               ; preds = %45
  %61 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %62 = call i32 @rpcauth_unhash_cred(%struct.rpc_cred* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  br label %75

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %39
  %67 = call i32 @spin_unlock(i32* @rpc_credcache_lock)
  %68 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %69 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32 (%struct.rpc_cred*)*, i32 (%struct.rpc_cred*)** %71, align 8
  %73 = load %struct.rpc_cred*, %struct.rpc_cred** %2, align 8
  %74 = call i32 %72(%struct.rpc_cred* %73)
  br label %77

75:                                               ; preds = %64, %51
  %76 = call i32 @spin_unlock(i32* @rpc_credcache_lock)
  br label %77

77:                                               ; preds = %75, %66, %27, %21
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rpcauth_unhash_cred(%struct.rpc_cred*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

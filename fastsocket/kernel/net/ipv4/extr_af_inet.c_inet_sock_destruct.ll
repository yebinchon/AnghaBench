; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_sock_destruct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_af_inet.c_inet_sock_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64, i32*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.inet_sock = type { i32 }

@SOCK_STREAM = common dso_local global i64 0, align 8
@TCP_CLOSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Attempt to release TCP socket in state %d %p\0A\00", align 1
@SOCK_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Attempt to release alive inet socket %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_sock_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.inet_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.inet_sock* @inet_sk(%struct.sock* %4)
  store %struct.inet_sock* %5, %struct.inet_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 9
  %8 = call i32 @__skb_queue_purge(i32* %7)
  %9 = load %struct.sock*, %struct.sock** %2, align 8
  %10 = getelementptr inbounds %struct.sock, %struct.sock* %9, i32 0, i32 8
  %11 = call i32 @__skb_queue_purge(i32* %10)
  %12 = load %struct.sock*, %struct.sock** %2, align 8
  %13 = call i32 @sk_mem_reclaim(%struct.sock* %12)
  %14 = load %struct.sock*, %struct.sock** %2, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SOCK_STREAM, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.sock*, %struct.sock** %2, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TCP_CLOSE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.sock*, %struct.sock** %2, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.sock*
  %30 = load %struct.sock*, %struct.sock** %2, align 8
  %31 = call i32 (i8*, %struct.sock*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.sock* %29, %struct.sock* %30)
  br label %80

32:                                               ; preds = %19, %1
  %33 = load %struct.sock*, %struct.sock** %2, align 8
  %34 = load i32, i32* @SOCK_DEAD, align 4
  %35 = call i32 @sock_flag(%struct.sock* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load %struct.sock*, %struct.sock** %2, align 8
  %39 = call i32 (i8*, %struct.sock*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %38)
  br label %80

40:                                               ; preds = %32
  %41 = load %struct.sock*, %struct.sock** %2, align 8
  %42 = getelementptr inbounds %struct.sock, %struct.sock* %41, i32 0, i32 7
  %43 = call i32 @atomic_read(i32* %42)
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load %struct.sock*, %struct.sock** %2, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 6
  %47 = call i32 @atomic_read(i32* %46)
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load %struct.sock*, %struct.sock** %2, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @WARN_ON(i32 %51)
  %53 = load %struct.sock*, %struct.sock** %2, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @WARN_ON(i32 %55)
  %57 = load %struct.inet_sock*, %struct.inet_sock** %3, align 8
  %58 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @rcu_dereference(i32 %59)
  %61 = call i32 @kfree_ip_options(i32 %60)
  %62 = load %struct.sock*, %struct.sock** %2, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @dst_release(i32* %64)
  %66 = load %struct.sock*, %struct.sock** %2, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %40
  %71 = load %struct.sock*, %struct.sock** %2, align 8
  %72 = getelementptr inbounds %struct.sock, %struct.sock* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @dst_release(i32* %73)
  %75 = load %struct.sock*, %struct.sock** %2, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 2
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %70, %40
  %78 = load %struct.sock*, %struct.sock** %2, align 8
  %79 = call i32 @sk_refcnt_debug_dec(%struct.sock* %78)
  br label %80

80:                                               ; preds = %77, %37, %25
  ret void
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @sk_mem_reclaim(%struct.sock*) #1

declare dso_local i32 @pr_err(i8*, %struct.sock*, ...) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @kfree_ip_options(i32) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i32 @dst_release(i32*) #1

declare dso_local i32 @sk_refcnt_debug_dec(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

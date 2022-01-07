; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_create1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_create1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.socket = type { i32 }
%struct.unix_sock = type { i32, i32, i32, i32, i32, i32*, i32* }

@unix_nr_socks = common dso_local global i32 0, align 4
@PF_UNIX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@unix_proto = common dso_local global i32 0, align 4
@af_unix_sk_receive_queue_lock_key = common dso_local global i32 0, align 4
@unix_write_space = common dso_local global i32 0, align 4
@unix_sock_destructor = common dso_local global i32 0, align 4
@unix_sockets_unbound = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.net*, %struct.socket*)* @unix_create1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @unix_create1(%struct.net* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.unix_sock*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  store %struct.sock* null, %struct.sock** %5, align 8
  %7 = call i32 @atomic_long_inc(i32* @unix_nr_socks)
  %8 = call i32 @atomic_long_read(i32* @unix_nr_socks)
  %9 = call i32 (...) @get_max_files()
  %10 = mul nsw i32 2, %9
  %11 = icmp sgt i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %65

13:                                               ; preds = %2
  %14 = load %struct.net*, %struct.net** %3, align 8
  %15 = load i32, i32* @PF_UNIX, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.sock* @sk_alloc(%struct.net* %14, i32 %15, i32 %16, i32* @unix_proto)
  store %struct.sock* %17, %struct.sock** %5, align 8
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = icmp ne %struct.sock* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %65

21:                                               ; preds = %13
  %22 = load %struct.socket*, %struct.socket** %4, align 8
  %23 = load %struct.sock*, %struct.sock** %5, align 8
  %24 = call i32 @sock_init_data(%struct.socket* %22, %struct.sock* %23)
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @lockdep_set_class(i32* %27, i32* @af_unix_sk_receive_queue_lock_key)
  %29 = load i32, i32* @unix_write_space, align 4
  %30 = load %struct.sock*, %struct.sock** %5, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.net*, %struct.net** %3, align 8
  %33 = getelementptr inbounds %struct.net, %struct.net* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sock*, %struct.sock** %5, align 8
  %37 = getelementptr inbounds %struct.sock, %struct.sock* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @unix_sock_destructor, align 4
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = getelementptr inbounds %struct.sock, %struct.sock* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = call %struct.unix_sock* @unix_sk(%struct.sock* %41)
  store %struct.unix_sock* %42, %struct.unix_sock** %6, align 8
  %43 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %44 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %43, i32 0, i32 6
  store i32* null, i32** %44, align 8
  %45 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %46 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %45, i32 0, i32 5
  store i32* null, i32** %46, align 8
  %47 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %48 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %47, i32 0, i32 4
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %51 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %50, i32 0, i32 3
  %52 = call i32 @atomic_long_set(i32* %51, i32 0)
  %53 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %54 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %53, i32 0, i32 2
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %57 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %56, i32 0, i32 1
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.unix_sock*, %struct.unix_sock** %6, align 8
  %60 = getelementptr inbounds %struct.unix_sock, %struct.unix_sock* %59, i32 0, i32 0
  %61 = call i32 @init_waitqueue_head(i32* %60)
  %62 = load i32, i32* @unix_sockets_unbound, align 4
  %63 = load %struct.sock*, %struct.sock** %5, align 8
  %64 = call i32 @unix_insert_socket(i32 %62, %struct.sock* %63)
  br label %65

65:                                               ; preds = %21, %20, %12
  %66 = load %struct.sock*, %struct.sock** %5, align 8
  %67 = icmp eq %struct.sock* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @atomic_long_dec(i32* @unix_nr_socks)
  br label %79

70:                                               ; preds = %65
  %71 = call i32 (...) @local_bh_disable()
  %72 = load %struct.sock*, %struct.sock** %5, align 8
  %73 = call i32 @sock_net(%struct.sock* %72)
  %74 = load %struct.sock*, %struct.sock** %5, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @sock_prot_inuse_add(i32 %73, i32 %76, i32 1)
  %78 = call i32 (...) @local_bh_enable()
  br label %79

79:                                               ; preds = %70, %68
  %80 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %80
}

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i32 @atomic_long_read(i32*) #1

declare dso_local i32 @get_max_files(...) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local %struct.unix_sock* @unix_sk(%struct.sock*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_long_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @unix_insert_socket(i32, %struct.sock*) #1

declare dso_local i32 @atomic_long_dec(i32*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @sock_prot_inuse_add(i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @local_bh_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

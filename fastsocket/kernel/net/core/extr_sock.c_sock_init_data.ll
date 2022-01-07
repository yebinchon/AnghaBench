; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sock_init_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_sock.c_sock_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock*, i32, i32 }
%struct.sock = type { i64, i32, i32, i32, i32, i8*, i8*, i64, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@sysctl_rmem_default = common dso_local global i32 0, align 4
@sysctl_wmem_default = common dso_local global i32 0, align 4
@TCP_CLOSE = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@af_callback_keys = common dso_local global i64 0, align 8
@af_family_clock_key_strings = common dso_local global i32* null, align 8
@sock_def_wakeup = common dso_local global i32 0, align 4
@sock_def_readable = common dso_local global i32 0, align 4
@sock_def_write_space = common dso_local global i32 0, align 4
@sock_def_error_report = common dso_local global i32 0, align 4
@sock_def_destruct = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sock_init_data(%struct.socket* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %5 = load %struct.sock*, %struct.sock** %4, align 8
  %6 = getelementptr inbounds %struct.sock, %struct.sock* %5, i32 0, i32 28
  %7 = call i32 @skb_queue_head_init(i32* %6)
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 27
  %10 = call i32 @skb_queue_head_init(i32* %9)
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 26
  %13 = call i32 @skb_queue_head_init(i32* %12)
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 24
  store i32* null, i32** %15, align 8
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = getelementptr inbounds %struct.sock, %struct.sock* %16, i32 0, i32 23
  %18 = call i32 @init_timer(i32* %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 22
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @sysctl_rmem_default, align 4
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 21
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @sysctl_wmem_default, align 4
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 20
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @TCP_CLOSE, align 4
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 19
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = load %struct.socket*, %struct.socket** %3, align 8
  %33 = call i32 @sk_set_socket(%struct.sock* %31, %struct.socket* %32)
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = load i32, i32* @SOCK_ZAPPED, align 4
  %36 = call i32 @sock_set_flag(%struct.sock* %34, i32 %35)
  %37 = load %struct.socket*, %struct.socket** %3, align 8
  %38 = icmp ne %struct.socket* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %2
  %40 = load %struct.socket*, %struct.socket** %3, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 18
  store i32 %42, i32* %44, align 8
  %45 = load %struct.socket*, %struct.socket** %3, align 8
  %46 = getelementptr inbounds %struct.socket, %struct.socket* %45, i32 0, i32 1
  %47 = load %struct.sock*, %struct.sock** %4, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 17
  store i32* %46, i32** %48, align 8
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = load %struct.socket*, %struct.socket** %3, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 0
  store %struct.sock* %49, %struct.sock** %51, align 8
  br label %55

52:                                               ; preds = %2
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 17
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %52, %39
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 16
  %58 = call i32 @rwlock_init(i32* %57)
  %59 = load %struct.sock*, %struct.sock** %4, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 15
  %61 = call i32 @rwlock_init(i32* %60)
  %62 = load %struct.sock*, %struct.sock** %4, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 15
  %64 = load i64, i64* @af_callback_keys, align 8
  %65 = load %struct.sock*, %struct.sock** %4, align 8
  %66 = getelementptr inbounds %struct.sock, %struct.sock* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add i64 %64, %67
  %69 = load i32*, i32** @af_family_clock_key_strings, align 8
  %70 = load %struct.sock*, %struct.sock** %4, align 8
  %71 = getelementptr inbounds %struct.sock, %struct.sock* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @lockdep_set_class_and_name(i32* %63, i64 %68, i32 %74)
  %76 = load i32, i32* @sock_def_wakeup, align 4
  %77 = load %struct.sock*, %struct.sock** %4, align 8
  %78 = getelementptr inbounds %struct.sock, %struct.sock* %77, i32 0, i32 14
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @sock_def_readable, align 4
  %80 = load %struct.sock*, %struct.sock** %4, align 8
  %81 = getelementptr inbounds %struct.sock, %struct.sock* %80, i32 0, i32 13
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @sock_def_write_space, align 4
  %83 = load %struct.sock*, %struct.sock** %4, align 8
  %84 = getelementptr inbounds %struct.sock, %struct.sock* %83, i32 0, i32 12
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @sock_def_error_report, align 4
  %86 = load %struct.sock*, %struct.sock** %4, align 8
  %87 = getelementptr inbounds %struct.sock, %struct.sock* %86, i32 0, i32 11
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @sock_def_destruct, align 4
  %89 = load %struct.sock*, %struct.sock** %4, align 8
  %90 = getelementptr inbounds %struct.sock, %struct.sock* %89, i32 0, i32 10
  store i32 %88, i32* %90, align 8
  %91 = load %struct.sock*, %struct.sock** %4, align 8
  %92 = getelementptr inbounds %struct.sock, %struct.sock* %91, i32 0, i32 9
  store i32* null, i32** %92, align 8
  %93 = load %struct.sock*, %struct.sock** %4, align 8
  %94 = getelementptr inbounds %struct.sock, %struct.sock* %93, i32 0, i32 8
  store i64 0, i64* %94, align 8
  %95 = load %struct.sock*, %struct.sock** %4, align 8
  %96 = call %struct.TYPE_2__* @sk_extended(%struct.sock* %95)
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32* null, i32** %97, align 8
  %98 = load %struct.sock*, %struct.sock** %4, align 8
  %99 = call %struct.TYPE_2__* @sk_extended(%struct.sock* %98)
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  %101 = load %struct.sock*, %struct.sock** %4, align 8
  %102 = getelementptr inbounds %struct.sock, %struct.sock* %101, i32 0, i32 7
  store i64 0, i64* %102, align 8
  %103 = load %struct.sock*, %struct.sock** %4, align 8
  %104 = getelementptr inbounds %struct.sock, %struct.sock* %103, i32 0, i32 1
  store i32 1, i32* %104, align 8
  %105 = load i8*, i8** @MAX_SCHEDULE_TIMEOUT, align 8
  %106 = load %struct.sock*, %struct.sock** %4, align 8
  %107 = getelementptr inbounds %struct.sock, %struct.sock* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** @MAX_SCHEDULE_TIMEOUT, align 8
  %109 = load %struct.sock*, %struct.sock** %4, align 8
  %110 = getelementptr inbounds %struct.sock, %struct.sock* %109, i32 0, i32 5
  store i8* %108, i8** %110, align 8
  %111 = call i32 @ktime_set(i64 -1, i32 0)
  %112 = load %struct.sock*, %struct.sock** %4, align 8
  %113 = getelementptr inbounds %struct.sock, %struct.sock* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 4
  %114 = call i32 (...) @smp_wmb()
  %115 = load %struct.sock*, %struct.sock** %4, align 8
  %116 = getelementptr inbounds %struct.sock, %struct.sock* %115, i32 0, i32 3
  %117 = call i32 @atomic_set(i32* %116, i32 1)
  %118 = load %struct.sock*, %struct.sock** %4, align 8
  %119 = getelementptr inbounds %struct.sock, %struct.sock* %118, i32 0, i32 2
  %120 = call i32 @atomic_set(i32* %119, i32 0)
  ret void
}

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @init_timer(i32*) #1

declare dso_local i32 @sk_set_socket(%struct.sock*, %struct.socket*) #1

declare dso_local i32 @sock_set_flag(%struct.sock*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @lockdep_set_class_and_name(i32*, i64, i32) #1

declare dso_local %struct.TYPE_2__* @sk_extended(%struct.sock*) #1

declare dso_local i32 @ktime_set(i64, i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_make_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/rose/extr_af_rose.c_rose_make_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32, i32, i32, i32, i32 }
%struct.rose_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@PF_ROSE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@rose_proto = common dso_local global i32 0, align 4
@TCP_ESTABLISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (%struct.sock*)* @rose_make_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @rose_make_new(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.rose_sock*, align 8
  %6 = alloca %struct.rose_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = getelementptr inbounds %struct.sock, %struct.sock* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SOCK_SEQPACKET, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.sock* null, %struct.sock** %2, align 8
  br label %110

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %3, align 8
  %15 = call i32 @sock_net(%struct.sock* %14)
  %16 = load i32, i32* @PF_ROSE, align 4
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.sock* @sk_alloc(i32 %15, i32 %16, i32 %17, i32* @rose_proto)
  store %struct.sock* %18, %struct.sock** %4, align 8
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = icmp eq %struct.sock* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  store %struct.sock* null, %struct.sock** %2, align 8
  br label %110

22:                                               ; preds = %13
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = call %struct.rose_sock* @rose_sk(%struct.sock* %23)
  store %struct.rose_sock* %24, %struct.rose_sock** %5, align 8
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call i32 @sock_init_data(i32* null, %struct.sock* %25)
  %27 = load %struct.rose_sock*, %struct.rose_sock** %5, align 8
  %28 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %27, i32 0, i32 12
  %29 = call i32 @skb_queue_head_init(i32* %28)
  %30 = load %struct.sock*, %struct.sock** %3, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = getelementptr inbounds %struct.sock, %struct.sock* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.sock*, %struct.sock** %3, align 8
  %36 = getelementptr inbounds %struct.sock, %struct.sock* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 5
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sock*, %struct.sock** %3, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sock*, %struct.sock** %3, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.sock*, %struct.sock** %4, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.sock*, %struct.sock** %3, align 8
  %51 = getelementptr inbounds %struct.sock, %struct.sock* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @TCP_ESTABLISHED, align 4
  %56 = load %struct.sock*, %struct.sock** %4, align 8
  %57 = getelementptr inbounds %struct.sock, %struct.sock* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.sock*, %struct.sock** %4, align 8
  %59 = load %struct.sock*, %struct.sock** %3, align 8
  %60 = call i32 @sock_copy_flags(%struct.sock* %58, %struct.sock* %59)
  %61 = load %struct.rose_sock*, %struct.rose_sock** %5, align 8
  %62 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %61, i32 0, i32 9
  %63 = call i32 @init_timer(i32* %62)
  %64 = load %struct.rose_sock*, %struct.rose_sock** %5, align 8
  %65 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %64, i32 0, i32 8
  %66 = call i32 @init_timer(i32* %65)
  %67 = load %struct.sock*, %struct.sock** %3, align 8
  %68 = call %struct.rose_sock* @rose_sk(%struct.sock* %67)
  store %struct.rose_sock* %68, %struct.rose_sock** %6, align 8
  %69 = load %struct.rose_sock*, %struct.rose_sock** %6, align 8
  %70 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.rose_sock*, %struct.rose_sock** %5, align 8
  %73 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %72, i32 0, i32 7
  store i32 %71, i32* %73, align 4
  %74 = load %struct.rose_sock*, %struct.rose_sock** %6, align 8
  %75 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.rose_sock*, %struct.rose_sock** %5, align 8
  %78 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 8
  %79 = load %struct.rose_sock*, %struct.rose_sock** %6, align 8
  %80 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.rose_sock*, %struct.rose_sock** %5, align 8
  %83 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load %struct.rose_sock*, %struct.rose_sock** %6, align 8
  %85 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.rose_sock*, %struct.rose_sock** %5, align 8
  %88 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.rose_sock*, %struct.rose_sock** %6, align 8
  %90 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.rose_sock*, %struct.rose_sock** %5, align 8
  %93 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.rose_sock*, %struct.rose_sock** %6, align 8
  %95 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.rose_sock*, %struct.rose_sock** %5, align 8
  %98 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.rose_sock*, %struct.rose_sock** %6, align 8
  %100 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.rose_sock*, %struct.rose_sock** %5, align 8
  %103 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.rose_sock*, %struct.rose_sock** %6, align 8
  %105 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.rose_sock*, %struct.rose_sock** %5, align 8
  %108 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.sock*, %struct.sock** %4, align 8
  store %struct.sock* %109, %struct.sock** %2, align 8
  br label %110

110:                                              ; preds = %22, %21, %12
  %111 = load %struct.sock*, %struct.sock** %2, align 8
  ret %struct.sock* %111
}

declare dso_local %struct.sock* @sk_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @sock_init_data(i32*, %struct.sock*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @sock_copy_flags(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @init_timer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

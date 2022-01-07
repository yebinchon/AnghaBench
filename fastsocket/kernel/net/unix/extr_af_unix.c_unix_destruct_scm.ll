; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_destruct_scm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/unix/extr_af_unix.c_unix_destruct_scm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.scm_cookie = type { i32, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @unix_destruct_scm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unix_destruct_scm(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.scm_cookie, align 4
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = alloca %struct.TYPE_2__, align 8
  %6 = alloca %struct.TYPE_2__, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %7 = call i32 @memset(%struct.scm_cookie* %3, i32 0, i32 8)
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = call { i64, i64 } @UNIXCB(%struct.sk_buff* %8)
  %10 = bitcast %struct.TYPE_2__* %4 to { i64, i64 }*
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  %12 = extractvalue { i64, i64 } %9, 0
  store i64 %12, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  %14 = extractvalue { i64, i64 } %9, 1
  store i64 %14, i64* %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %3, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %19 = call { i64, i64 } @UNIXCB(%struct.sk_buff* %18)
  %20 = bitcast %struct.TYPE_2__* %5 to { i64, i64 }*
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 0
  %22 = extractvalue { i64, i64 } %19, 0
  store i64 %22, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %20, i32 0, i32 1
  %24 = extractvalue { i64, i64 } %19, 1
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.scm_cookie, %struct.scm_cookie* %3, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %29 = call { i64, i64 } @UNIXCB(%struct.sk_buff* %28)
  %30 = bitcast %struct.TYPE_2__* %6 to { i64, i64 }*
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 0
  %32 = extractvalue { i64, i64 } %29, 0
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %30, i32 0, i32 1
  %34 = extractvalue { i64, i64 } %29, 1
  store i64 %34, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %40 = call i32 @unix_detach_fds(%struct.scm_cookie* %3, %struct.sk_buff* %39)
  br label %41

41:                                               ; preds = %38, %1
  %42 = call i32 @scm_destroy(%struct.scm_cookie* %3)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %44 = call i32 @sock_wfree(%struct.sk_buff* %43)
  ret void
}

declare dso_local i32 @memset(%struct.scm_cookie*, i32, i32) #1

declare dso_local { i64, i64 } @UNIXCB(%struct.sk_buff*) #1

declare dso_local i32 @unix_detach_fds(%struct.scm_cookie*, %struct.sk_buff*) #1

declare dso_local i32 @scm_destroy(%struct.scm_cookie*) #1

declare dso_local i32 @sock_wfree(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

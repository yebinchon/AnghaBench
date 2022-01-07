; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_auth.c_sctp_auth_destroy_hmacs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_auth.c_sctp_auth_destroy_hmacs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash = type { i32 }

@SCTP_AUTH_NUM_HMACS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_auth_destroy_hmacs(%struct.crypto_hash** %0) #0 {
  %2 = alloca %struct.crypto_hash**, align 8
  %3 = alloca i32, align 4
  store %struct.crypto_hash** %0, %struct.crypto_hash*** %2, align 8
  %4 = load %struct.crypto_hash**, %struct.crypto_hash*** %2, align 8
  %5 = icmp ne %struct.crypto_hash** %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %33

7:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %27, %7
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @SCTP_AUTH_NUM_HMACS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %8
  %13 = load %struct.crypto_hash**, %struct.crypto_hash*** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.crypto_hash*, %struct.crypto_hash** %13, i64 %15
  %17 = load %struct.crypto_hash*, %struct.crypto_hash** %16, align 8
  %18 = icmp ne %struct.crypto_hash* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.crypto_hash**, %struct.crypto_hash*** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.crypto_hash*, %struct.crypto_hash** %20, i64 %22
  %24 = load %struct.crypto_hash*, %struct.crypto_hash** %23, align 8
  %25 = call i32 @crypto_free_hash(%struct.crypto_hash* %24)
  br label %26

26:                                               ; preds = %19, %12
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %8

30:                                               ; preds = %8
  %31 = load %struct.crypto_hash**, %struct.crypto_hash*** %2, align 8
  %32 = call i32 @kfree(%struct.crypto_hash** %31)
  br label %33

33:                                               ; preds = %30, %6
  ret void
}

declare dso_local i32 @crypto_free_hash(%struct.crypto_hash*) #1

declare dso_local i32 @kfree(%struct.crypto_hash**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

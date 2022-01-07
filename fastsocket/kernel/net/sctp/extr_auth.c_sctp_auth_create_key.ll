; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_auth.c_sctp_auth_create_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_auth.c_sctp_auth_create_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_auth_bytes = type { i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@keys = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_auth_bytes* (i32, i32)* @sctp_auth_create_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_auth_bytes* @sctp_auth_create_key(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.sctp_auth_bytes*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_auth_bytes*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @INT_MAX, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sub nsw i32 %7, %8
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %10, 8
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.sctp_auth_bytes* null, %struct.sctp_auth_bytes** %3, align 8
  br label %33

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 8, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* %5, align 4
  %19 = call %struct.sctp_auth_bytes* @kmalloc(i32 %17, i32 %18)
  store %struct.sctp_auth_bytes* %19, %struct.sctp_auth_bytes** %6, align 8
  %20 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %6, align 8
  %21 = icmp ne %struct.sctp_auth_bytes* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  store %struct.sctp_auth_bytes* null, %struct.sctp_auth_bytes** %3, align 8
  br label %33

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %6, align 8
  %26 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %6, align 8
  %28 = getelementptr inbounds %struct.sctp_auth_bytes, %struct.sctp_auth_bytes* %27, i32 0, i32 1
  %29 = call i32 @atomic_set(i32* %28, i32 1)
  %30 = load i32, i32* @keys, align 4
  %31 = call i32 @SCTP_DBG_OBJCNT_INC(i32 %30)
  %32 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %6, align 8
  store %struct.sctp_auth_bytes* %32, %struct.sctp_auth_bytes** %3, align 8
  br label %33

33:                                               ; preds = %23, %22, %12
  %34 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %3, align 8
  ret %struct.sctp_auth_bytes* %34
}

declare dso_local %struct.sctp_auth_bytes* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @SCTP_DBG_OBJCNT_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_auth.c_sctp_auth_asoc_init_active_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_auth.c_sctp_auth_asoc_init_active_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.sctp_auth_bytes*, i32, %struct.TYPE_2__ }
%struct.sctp_auth_bytes = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_shared_key = type { i32 }

@sctp_auth_enable = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_auth_asoc_init_active_key(%struct.sctp_association* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sctp_auth_bytes*, align 8
  %7 = alloca %struct.sctp_shared_key*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @sctp_auth_enable, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %12 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %45

17:                                               ; preds = %10
  %18 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %19 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %20 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call %struct.sctp_shared_key* @sctp_auth_get_shkey(%struct.sctp_association* %18, i32 %21)
  store %struct.sctp_shared_key* %22, %struct.sctp_shared_key** %7, align 8
  %23 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %7, align 8
  %24 = icmp ne %struct.sctp_shared_key* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %29 = load %struct.sctp_shared_key*, %struct.sctp_shared_key** %7, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call %struct.sctp_auth_bytes* @sctp_auth_asoc_create_secret(%struct.sctp_association* %28, %struct.sctp_shared_key* %29, i32 %30)
  store %struct.sctp_auth_bytes* %31, %struct.sctp_auth_bytes** %6, align 8
  %32 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %6, align 8
  %33 = icmp ne %struct.sctp_auth_bytes* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %17
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %45

37:                                               ; preds = %17
  %38 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %39 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %38, i32 0, i32 0
  %40 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %39, align 8
  %41 = call i32 @sctp_auth_key_put(%struct.sctp_auth_bytes* %40)
  %42 = load %struct.sctp_auth_bytes*, %struct.sctp_auth_bytes** %6, align 8
  %43 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %44 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %43, i32 0, i32 0
  store %struct.sctp_auth_bytes* %42, %struct.sctp_auth_bytes** %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %34, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.sctp_shared_key* @sctp_auth_get_shkey(%struct.sctp_association*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.sctp_auth_bytes* @sctp_auth_asoc_create_secret(%struct.sctp_association*, %struct.sctp_shared_key*, i32) #1

declare dso_local i32 @sctp_auth_key_put(%struct.sctp_auth_bytes*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

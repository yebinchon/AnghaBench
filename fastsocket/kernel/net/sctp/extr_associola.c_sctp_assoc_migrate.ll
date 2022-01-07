; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_assoc_migrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sctp/extr_associola.c_sctp_assoc_migrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sctp_sock = type { i32 }

@TCP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_assoc_migrate(%struct.sctp_association* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sctp_sock*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %7)
  store %struct.sctp_sock* %8, %struct.sctp_sock** %5, align 8
  %9 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %10 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.sock*, %struct.sock** %11, align 8
  store %struct.sock* %12, %struct.sock** %6, align 8
  %13 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %14 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %13, i32 0, i32 2
  %15 = call i32 @list_del_init(i32* %14)
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = load i32, i32* @TCP, align 4
  %18 = call i64 @sctp_style(%struct.sock* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.sock*, %struct.sock** %6, align 8
  %22 = getelementptr inbounds %struct.sock, %struct.sock* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %27 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sctp_endpoint_put(i32 %28)
  %30 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %31 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.sock*, %struct.sock** %32, align 8
  %34 = call i32 @sock_put(%struct.sock* %33)
  %35 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %36 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %39 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %41 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sctp_endpoint_hold(i32 %42)
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %46 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store %struct.sock* %44, %struct.sock** %47, align 8
  %48 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %49 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.sock*, %struct.sock** %50, align 8
  %52 = call i32 @sock_hold(%struct.sock* %51)
  %53 = load %struct.sctp_sock*, %struct.sctp_sock** %5, align 8
  %54 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %57 = call i32 @sctp_endpoint_add_asoc(i32 %55, %struct.sctp_association* %56)
  ret void
}

declare dso_local %struct.sctp_sock* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i64 @sctp_style(%struct.sock*, i32) #1

declare dso_local i32 @sctp_endpoint_put(i32) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @sctp_endpoint_hold(i32) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @sctp_endpoint_add_asoc(i32, %struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

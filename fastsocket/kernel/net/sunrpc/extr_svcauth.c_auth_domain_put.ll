; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth.c_auth_domain_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sunrpc/extr_svcauth.c_auth_domain_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_domain = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.auth_domain*)* }
%struct.TYPE_3__ = type { i32 }

@auth_domain_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auth_domain_put(%struct.auth_domain* %0) #0 {
  %2 = alloca %struct.auth_domain*, align 8
  store %struct.auth_domain* %0, %struct.auth_domain** %2, align 8
  %3 = load %struct.auth_domain*, %struct.auth_domain** %2, align 8
  %4 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = call i64 @atomic_dec_and_lock(i32* %5, i32* @auth_domain_lock)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.auth_domain*, %struct.auth_domain** %2, align 8
  %10 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %9, i32 0, i32 1
  %11 = call i32 @hlist_del(i32* %10)
  %12 = load %struct.auth_domain*, %struct.auth_domain** %2, align 8
  %13 = getelementptr inbounds %struct.auth_domain, %struct.auth_domain* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32 (%struct.auth_domain*)*, i32 (%struct.auth_domain*)** %15, align 8
  %17 = load %struct.auth_domain*, %struct.auth_domain** %2, align 8
  %18 = call i32 %16(%struct.auth_domain* %17)
  %19 = call i32 @spin_unlock(i32* @auth_domain_lock)
  br label %20

20:                                               ; preds = %8, %1
  ret void
}

declare dso_local i64 @atomic_dec_and_lock(i32*, i32*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_hashtables.c_inet_bind_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_inet_hashtables.c_inet_bind_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.inet_hashinfo* }
%struct.inet_hashinfo = type { i32 }
%struct.inet_bind_bucket = type { i32, i32 }
%struct.TYPE_7__ = type { i16 }
%struct.TYPE_8__ = type { %struct.inet_bind_bucket* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inet_bind_hash(%struct.sock* %0, %struct.inet_bind_bucket* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.inet_bind_bucket*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.inet_hashinfo*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.inet_bind_bucket* %1, %struct.inet_bind_bucket** %5, align 8
  store i16 %2, i16* %6, align 2
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %12, align 8
  store %struct.inet_hashinfo* %13, %struct.inet_hashinfo** %7, align 8
  %14 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %7, align 8
  %15 = getelementptr inbounds %struct.inet_hashinfo, %struct.inet_hashinfo* %14, i32 0, i32 0
  %16 = call i32 @atomic_inc(i32* %15)
  %17 = load i16, i16* %6, align 2
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = call %struct.TYPE_7__* @inet_sk(%struct.sock* %18)
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i16 %17, i16* %20, align 2
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %5, align 8
  %23 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %22, i32 0, i32 1
  %24 = call i32 @sk_add_bind_node(%struct.sock* %21, i32* %23)
  %25 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %5, align 8
  %26 = getelementptr inbounds %struct.inet_bind_bucket, %struct.inet_bind_bucket* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.inet_bind_bucket*, %struct.inet_bind_bucket** %5, align 8
  %30 = load %struct.sock*, %struct.sock** %4, align 8
  %31 = call %struct.TYPE_8__* @inet_csk(%struct.sock* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  store %struct.inet_bind_bucket* %29, %struct.inet_bind_bucket** %32, align 8
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.TYPE_7__* @inet_sk(%struct.sock*) #1

declare dso_local i32 @sk_add_bind_node(%struct.sock*, i32*) #1

declare dso_local %struct.TYPE_8__* @inet_csk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

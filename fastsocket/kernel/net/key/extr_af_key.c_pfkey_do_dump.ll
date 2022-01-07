; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_do_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/key/extr_af_key.c_pfkey_do_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfkey_sock = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.pfkey_sock.0*)*, %struct.TYPE_4__* }
%struct.pfkey_sock.0 = type opaque
%struct.TYPE_4__ = type { i64 }
%struct.sadb_msg = type { i32, i64 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BROADCAST_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfkey_sock*)* @pfkey_do_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_do_dump(%struct.pfkey_sock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pfkey_sock*, align 8
  %4 = alloca %struct.sadb_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.pfkey_sock* %0, %struct.pfkey_sock** %3, align 8
  %6 = load %struct.pfkey_sock*, %struct.pfkey_sock** %3, align 8
  %7 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (%struct.pfkey_sock.0*)*, i32 (%struct.pfkey_sock.0*)** %8, align 8
  %10 = load %struct.pfkey_sock*, %struct.pfkey_sock** %3, align 8
  %11 = bitcast %struct.pfkey_sock* %10 to %struct.pfkey_sock.0*
  %12 = call i32 %9(%struct.pfkey_sock.0* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ENOBUFS, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

18:                                               ; preds = %1
  %19 = load %struct.pfkey_sock*, %struct.pfkey_sock** %3, align 8
  %20 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %58

24:                                               ; preds = %18
  %25 = load %struct.pfkey_sock*, %struct.pfkey_sock** %3, align 8
  %26 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %25, i32 0, i32 1
  %27 = call i32 @pfkey_can_dump(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %62

30:                                               ; preds = %24
  %31 = load %struct.pfkey_sock*, %struct.pfkey_sock** %3, align 8
  %32 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.sadb_msg*
  store %struct.sadb_msg* %37, %struct.sadb_msg** %4, align 8
  %38 = load %struct.sadb_msg*, %struct.sadb_msg** %4, align 8
  %39 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.sadb_msg*, %struct.sadb_msg** %4, align 8
  %42 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.pfkey_sock*, %struct.pfkey_sock** %3, align 8
  %44 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = load i32, i32* @BROADCAST_ONE, align 4
  %49 = load %struct.pfkey_sock*, %struct.pfkey_sock** %3, align 8
  %50 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %49, i32 0, i32 1
  %51 = load %struct.pfkey_sock*, %struct.pfkey_sock** %3, align 8
  %52 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %51, i32 0, i32 1
  %53 = call i32 @sock_net(i32* %52)
  %54 = call i32 @pfkey_broadcast(%struct.TYPE_4__* %46, i32 %47, i32 %48, i32* %50, i32 %53)
  %55 = load %struct.pfkey_sock*, %struct.pfkey_sock** %3, align 8
  %56 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %57, align 8
  br label %58

58:                                               ; preds = %30, %18
  %59 = load %struct.pfkey_sock*, %struct.pfkey_sock** %3, align 8
  %60 = call i32 @pfkey_terminate_dump(%struct.pfkey_sock* %59)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %29, %17
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @pfkey_can_dump(i32*) #1

declare dso_local i32 @pfkey_broadcast(%struct.TYPE_4__*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_net(i32*) #1

declare dso_local i32 @pfkey_terminate_dump(%struct.pfkey_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

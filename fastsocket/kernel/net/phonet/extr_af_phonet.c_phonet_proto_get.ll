; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_af_phonet.c_phonet_proto_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/phonet/extr_af_phonet.c_phonet_proto_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phonet_protocol = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PHONET_NPROTO = common dso_local global i32 0, align 4
@proto_tab = common dso_local global %struct.phonet_protocol** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phonet_protocol* (i32)* @phonet_proto_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phonet_protocol* @phonet_proto_get(i32 %0) #0 {
  %2 = alloca %struct.phonet_protocol*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.phonet_protocol*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @PHONET_NPROTO, align 4
  %7 = icmp uge i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.phonet_protocol* null, %struct.phonet_protocol** %2, align 8
  br label %30

9:                                                ; preds = %1
  %10 = call i32 (...) @rcu_read_lock()
  %11 = load %struct.phonet_protocol**, %struct.phonet_protocol*** @proto_tab, align 8
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.phonet_protocol*, %struct.phonet_protocol** %11, i64 %13
  %15 = load %struct.phonet_protocol*, %struct.phonet_protocol** %14, align 8
  store %struct.phonet_protocol* %15, %struct.phonet_protocol** %4, align 8
  %16 = load %struct.phonet_protocol*, %struct.phonet_protocol** %4, align 8
  %17 = icmp ne %struct.phonet_protocol* %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %9
  %19 = load %struct.phonet_protocol*, %struct.phonet_protocol** %4, align 8
  %20 = getelementptr inbounds %struct.phonet_protocol, %struct.phonet_protocol* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @try_module_get(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %18
  store %struct.phonet_protocol* null, %struct.phonet_protocol** %4, align 8
  br label %27

27:                                               ; preds = %26, %18, %9
  %28 = call i32 (...) @rcu_read_unlock()
  %29 = load %struct.phonet_protocol*, %struct.phonet_protocol** %4, align 8
  store %struct.phonet_protocol* %29, %struct.phonet_protocol** %2, align 8
  br label %30

30:                                               ; preds = %27, %8
  %31 = load %struct.phonet_protocol*, %struct.phonet_protocol** %2, align 8
  ret %struct.phonet_protocol* %31
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

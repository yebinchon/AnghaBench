; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_del_protocol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_del_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gre_protocol = type { i32 }

@GREPROTO_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@gre_proto = common dso_local global i32* null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gre_del_protocol(%struct.gre_protocol* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gre_protocol*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.gre_protocol* %0, %struct.gre_protocol** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @GREPROTO_MAX, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load i32*, i32** @gre_proto, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = bitcast i32* %16 to %struct.gre_protocol**
  %18 = load %struct.gre_protocol*, %struct.gre_protocol** %4, align 8
  %19 = call %struct.gre_protocol* @cmpxchg(%struct.gre_protocol** %17, %struct.gre_protocol* %18, i32* null)
  %20 = load %struct.gre_protocol*, %struct.gre_protocol** %4, align 8
  %21 = icmp eq %struct.gre_protocol* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %26

23:                                               ; preds = %13
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  br label %26

26:                                               ; preds = %23, %22
  %27 = phi i32 [ 0, %22 ], [ %25, %23 ]
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %26
  %33 = call i32 (...) @synchronize_rcu()
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %30, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.gre_protocol* @cmpxchg(%struct.gre_protocol**, %struct.gre_protocol*, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

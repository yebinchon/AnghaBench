; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_cisco_unregister.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_cisco_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gre_cisco_protocol = type { i64 }

@gre_cisco_proto_list = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gre_cisco_unregister(%struct.gre_cisco_protocol* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gre_cisco_protocol*, align 8
  %4 = alloca %struct.gre_cisco_protocol**, align 8
  %5 = alloca i32, align 4
  store %struct.gre_cisco_protocol* %0, %struct.gre_cisco_protocol** %3, align 8
  %6 = load i32*, i32** @gre_cisco_proto_list, align 8
  %7 = load %struct.gre_cisco_protocol*, %struct.gre_cisco_protocol** %3, align 8
  %8 = getelementptr inbounds %struct.gre_cisco_protocol, %struct.gre_cisco_protocol* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds i32, i32* %6, i64 %9
  %11 = bitcast i32* %10 to %struct.gre_cisco_protocol**
  store %struct.gre_cisco_protocol** %11, %struct.gre_cisco_protocol*** %4, align 8
  %12 = load %struct.gre_cisco_protocol**, %struct.gre_cisco_protocol*** %4, align 8
  %13 = load %struct.gre_cisco_protocol*, %struct.gre_cisco_protocol** %3, align 8
  %14 = call %struct.gre_cisco_protocol* @cmpxchg(%struct.gre_cisco_protocol** %12, %struct.gre_cisco_protocol* %13, i32* null)
  %15 = load %struct.gre_cisco_protocol*, %struct.gre_cisco_protocol** %3, align 8
  %16 = icmp eq %struct.gre_cisco_protocol* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  br label %21

21:                                               ; preds = %18, %17
  %22 = phi i32 [ 0, %17 ], [ %20, %18 ]
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %29

27:                                               ; preds = %21
  %28 = call i32 (...) @synchronize_net()
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.gre_cisco_protocol* @cmpxchg(%struct.gre_cisco_protocol**, %struct.gre_cisco_protocol*, i32*) #1

declare dso_local i32 @synchronize_net(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

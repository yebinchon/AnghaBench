; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_cisco_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_gre.c_gre_cisco_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gre_cisco_protocol = type { i64 }

@gre_cisco_proto_list = common dso_local global i32* null, align 8
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gre_cisco_register(%struct.gre_cisco_protocol* %0) #0 {
  %2 = alloca %struct.gre_cisco_protocol*, align 8
  %3 = alloca %struct.gre_cisco_protocol**, align 8
  store %struct.gre_cisco_protocol* %0, %struct.gre_cisco_protocol** %2, align 8
  %4 = load i32*, i32** @gre_cisco_proto_list, align 8
  %5 = load %struct.gre_cisco_protocol*, %struct.gre_cisco_protocol** %2, align 8
  %6 = getelementptr inbounds %struct.gre_cisco_protocol, %struct.gre_cisco_protocol* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds i32, i32* %4, i64 %7
  %9 = bitcast i32* %8 to %struct.gre_cisco_protocol**
  store %struct.gre_cisco_protocol** %9, %struct.gre_cisco_protocol*** %3, align 8
  %10 = load %struct.gre_cisco_protocol**, %struct.gre_cisco_protocol*** %3, align 8
  %11 = load %struct.gre_cisco_protocol*, %struct.gre_cisco_protocol** %2, align 8
  %12 = call i32* @cmpxchg(%struct.gre_cisco_protocol** %10, i32* null, %struct.gre_cisco_protocol* %11)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  br label %18

18:                                               ; preds = %15, %14
  %19 = phi i32 [ 0, %14 ], [ %17, %15 ]
  ret i32 %19
}

declare dso_local i32* @cmpxchg(%struct.gre_cisco_protocol**, i32*, %struct.gre_cisco_protocol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

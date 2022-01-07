; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_br2684.c_br2684_close_vcc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/atm/extr_br2684.c_br2684_close_vcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.br2684_vcc = type { %struct.TYPE_2__*, i32 (%struct.TYPE_2__*, i32*)*, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [29 x i8] c"removing VCC %p from dev %p\0A\00", align 1
@devs_lock = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.br2684_vcc*)* @br2684_close_vcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @br2684_close_vcc(%struct.br2684_vcc* %0) #0 {
  %2 = alloca %struct.br2684_vcc*, align 8
  store %struct.br2684_vcc* %0, %struct.br2684_vcc** %2, align 8
  %3 = load %struct.br2684_vcc*, %struct.br2684_vcc** %2, align 8
  %4 = load %struct.br2684_vcc*, %struct.br2684_vcc** %2, align 8
  %5 = getelementptr inbounds %struct.br2684_vcc, %struct.br2684_vcc* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.br2684_vcc* %3, i32 %6)
  %8 = call i32 @write_lock_irq(i32* @devs_lock)
  %9 = load %struct.br2684_vcc*, %struct.br2684_vcc** %2, align 8
  %10 = getelementptr inbounds %struct.br2684_vcc, %struct.br2684_vcc* %9, i32 0, i32 2
  %11 = call i32 @list_del(i32* %10)
  %12 = call i32 @write_unlock_irq(i32* @devs_lock)
  %13 = load %struct.br2684_vcc*, %struct.br2684_vcc** %2, align 8
  %14 = getelementptr inbounds %struct.br2684_vcc, %struct.br2684_vcc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32* null, i32** %16, align 8
  %17 = load %struct.br2684_vcc*, %struct.br2684_vcc** %2, align 8
  %18 = getelementptr inbounds %struct.br2684_vcc, %struct.br2684_vcc* %17, i32 0, i32 1
  %19 = load i32 (%struct.TYPE_2__*, i32*)*, i32 (%struct.TYPE_2__*, i32*)** %18, align 8
  %20 = load %struct.br2684_vcc*, %struct.br2684_vcc** %2, align 8
  %21 = getelementptr inbounds %struct.br2684_vcc, %struct.br2684_vcc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 %19(%struct.TYPE_2__* %22, i32* null)
  %24 = load %struct.br2684_vcc*, %struct.br2684_vcc** %2, align 8
  %25 = call i32 @kfree(%struct.br2684_vcc* %24)
  %26 = load i32, i32* @THIS_MODULE, align 4
  %27 = call i32 @module_put(i32 %26)
  ret void
}

declare dso_local i32 @pr_debug(i8*, %struct.br2684_vcc*, i32) #1

declare dso_local i32 @write_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.br2684_vcc*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

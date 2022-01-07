; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_dbg_print_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/tipc/extr_link.c_dbg_print_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link = type { i32 }

@DBG_OUTPUT = common dso_local global i64 0, align 8
@TIPC_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link*, i8*)* @dbg_print_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dbg_print_link(%struct.link* %0, i8* %1) #0 {
  %3 = alloca %struct.link*, align 8
  %4 = alloca i8*, align 8
  store %struct.link* %0, %struct.link** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* @DBG_OUTPUT, align 8
  %6 = load i64, i64* @TIPC_NULL, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load %struct.link*, %struct.link** %3, align 8
  %10 = load i64, i64* @DBG_OUTPUT, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @link_print(%struct.link* %9, i64 %10, i8* %11)
  br label %13

13:                                               ; preds = %8, %2
  ret void
}

declare dso_local i32 @link_print(%struct.link*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___dev_addr_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/core/extr_dev.c___dev_addr_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_addr_list = type { i64, i64, %struct.dev_addr_list* }

@.str = private unnamed_addr constant [50 x i8] c"__dev_addr_discard: address leakage! da_users=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_addr_list**)* @__dev_addr_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dev_addr_discard(%struct.dev_addr_list** %0) #0 {
  %2 = alloca %struct.dev_addr_list**, align 8
  %3 = alloca %struct.dev_addr_list*, align 8
  store %struct.dev_addr_list** %0, %struct.dev_addr_list*** %2, align 8
  br label %4

4:                                                ; preds = %27, %1
  %5 = load %struct.dev_addr_list**, %struct.dev_addr_list*** %2, align 8
  %6 = load %struct.dev_addr_list*, %struct.dev_addr_list** %5, align 8
  %7 = icmp ne %struct.dev_addr_list* %6, null
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = load %struct.dev_addr_list**, %struct.dev_addr_list*** %2, align 8
  %10 = load %struct.dev_addr_list*, %struct.dev_addr_list** %9, align 8
  store %struct.dev_addr_list* %10, %struct.dev_addr_list** %3, align 8
  %11 = load %struct.dev_addr_list*, %struct.dev_addr_list** %3, align 8
  %12 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %11, i32 0, i32 2
  %13 = load %struct.dev_addr_list*, %struct.dev_addr_list** %12, align 8
  %14 = load %struct.dev_addr_list**, %struct.dev_addr_list*** %2, align 8
  store %struct.dev_addr_list* %13, %struct.dev_addr_list** %14, align 8
  %15 = load %struct.dev_addr_list*, %struct.dev_addr_list** %3, align 8
  %16 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.dev_addr_list*, %struct.dev_addr_list** %3, align 8
  %19 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %8
  %23 = load %struct.dev_addr_list*, %struct.dev_addr_list** %3, align 8
  %24 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %25)
  br label %27

27:                                               ; preds = %22, %8
  %28 = load %struct.dev_addr_list*, %struct.dev_addr_list** %3, align 8
  %29 = call i32 @kfree(%struct.dev_addr_list* %28)
  br label %4

30:                                               ; preds = %4
  ret void
}

declare dso_local i32 @printk(i8*, i64) #1

declare dso_local i32 @kfree(%struct.dev_addr_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

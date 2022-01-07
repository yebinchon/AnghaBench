; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arp_tables.c_arp_checkentry.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/netfilter/extr_arp_tables.c_arp_checkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arpt_arp = type { i32, i32 }

@ARPT_F_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unknown flag bits set: %08X\0A\00", align 1
@ARPT_INV_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unknown invflag bits set: %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.arpt_arp*)* @arp_checkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_checkentry(%struct.arpt_arp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.arpt_arp*, align 8
  store %struct.arpt_arp* %0, %struct.arpt_arp** %3, align 8
  %4 = load %struct.arpt_arp*, %struct.arpt_arp** %3, align 8
  %5 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ARPT_F_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load %struct.arpt_arp*, %struct.arpt_arp** %3, align 8
  %13 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ARPT_F_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = call i32 @duprintf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  store i32 0, i32* %2, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.arpt_arp*, %struct.arpt_arp** %3, align 8
  %21 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ARPT_INV_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load %struct.arpt_arp*, %struct.arpt_arp** %3, align 8
  %29 = getelementptr inbounds %struct.arpt_arp, %struct.arpt_arp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ARPT_INV_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = call i32 @duprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  store i32 0, i32* %2, align 4
  br label %36

35:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %27, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @duprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

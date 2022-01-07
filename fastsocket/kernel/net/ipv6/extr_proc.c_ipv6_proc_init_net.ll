; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_proc.c_ipv6_proc_init_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_proc.c_ipv6_proc_init_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"sockstat6\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@sockstat6_seq_fops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"snmp6\00", align 1
@snmp6_seq_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"dev_snmp6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @ipv6_proc_init_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipv6_proc_init_net(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  %4 = load %struct.net*, %struct.net** %3, align 8
  %5 = load i32, i32* @S_IRUGO, align 4
  %6 = call i32 @proc_net_fops_create(%struct.net* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %5, i32* @sockstat6_seq_fops)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %40

11:                                               ; preds = %1
  %12 = load %struct.net*, %struct.net** %3, align 8
  %13 = load i32, i32* @S_IRUGO, align 4
  %14 = call i32 @proc_net_fops_create(%struct.net* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32* @snmp6_seq_fops)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %32

17:                                               ; preds = %11
  %18 = load %struct.net*, %struct.net** %3, align 8
  %19 = getelementptr inbounds %struct.net, %struct.net* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @proc_mkdir(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = load %struct.net*, %struct.net** %3, align 8
  %23 = getelementptr inbounds %struct.net, %struct.net* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.net*, %struct.net** %3, align 8
  %26 = getelementptr inbounds %struct.net, %struct.net* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %17
  br label %35

31:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %40

32:                                               ; preds = %16
  %33 = load %struct.net*, %struct.net** %3, align 8
  %34 = call i32 @proc_net_remove(%struct.net* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %30
  %36 = load %struct.net*, %struct.net** %3, align 8
  %37 = call i32 @proc_net_remove(%struct.net* %36, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %35, %31, %8
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @proc_net_fops_create(%struct.net*, i8*, i32, i32*) #1

declare dso_local i32 @proc_mkdir(i8*, i32) #1

declare dso_local i32 @proc_net_remove(%struct.net*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

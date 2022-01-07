; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_snmp6_alloc_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_addrconf.c_snmp6_alloc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet6_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inet6_dev*)* @snmp6_alloc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snmp6_alloc_dev(%struct.inet6_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inet6_dev*, align 8
  store %struct.inet6_dev* %0, %struct.inet6_dev** %3, align 8
  %4 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %5 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i8**
  %9 = call i64 @snmp_mib_init(i8** %8, i32 4)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %14 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8**
  %18 = call i64 @snmp_mib_init(i8** %17, i32 4)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %38

21:                                               ; preds = %12
  %22 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %23 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8**
  %27 = call i64 @snmp_mib_init(i8** %26, i32 4)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %31

30:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %48

31:                                               ; preds = %29
  %32 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %33 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8**
  %37 = call i32 @snmp_mib_free(i8** %36)
  br label %38

38:                                               ; preds = %31, %20
  %39 = load %struct.inet6_dev*, %struct.inet6_dev** %3, align 8
  %40 = getelementptr inbounds %struct.inet6_dev, %struct.inet6_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8**
  %44 = call i32 @snmp_mib_free(i8** %43)
  br label %45

45:                                               ; preds = %38, %11
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %30
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @snmp_mib_init(i8**, i32) #1

declare dso_local i32 @snmp_mib_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

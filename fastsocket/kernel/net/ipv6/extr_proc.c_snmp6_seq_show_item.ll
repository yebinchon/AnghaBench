; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_proc.c_snmp6_seq_show_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_proc.c_snmp6_seq_show_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.snmp_mib = type { i32, i64 }

@.str = private unnamed_addr constant [11 x i8] c"%-32s\09%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8**, %struct.snmp_mib*)* @snmp6_seq_show_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp6_seq_show_item(%struct.seq_file* %0, i8** %1, %struct.snmp_mib* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.snmp_mib*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.snmp_mib* %2, %struct.snmp_mib** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %33, %3
  %9 = load %struct.snmp_mib*, %struct.snmp_mib** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.snmp_mib, %struct.snmp_mib* %9, i64 %11
  %13 = getelementptr inbounds %struct.snmp_mib, %struct.snmp_mib* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %8
  %17 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %18 = load %struct.snmp_mib*, %struct.snmp_mib** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.snmp_mib, %struct.snmp_mib* %18, i64 %20
  %22 = getelementptr inbounds %struct.snmp_mib, %struct.snmp_mib* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = load %struct.snmp_mib*, %struct.snmp_mib** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.snmp_mib, %struct.snmp_mib* %25, i64 %27
  %29 = getelementptr inbounds %struct.snmp_mib, %struct.snmp_mib* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @snmp_fold_field(i8** %24, i32 %30)
  %32 = call i32 @seq_printf(%struct.seq_file* %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %31)
  br label %33

33:                                               ; preds = %16
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %8

36:                                               ; preds = %8
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i32) #1

declare dso_local i32 @snmp_fold_field(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

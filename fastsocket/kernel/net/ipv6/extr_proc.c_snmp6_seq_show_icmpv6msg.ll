; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_proc.c_snmp6_seq_show_icmpv6msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv6/extr_proc.c_snmp6_seq_show_icmpv6msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@ICMP6MSG_MIB_MAX = common dso_local global i32 0, align 4
@icmp6type2name = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [10 x i8] c"Icmp6%s%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Out\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%-32s\09%lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Icmp6%sType%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8**)* @snmp6_seq_show_icmpv6msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp6_seq_show_icmpv6msg(%struct.seq_file* %0, i8** %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8** %1, i8*** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %40, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ICMP6MSG_MIB_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %43

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %7, align 4
  %17 = load i8**, i8*** @icmp6type2name, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %40

25:                                               ; preds = %14
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 256
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %26, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %36 = load i8**, i8*** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @snmp_fold_field(i8** %36, i32 %37)
  %39 = call i32 @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %35, i64 %38)
  br label %40

40:                                               ; preds = %25, %24
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %10

43:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %69, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ICMP6MSG_MIB_MAX, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %44
  %49 = load i8**, i8*** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @snmp_fold_field(i8** %49, i32 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %69

55:                                               ; preds = %48
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 256
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 255
  %64 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %56, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %61, i32 %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %66, i64 %67)
  br label %69

69:                                               ; preds = %55, %54
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %44

72:                                               ; preds = %44
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i64) #1

declare dso_local i64 @snmp_fold_field(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

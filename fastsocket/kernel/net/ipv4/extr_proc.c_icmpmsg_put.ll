; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_proc.c_icmpmsg_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_proc.c_icmpmsg_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.net* }
%struct.net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ICMPMSG_MIB_MAX = common dso_local global i32 0, align 4
@PERLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @icmpmsg_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icmpmsg_put(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [16 x i16], align 16
  %6 = alloca [16 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.net*, %struct.net** %10, align 8
  store %struct.net* %11, %struct.net** %8, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %47, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ICMPMSG_MIB_MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %50

16:                                               ; preds = %12
  %17 = load %struct.net*, %struct.net** %8, align 8
  %18 = getelementptr inbounds %struct.net, %struct.net* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i8**
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @snmp_fold_field(i8** %21, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %16
  %27 = load i32, i32* %3, align 4
  %28 = trunc i32 %27 to i16
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [16 x i16], [16 x i16]* %5, i64 0, i64 %30
  store i16 %28, i16* %31, align 2
  %32 = load i64, i64* %7, align 8
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds [16 x i64], [16 x i64]* %6, i64 0, i64 %35
  store i64 %32, i64* %36, align 8
  br label %37

37:                                               ; preds = %26, %16
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, 16
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %42 = getelementptr inbounds [16 x i64], [16 x i64]* %6, i64 0, i64 0
  %43 = getelementptr inbounds [16 x i16], [16 x i16]* %5, i64 0, i64 0
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @icmpmsg_put_line(%struct.seq_file* %41, i64* %42, i16* %43, i32 %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %37
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %12

50:                                               ; preds = %12
  %51 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %52 = getelementptr inbounds [16 x i64], [16 x i64]* %6, i64 0, i64 0
  %53 = getelementptr inbounds [16 x i16], [16 x i16]* %5, i64 0, i64 0
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @icmpmsg_put_line(%struct.seq_file* %51, i64* %52, i16* %53, i32 %54)
  ret void
}

declare dso_local i64 @snmp_fold_field(i8**, i32) #1

declare dso_local i32 @icmpmsg_put_line(%struct.seq_file*, i64*, i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

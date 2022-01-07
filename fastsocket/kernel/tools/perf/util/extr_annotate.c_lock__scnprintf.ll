; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_lock__scnprintf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_lock__scnprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins = type { i32 }
%struct.ins_operands = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"%-6.6s \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ins*, i8*, i64, %struct.ins_operands*)* @lock__scnprintf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock__scnprintf(%struct.ins* %0, i8* %1, i64 %2, %struct.ins_operands* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ins*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ins_operands*, align 8
  %10 = alloca i32, align 4
  store %struct.ins* %0, %struct.ins** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ins_operands* %3, %struct.ins_operands** %9, align 8
  %11 = load %struct.ins_operands*, %struct.ins_operands** %9, align 8
  %12 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load %struct.ins*, %struct.ins** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.ins_operands*, %struct.ins_operands** %9, align 8
  %21 = call i32 @ins__raw_scnprintf(%struct.ins* %17, i8* %18, i64 %19, %struct.ins_operands* %20)
  store i32 %21, i32* %5, align 4
  br label %48

22:                                               ; preds = %4
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.ins*, %struct.ins** %6, align 8
  %26 = getelementptr inbounds %struct.ins, %struct.ins* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @scnprintf(i8* %23, i64 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.ins_operands*, %struct.ins_operands** %9, align 8
  %31 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i64, i64* %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 %38, %40
  %42 = load %struct.ins_operands*, %struct.ins_operands** %9, align 8
  %43 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ins__scnprintf(i32* %33, i8* %37, i64 %41, i32 %45)
  %47 = add nsw i32 %29, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %22, %16
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @ins__raw_scnprintf(%struct.ins*, i8*, i64, %struct.ins_operands*) #1

declare dso_local i32 @scnprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @ins__scnprintf(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

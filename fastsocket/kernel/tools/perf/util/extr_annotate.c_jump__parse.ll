; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_jump__parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_jump__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins_operands = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@UINT64_MAX = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ins_operands*)* @jump__parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jump__parse(%struct.ins_operands* %0) #0 {
  %2 = alloca %struct.ins_operands*, align 8
  %3 = alloca i8*, align 8
  store %struct.ins_operands* %0, %struct.ins_operands** %2, align 8
  %4 = load %struct.ins_operands*, %struct.ins_operands** %2, align 8
  %5 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = call i8* @strchr(i8* %6, i8 signext 43)
  store i8* %7, i8** %3, align 8
  %8 = load %struct.ins_operands*, %struct.ins_operands** %2, align 8
  %9 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @strtoll(i8* %10, i32* null, i32 16)
  %12 = load %struct.ins_operands*, %struct.ins_operands** %2, align 8
  %13 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i8* %11, i8** %14, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %3, align 8
  %17 = icmp ne i8* %15, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = call i8* @strtoll(i8* %19, i32* null, i32 16)
  %21 = load %struct.ins_operands*, %struct.ins_operands** %2, align 8
  %22 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i8* %20, i8** %23, align 8
  br label %29

24:                                               ; preds = %1
  %25 = load i8*, i8** @UINT64_MAX, align 8
  %26 = load %struct.ins_operands*, %struct.ins_operands** %2, align 8
  %27 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %25, i8** %28, align 8
  br label %29

29:                                               ; preds = %24, %18
  ret i32 0
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strtoll(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

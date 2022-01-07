; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_call__parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_call__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins_operands = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ins_operands*)* @call__parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @call__parse(%struct.ins_operands* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ins_operands*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.ins_operands* %0, %struct.ins_operands** %3, align 8
  %7 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %8 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = call i8* @strtoull(i8* %9, i8** %4, i32 16)
  %11 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %12 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i8* %10, i8** %13, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i8* @strchr(i8* %14, i8 signext 60)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %42

19:                                               ; preds = %1
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 62)
  store i8* %23, i8** %5, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %64

27:                                               ; preds = %19
  %28 = load i8*, i8** %5, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %6, align 8
  %30 = call i32* @strdup(i8* %29)
  %31 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %32 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32* %30, i32** %33, align 8
  %34 = load i8*, i8** %5, align 8
  store i8 62, i8* %34, align 1
  %35 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %36 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 -1, i32 0
  store i32 %41, i32* %2, align 4
  br label %64

42:                                               ; preds = %18
  %43 = load i8*, i8** %4, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 40)
  store i8* %44, i8** %5, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %49 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i8* null, i8** %50, align 8
  store i32 0, i32* %2, align 4
  br label %64

51:                                               ; preds = %42
  %52 = load i8*, i8** %4, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 42)
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 -1, i32* %2, align 4
  br label %64

57:                                               ; preds = %51
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i8* @strtoull(i8* %59, i8** null, i32 16)
  %61 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %62 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %57, %56, %47, %27, %26
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i8* @strtoull(i8*, i8**, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

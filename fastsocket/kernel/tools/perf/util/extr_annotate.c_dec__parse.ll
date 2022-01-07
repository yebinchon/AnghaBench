; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_dec__parse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_annotate.c_dec__parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ins_operands = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ins_operands*)* @dec__parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dec__parse(%struct.ins_operands* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ins_operands*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store %struct.ins_operands* %0, %struct.ins_operands** %3, align 8
  %8 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %9 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %6, align 8
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %26, %1
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i8*, i8** %6, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @isspace(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %17, %11
  %25 = phi i1 [ false, %11 ], [ %23, %17 ]
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  br label %11

29:                                               ; preds = %24
  %30 = load i8*, i8** %6, align 8
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %7, align 1
  %32 = load i8*, i8** %6, align 8
  store i8 0, i8* %32, align 1
  %33 = load i8*, i8** %4, align 8
  %34 = call i32* @strdup(i8* %33)
  %35 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %36 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32* %34, i32** %37, align 8
  %38 = load i8, i8* %7, align 1
  %39 = load i8*, i8** %6, align 8
  store i8 %38, i8* %39, align 1
  %40 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %41 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %29
  store i32 -1, i32* %2, align 4
  br label %83

46:                                               ; preds = %29
  %47 = load i8*, i8** %6, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 35)
  store i8* %48, i8** %5, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %83

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %67, %52
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 0
  %62 = load i8, i8* %61, align 1
  %63 = call i64 @isspace(i8 signext %62)
  %64 = icmp ne i64 %63, 0
  br label %65

65:                                               ; preds = %59, %53
  %66 = phi i1 [ false, %53 ], [ %64, %59 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load i8*, i8** %5, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %5, align 8
  br label %53

70:                                               ; preds = %65
  %71 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %72 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i8*, i8** %5, align 8
  %76 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %77 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load %struct.ins_operands*, %struct.ins_operands** %3, align 8
  %80 = getelementptr inbounds %struct.ins_operands, %struct.ins_operands* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call i32 @comment__symbol(i32* %74, i8* %75, i32* %78, i32* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %70, %51, %45
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32* @strdup(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @comment__symbol(i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

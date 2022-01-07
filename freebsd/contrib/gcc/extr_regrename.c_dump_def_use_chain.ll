; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_dump_def_use_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_regrename.c_dump_def_use_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.du_chain = type { i64, %struct.du_chain*, %struct.du_chain*, i32, i32* }

@hard_regno_nregs = common dso_local global i32** null, align 8
@dump_file = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Register %s (%d):\00", align 1
@reg_names = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c" %d [%s]\00", align 1
@reg_class_names = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.du_chain*)* @dump_def_use_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_def_use_chain(%struct.du_chain* %0) #0 {
  %2 = alloca %struct.du_chain*, align 8
  %3 = alloca %struct.du_chain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.du_chain* %0, %struct.du_chain** %2, align 8
  br label %6

6:                                                ; preds = %55, %1
  %7 = load %struct.du_chain*, %struct.du_chain** %2, align 8
  %8 = icmp ne %struct.du_chain* %7, null
  br i1 %8, label %9, label %61

9:                                                ; preds = %6
  %10 = load %struct.du_chain*, %struct.du_chain** %2, align 8
  store %struct.du_chain* %10, %struct.du_chain** %3, align 8
  %11 = load %struct.du_chain*, %struct.du_chain** %3, align 8
  %12 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %11, i32 0, i32 4
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @REGNO(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32**, i32*** @hard_regno_nregs, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.du_chain*, %struct.du_chain** %3, align 8
  %22 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @GET_MODE(i32 %24)
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* @dump_file, align 4
  %29 = load i8**, i8*** @reg_names, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34)
  br label %36

36:                                               ; preds = %39, %9
  %37 = load %struct.du_chain*, %struct.du_chain** %3, align 8
  %38 = icmp ne %struct.du_chain* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load i32, i32* @dump_file, align 4
  %41 = load %struct.du_chain*, %struct.du_chain** %3, align 8
  %42 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @INSN_UID(i32 %43)
  %45 = load i8**, i8*** @reg_class_names, align 8
  %46 = load %struct.du_chain*, %struct.du_chain** %3, align 8
  %47 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i8*, i8** %45, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %44, i8* %50)
  %52 = load %struct.du_chain*, %struct.du_chain** %3, align 8
  %53 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %52, i32 0, i32 2
  %54 = load %struct.du_chain*, %struct.du_chain** %53, align 8
  store %struct.du_chain* %54, %struct.du_chain** %3, align 8
  br label %36

55:                                               ; preds = %36
  %56 = load i32, i32* @dump_file, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %58 = load %struct.du_chain*, %struct.du_chain** %2, align 8
  %59 = getelementptr inbounds %struct.du_chain, %struct.du_chain* %58, i32 0, i32 1
  %60 = load %struct.du_chain*, %struct.du_chain** %59, align 8
  store %struct.du_chain* %60, %struct.du_chain** %2, align 8
  br label %6

61:                                               ; preds = %6
  ret void
}

declare dso_local i32 @REGNO(i32) #1

declare dso_local i64 @GET_MODE(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @INSN_UID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

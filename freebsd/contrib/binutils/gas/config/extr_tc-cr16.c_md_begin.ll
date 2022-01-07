; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_md_begin.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/config/extr_tc-cr16.c_md_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@cr16_inst_hash = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Virtual memory exhausted\00", align 1
@cr16_instruction = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Can't hash `%s': %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"(unknown reason)\00", align 1
@reg_hash = common dso_local global i32 0, align 4
@cr16_regtab = common dso_local global i32 0, align 4
@NUMREGS = common dso_local global i32 0, align 4
@regp_hash = common dso_local global i32 0, align 4
@cr16_regptab = common dso_local global i32 0, align 4
@NUMREGPS = common dso_local global i32 0, align 4
@preg_hash = common dso_local global i32 0, align 4
@cr16_pregtab = common dso_local global i32 0, align 4
@NUMPREGS = common dso_local global i32 0, align 4
@pregp_hash = common dso_local global i32 0, align 4
@cr16_pregptab = common dso_local global i32 0, align 4
@NUMPREGPS = common dso_local global i32 0, align 4
@linkrelax = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @md_begin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i32* (...) @hash_new()
  store i32* %4, i32** @cr16_inst_hash, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i8* @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @as_fatal(i8* %7)
  br label %9

9:                                                ; preds = %6, %0
  br label %10

10:                                               ; preds = %83, %9
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cr16_instruction, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %84

18:                                               ; preds = %10
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cr16_instruction, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %3, align 8
  %25 = load i32*, i32** @cr16_inst_hash, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cr16_instruction, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = bitcast %struct.TYPE_2__* %30 to i8*
  %32 = call i8* @hash_insert(i32* %25, i8* %26, i8* %31)
  store i8* %32, i8** %2, align 8
  %33 = load i8*, i8** %2, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %59

35:                                               ; preds = %18
  %36 = load i8*, i8** %2, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = call i8* @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cr16_instruction, align 8
  %43 = load i32, i32* %1, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %40
  %53 = call i8* @_(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %56

54:                                               ; preds = %40
  %55 = load i8*, i8** %2, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i8* [ %53, %52 ], [ %55, %54 ]
  %58 = call i32 (i8*, ...) @as_fatal(i8* %41, i8* %47, i8* %57)
  br label %59

59:                                               ; preds = %56, %35, %18
  br label %60

60:                                               ; preds = %81, %59
  %61 = load i32, i32* %1, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cr16_instruction, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %63
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cr16_instruction, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %3, align 8
  %79 = call i64 @streq(i8* %77, i8* %78)
  %80 = icmp ne i64 %79, 0
  br label %81

81:                                               ; preds = %71, %63
  %82 = phi i1 [ false, %63 ], [ %80, %71 ]
  br i1 %82, label %60, label %83

83:                                               ; preds = %81
  br label %10

84:                                               ; preds = %10
  %85 = load i32, i32* @cr16_regtab, align 4
  %86 = load i32, i32* @NUMREGS, align 4
  %87 = call i32 @initialise_reg_hash_table(i32* @reg_hash, i32 %85, i32 %86)
  %88 = load i32, i32* @cr16_regptab, align 4
  %89 = load i32, i32* @NUMREGPS, align 4
  %90 = call i32 @initialise_reg_hash_table(i32* @regp_hash, i32 %88, i32 %89)
  %91 = load i32, i32* @cr16_pregtab, align 4
  %92 = load i32, i32* @NUMPREGS, align 4
  %93 = call i32 @initialise_reg_hash_table(i32* @preg_hash, i32 %91, i32 %92)
  %94 = load i32, i32* @cr16_pregptab, align 4
  %95 = load i32, i32* @NUMPREGPS, align 4
  %96 = call i32 @initialise_reg_hash_table(i32* @pregp_hash, i32 %94, i32 %95)
  store i32 1, i32* @linkrelax, align 4
  ret void
}

declare dso_local i32* @hash_new(...) #1

declare dso_local i32 @as_fatal(i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @hash_insert(i32*, i8*, i8*) #1

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @initialise_reg_hash_table(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

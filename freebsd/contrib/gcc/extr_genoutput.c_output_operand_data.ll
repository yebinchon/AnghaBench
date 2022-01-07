; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_output_operand_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genoutput.c_output_operand_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.operand_data = type { i8*, i8*, i32, i32, i32, %struct.operand_data* }

@.str = private unnamed_addr constant [60 x i8] c"\0Astatic const struct insn_operand_data operand_data[] = \0A{\0A\00", align 1
@odata = common dso_local global %struct.operand_data* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"  {\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"    %s,\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"    \22%s\22,\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"    %smode,\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"    %d,\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"    %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"  },\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"};\0A\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_operand_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_operand_data() #0 {
  %1 = alloca %struct.operand_data*, align 8
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %3 = load %struct.operand_data*, %struct.operand_data** @odata, align 8
  store %struct.operand_data* %3, %struct.operand_data** %1, align 8
  br label %4

4:                                                ; preds = %55, %0
  %5 = load %struct.operand_data*, %struct.operand_data** %1, align 8
  %6 = icmp ne %struct.operand_data* %5, null
  br i1 %6, label %7, label %59

7:                                                ; preds = %4
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.operand_data*, %struct.operand_data** %1, align 8
  %10 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %7
  %14 = load %struct.operand_data*, %struct.operand_data** %1, align 8
  %15 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = load %struct.operand_data*, %struct.operand_data** %1, align 8
  %23 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  br label %26

25:                                               ; preds = %13, %7
  br label %26

26:                                               ; preds = %25, %21
  %27 = phi i8* [ %24, %21 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %25 ]
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = load %struct.operand_data*, %struct.operand_data** %1, align 8
  %30 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.operand_data*, %struct.operand_data** %1, align 8
  %35 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  br label %38

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i8* [ %36, %33 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %37 ]
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %39)
  %41 = load %struct.operand_data*, %struct.operand_data** %1, align 8
  %42 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @GET_MODE_NAME(i32 %43)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %44)
  %46 = load %struct.operand_data*, %struct.operand_data** %1, align 8
  %47 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %48)
  %50 = load %struct.operand_data*, %struct.operand_data** %1, align 8
  %51 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 %52)
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %55

55:                                               ; preds = %38
  %56 = load %struct.operand_data*, %struct.operand_data** %1, align 8
  %57 = getelementptr inbounds %struct.operand_data, %struct.operand_data* %56, i32 0, i32 5
  %58 = load %struct.operand_data*, %struct.operand_data** %57, align 8
  store %struct.operand_data* %58, %struct.operand_data** %1, align 8
  br label %4

59:                                               ; preds = %4
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @GET_MODE_NAME(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genemit.c_output_added_clobbers_hard_reg_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genemit.c_output_added_clobbers_hard_reg_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clobber_pat = type { i32, %struct.clobber_ent*, %struct.clobber_pat* }
%struct.clobber_ent = type { i32, %struct.clobber_ent* }

@.str = private unnamed_addr constant [56 x i8] c"\0A\0Aint\0Aadded_clobbers_hard_reg_p (int insn_code_number)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"  switch (insn_code_number)\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"    {\0A\00", align 1
@clobber_list = common dso_local global %struct.clobber_pat* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"    case %d:\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"      return %d;\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"    default:\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"      gcc_unreachable ();\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"    }\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_added_clobbers_hard_reg_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_added_clobbers_hard_reg_p() #0 {
  %1 = alloca %struct.clobber_pat*, align 8
  %2 = alloca %struct.clobber_ent*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %54, %0
  %10 = load i32, i32* %3, align 4
  %11 = icmp sle i32 %10, 1
  br i1 %11, label %12, label %57

12:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  %13 = load %struct.clobber_pat*, %struct.clobber_pat** @clobber_list, align 8
  store %struct.clobber_pat* %13, %struct.clobber_pat** %1, align 8
  br label %14

14:                                               ; preds = %43, %12
  %15 = load %struct.clobber_pat*, %struct.clobber_pat** %1, align 8
  %16 = icmp ne %struct.clobber_pat* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %14
  %18 = load %struct.clobber_pat*, %struct.clobber_pat** %1, align 8
  %19 = getelementptr inbounds %struct.clobber_pat, %struct.clobber_pat* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %17
  %24 = load %struct.clobber_pat*, %struct.clobber_pat** %1, align 8
  %25 = getelementptr inbounds %struct.clobber_pat, %struct.clobber_pat* %24, i32 0, i32 1
  %26 = load %struct.clobber_ent*, %struct.clobber_ent** %25, align 8
  store %struct.clobber_ent* %26, %struct.clobber_ent** %2, align 8
  br label %27

27:                                               ; preds = %37, %23
  %28 = load %struct.clobber_ent*, %struct.clobber_ent** %2, align 8
  %29 = icmp ne %struct.clobber_ent* %28, null
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.clobber_ent*, %struct.clobber_ent** %2, align 8
  %32 = getelementptr inbounds %struct.clobber_ent, %struct.clobber_ent* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %30
  %38 = load %struct.clobber_ent*, %struct.clobber_ent** %2, align 8
  %39 = getelementptr inbounds %struct.clobber_ent, %struct.clobber_ent* %38, i32 0, i32 1
  %40 = load %struct.clobber_ent*, %struct.clobber_ent** %39, align 8
  store %struct.clobber_ent* %40, %struct.clobber_ent** %2, align 8
  br label %27

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41, %17
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.clobber_pat*, %struct.clobber_pat** %1, align 8
  %45 = getelementptr inbounds %struct.clobber_pat, %struct.clobber_pat* %44, i32 0, i32 2
  %46 = load %struct.clobber_pat*, %struct.clobber_pat** %45, align 8
  store %struct.clobber_pat* %46, %struct.clobber_pat** %1, align 8
  br label %14

47:                                               ; preds = %14
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %3, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %9

57:                                               ; preds = %9
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

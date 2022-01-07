; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genemit.c_output_add_clobbers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_genemit.c_output_add_clobbers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clobber_pat = type { i32, i32, %struct.clobber_ent*, %struct.clobber_pat* }
%struct.clobber_ent = type { i32, %struct.clobber_ent* }

@.str = private unnamed_addr constant [74 x i8] c"\0A\0Avoid\0Aadd_clobbers (rtx pattern ATTRIBUTE_UNUSED, int insn_code_number)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"  switch (insn_code_number)\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"    {\0A\00", align 1
@clobber_list = common dso_local global %struct.clobber_pat* null, align 8
@.str.4 = private unnamed_addr constant [14 x i8] c"    case %d:\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"      XVECEXP (pattern, 0, %d) = \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"      break;\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"    default:\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"      gcc_unreachable ();\0A\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"    }\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @output_add_clobbers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @output_add_clobbers() #0 {
  %1 = alloca %struct.clobber_pat*, align 8
  %2 = alloca %struct.clobber_ent*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %8 = load %struct.clobber_pat*, %struct.clobber_pat** @clobber_list, align 8
  store %struct.clobber_pat* %8, %struct.clobber_pat** %1, align 8
  br label %9

9:                                                ; preds = %58, %0
  %10 = load %struct.clobber_pat*, %struct.clobber_pat** %1, align 8
  %11 = icmp ne %struct.clobber_pat* %10, null
  br i1 %11, label %12, label %62

12:                                               ; preds = %9
  %13 = load %struct.clobber_pat*, %struct.clobber_pat** %1, align 8
  %14 = getelementptr inbounds %struct.clobber_pat, %struct.clobber_pat* %13, i32 0, i32 2
  %15 = load %struct.clobber_ent*, %struct.clobber_ent** %14, align 8
  store %struct.clobber_ent* %15, %struct.clobber_ent** %2, align 8
  br label %16

16:                                               ; preds = %24, %12
  %17 = load %struct.clobber_ent*, %struct.clobber_ent** %2, align 8
  %18 = icmp ne %struct.clobber_ent* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load %struct.clobber_ent*, %struct.clobber_ent** %2, align 8
  %21 = getelementptr inbounds %struct.clobber_ent, %struct.clobber_ent* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %19
  %25 = load %struct.clobber_ent*, %struct.clobber_ent** %2, align 8
  %26 = getelementptr inbounds %struct.clobber_ent, %struct.clobber_ent* %25, i32 0, i32 1
  %27 = load %struct.clobber_ent*, %struct.clobber_ent** %26, align 8
  store %struct.clobber_ent* %27, %struct.clobber_ent** %2, align 8
  br label %16

28:                                               ; preds = %16
  %29 = load %struct.clobber_pat*, %struct.clobber_pat** %1, align 8
  %30 = getelementptr inbounds %struct.clobber_pat, %struct.clobber_pat* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %53, %28
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.clobber_pat*, %struct.clobber_pat** %1, align 8
  %35 = getelementptr inbounds %struct.clobber_pat, %struct.clobber_pat* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @XVECLEN(i32 %36, i32 1)
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %40)
  %42 = load %struct.clobber_pat*, %struct.clobber_pat** %1, align 8
  %43 = getelementptr inbounds %struct.clobber_pat, %struct.clobber_pat* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @XVECEXP(i32 %44, i32 1, i32 %45)
  %47 = load %struct.clobber_pat*, %struct.clobber_pat** %1, align 8
  %48 = getelementptr inbounds %struct.clobber_pat, %struct.clobber_pat* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GET_CODE(i32 %49)
  %51 = call i32 @gen_exp(i32 %46, i32 %50, i32* null)
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %53

53:                                               ; preds = %39
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %32

56:                                               ; preds = %32
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56
  %59 = load %struct.clobber_pat*, %struct.clobber_pat** %1, align 8
  %60 = getelementptr inbounds %struct.clobber_pat, %struct.clobber_pat* %59, i32 0, i32 3
  %61 = load %struct.clobber_pat*, %struct.clobber_pat** %60, align 8
  store %struct.clobber_pat* %61, %struct.clobber_pat** %1, align 8
  br label %9

62:                                               ; preds = %9
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @XVECLEN(i32, i32) #1

declare dso_local i32 @gen_exp(i32, i32, i32*) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @GET_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

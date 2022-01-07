; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rddbg.c_stab_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_rddbg.c_stab_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saved_stab = type { i8*, i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Last stabs entries before error:\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"n_type n_desc n_value  string\0A\00", align 1
@saved_stabs_index = common dso_local global i32 0, align 4
@saved_stabs = common dso_local global %struct.saved_stab* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"%-6s\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"HdrSym\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%-6d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" %-6d \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SAVE_STABS_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @stab_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stab_context() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.saved_stab*, align 8
  %3 = alloca i8*, align 8
  %4 = load i32, i32* @stderr, align 4
  %5 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (i32, i8*, ...) @fprintf(i32 %4, i8* %5)
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @saved_stabs_index, align 4
  store i32 %9, i32* %1, align 4
  br label %10

10:                                               ; preds = %74, %0
  %11 = load %struct.saved_stab*, %struct.saved_stab** @saved_stabs, align 8
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.saved_stab, %struct.saved_stab* %11, i64 %13
  store %struct.saved_stab* %14, %struct.saved_stab** %2, align 8
  %15 = load %struct.saved_stab*, %struct.saved_stab** %2, align 8
  %16 = getelementptr inbounds %struct.saved_stab, %struct.saved_stab* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %69

19:                                               ; preds = %10
  %20 = load %struct.saved_stab*, %struct.saved_stab** %2, align 8
  %21 = getelementptr inbounds %struct.saved_stab, %struct.saved_stab* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i8* @bfd_get_stab_name(i32 %22)
  store i8* %23, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @stderr, align 4
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  br label %45

30:                                               ; preds = %19
  %31 = load %struct.saved_stab*, %struct.saved_stab** %2, align 8
  %32 = getelementptr inbounds %struct.saved_stab, %struct.saved_stab* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @stderr, align 4
  %37 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  br label %44

38:                                               ; preds = %30
  %39 = load i32, i32* @stderr, align 4
  %40 = load %struct.saved_stab*, %struct.saved_stab** %2, align 8
  %41 = getelementptr inbounds %struct.saved_stab, %struct.saved_stab* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %38, %35
  br label %45

45:                                               ; preds = %44, %26
  %46 = load i32, i32* @stderr, align 4
  %47 = load %struct.saved_stab*, %struct.saved_stab** %2, align 8
  %48 = getelementptr inbounds %struct.saved_stab, %struct.saved_stab* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @stderr, align 4
  %52 = load %struct.saved_stab*, %struct.saved_stab** %2, align 8
  %53 = getelementptr inbounds %struct.saved_stab, %struct.saved_stab* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @fprintf_vma(i32 %51, i32 %54)
  %56 = load %struct.saved_stab*, %struct.saved_stab** %2, align 8
  %57 = getelementptr inbounds %struct.saved_stab, %struct.saved_stab* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %45
  %61 = load i32, i32* @stderr, align 4
  %62 = load %struct.saved_stab*, %struct.saved_stab** %2, align 8
  %63 = getelementptr inbounds %struct.saved_stab, %struct.saved_stab* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %64)
  br label %66

66:                                               ; preds = %60, %45
  %67 = load i32, i32* @stderr, align 4
  %68 = call i32 (i32, i8*, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %10
  %70 = load i32, i32* %1, align 4
  %71 = add nsw i32 %70, 1
  %72 = load i32, i32* @SAVE_STABS_COUNT, align 4
  %73 = srem i32 %71, %72
  store i32 %73, i32* %1, align 4
  br label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %1, align 4
  %76 = load i32, i32* @saved_stabs_index, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %10, label %78

78:                                               ; preds = %74
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @bfd_get_stab_name(i32) #1

declare dso_local i32 @fprintf_vma(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

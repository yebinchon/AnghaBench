; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_alias_get_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-structalias.c_alias_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@dump_file = common dso_local global i32 0, align 4
@SSA_NAME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%s_%u\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"D.%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @alias_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @alias_get_name(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i8* @get_name(i32 %7)
  store i8* %8, i8** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %2, align 8
  br label %51

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %14 = load i32, i32* @dump_file, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** %2, align 8
  br label %51

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @SSA_NAME, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @SSA_NAME_VAR(i32 %24)
  %26 = call i8* @alias_get_name(i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @SSA_NAME_VERSION(i32 %27)
  %29 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %26, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %41

30:                                               ; preds = %18
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @DECL_P(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @DECL_UID(i32 %35)
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %34, %30
  br label %41

41:                                               ; preds = %40, %23
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i8*, i8** %5, align 8
  %46 = call i8* @ggc_strdup(i8* %45)
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @free(i8* %47)
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i8*, i8** %4, align 8
  store i8* %50, i8** %2, align 8
  br label %51

51:                                               ; preds = %49, %16, %11
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

declare dso_local i8* @get_name(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #1

declare dso_local i32 @SSA_NAME_VAR(i32) #1

declare dso_local i32 @SSA_NAME_VERSION(i32) #1

declare dso_local i64 @DECL_P(i32) #1

declare dso_local i32 @DECL_UID(i32) #1

declare dso_local i8* @ggc_strdup(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

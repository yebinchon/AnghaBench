; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_sym_elem_print_all_portable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/elftoolchain/nm/extr_nm.c_sym_elem_print_all_portable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { i64 }

@nm_opts = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %c \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8*, %struct.TYPE_6__*, i8*)* @sym_elem_print_all_portable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_elem_print_all_portable(i8 signext %0, i8* %1, %struct.TYPE_6__* %2, i8* %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  store i8 %0, i8* %5, align 1
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = load i8*, i8** %8, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @nm_opts, i32 0, i32 1), align 8
  %19 = icmp eq i32 (%struct.TYPE_6__*)* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %14, %11, %4
  br label %46

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = call i32 @PRINT_DEMANGLED_NAME(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i8, i8* %5, align 1
  %25 = sext i8 %24 to i32
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i8, i8* %5, align 1
  %28 = call i32 @IS_UNDEF_SYM_TYPE(i8 signext %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %21
  %31 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @nm_opts, i32 0, i32 1), align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = call i32 %31(%struct.TYPE_6__* %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @nm_opts, i32 0, i32 0), align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = call i32 %40(%struct.TYPE_6__* %41)
  br label %43

43:                                               ; preds = %39, %30
  br label %46

44:                                               ; preds = %21
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %20, %44, %43
  ret void
}

declare dso_local i32 @PRINT_DEMANGLED_NAME(i8*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @IS_UNDEF_SYM_TYPE(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
